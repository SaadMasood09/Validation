// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Description: I2C core module

module  i2c_core #(
  parameter int                    FifoDepth = 64
) (
  input                            clk_i,
  input                            rst_ni,

  input i2c_reg_pkg::i2c_reg2hw_t  reg2hw,
  output i2c_reg_pkg::i2c_hw2reg_t hw2reg,

  input                            scl_i,
  output logic                     scl_o,
  input                            sda_i,
  output logic                     sda_o,

  output logic                     intr_fmt_watermark_o,
  output logic                     intr_rx_watermark_o,
  output logic                     intr_fmt_overflow_o,
  output logic                     intr_rx_overflow_o,
  output logic                     intr_nak_o,
  output logic                     intr_scl_interference_o,
  output logic                     intr_sda_interference_o,
  output logic                     intr_stretch_timeout_o,
  output logic                     intr_sda_unstable_o,
  output logic                     intr_trans_complete_o,
  output logic                     intr_tx_empty_o,
  output logic                     intr_tx_nonempty_o,
  output logic                     intr_tx_overflow_o,
  output logic                     intr_acq_overflow_o,
  output logic                     intr_ack_stop_o,
  output logic                     intr_host_timeout_o
);

  logic [15:0] thigh;
  logic [15:0] tlow;
  logic [15:0] t_r;
  logic [15:0] t_f;
  logic [15:0] thd_sta;
  logic [15:0] tsu_sta;
  logic [15:0] tsu_sto;
  logic [15:0] tsu_dat;
  logic [15:0] thd_dat;
  logic [15:0] t_buf;
  logic [30:0] stretch_timeout;
  logic        timeout_enable;
  logic        stretch_en_addr_tx;
  logic        stretch_en_addr_acq;
  logic        stretch_stop_tx;
  logic        stretch_stop_acq;
  logic        stretch_stop_tx_clr;
  logic        stretch_stop_acq_clr;
  logic [31:0] host_timeout;

  logic scl_sync;
  logic sda_sync;
  logic scl_out_fsm;
  logic sda_out_fsm;

  logic event_fmt_watermark;
  logic event_rx_watermark;
  logic event_fmt_overflow;
  logic event_rx_overflow;
  logic event_nak;
  logic event_scl_interference;
  logic event_sda_interference;
  logic event_stretch_timeout;
  logic event_sda_unstable;
  logic event_trans_complete;
  logic event_tx_empty;
  logic event_tx_nonempty;
  logic event_tx_overflow;
  logic event_acq_overflow;
  logic event_ack_stop;
  logic event_host_timeout;

  logic [15:0] scl_rx_val;
  logic [15:0] sda_rx_val;

  logic override;

  logic        fmt_fifo_wvalid;
  logic        fmt_fifo_wready;
  logic [12:0] fmt_fifo_wdata;
  logic [6:0]  fmt_fifo_depth;
  logic        fmt_fifo_rvalid;
  logic        fmt_fifo_rready;
  logic [12:0] fmt_fifo_rdata;
  logic [7:0]  fmt_byte;
  logic        fmt_flag_start_before;
  logic        fmt_flag_stop_after;
  logic        fmt_flag_read_bytes;
  logic        fmt_flag_read_continue;
  logic        fmt_flag_nak_ok;

  logic        i2c_fifo_rxrst;
  logic        i2c_fifo_fmtrst;
  logic [2:0]  i2c_fifo_rxilvl;
  logic [1:0]  i2c_fifo_fmtilvl;

  logic        rx_fifo_wvalid;
  logic        rx_fifo_wready;
  logic [7:0]  rx_fifo_wdata;
  logic [6:0]  rx_fifo_depth;
  logic        rx_fifo_rvalid;
  logic        rx_fifo_rready;
  logic [7:0]  rx_fifo_rdata;

  logic        fmt_watermark_d;
  logic        fmt_watermark_q;
  logic        rx_watermark_d;
  logic        rx_watermark_q;

  logic        tx_fifo_wvalid;
  logic        tx_fifo_wready;
  logic [7:0]  tx_fifo_wdata;
  logic [6:0]  tx_fifo_depth;
  logic        tx_fifo_rvalid;
  logic        tx_fifo_rready;
  logic [7:0]  tx_fifo_rdata;

  logic        acq_fifo_wvalid;
  logic        acq_fifo_wready;
  logic [9:0]  acq_fifo_wdata;
  logic [6:0]  acq_fifo_depth;
  logic        acq_fifo_rvalid;
  logic        acq_fifo_rready;
  logic [9:0]  acq_fifo_rdata;

  logic        i2c_fifo_txrst;
  logic        i2c_fifo_acqrst;

  logic        host_idle;
  logic        target_idle;

  logic        host_enable;
  logic        target_enable;
  logic        line_loopback;

  logic [6:0]  target_address0;
  logic [6:0]  target_mask0;
  logic [6:0]  target_address1;
  logic [6:0]  target_mask1;

  // Unused parts of exposed bits
  logic        unused_fifo_ctrl_rxilvl_qe;
  logic        unused_fifo_ctrl_fmtilvl_qe;
  logic [7:0]  unused_rx_fifo_rdata_q;
  logic [7:0]  unused_acq_fifo_adata_q;
  logic [1:0]  unused_acq_fifo_signal_q;
  logic        unused_alert_test_qe;
  logic        unused_alert_test_q;

  assign hw2reg.status.fmtfull.d = ~fmt_fifo_wready;
  assign hw2reg.status.rxfull.d = ~rx_fifo_wready;
  assign hw2reg.status.fmtempty.d = ~fmt_fifo_rvalid;
  assign hw2reg.status.hostidle.d = host_idle;
  assign hw2reg.status.targetidle.d = target_idle;
  assign hw2reg.status.rxempty.d = ~rx_fifo_rvalid;
  assign hw2reg.rdata.d = line_loopback ? 8'hff : rx_fifo_rdata;
  assign hw2reg.fifo_status.fmtlvl.d = fmt_fifo_depth;
  assign hw2reg.fifo_status.rxlvl.d = rx_fifo_depth;
  assign hw2reg.val.scl_rx.d = scl_rx_val;
  assign hw2reg.val.sda_rx.d = sda_rx_val;

  assign hw2reg.status.txfull.d = ~tx_fifo_wready;
  assign hw2reg.status.acqfull.d = ~acq_fifo_wready;
  assign hw2reg.status.txempty.d = ~tx_fifo_rvalid;
  assign hw2reg.status.acqempty.d = ~acq_fifo_rvalid;
  assign hw2reg.fifo_status.txlvl.d = tx_fifo_depth;
  assign hw2reg.fifo_status.acqlvl.d = acq_fifo_depth;
  assign hw2reg.acqdata.abyte.d = line_loopback ? 8'hff : acq_fifo_rdata[7:0];
  assign hw2reg.acqdata.signal.d = line_loopback ? 2'b11 : acq_fifo_rdata[9:8];
  assign hw2reg.stretch_ctrl.stop_tx.d = 1'b0;
  assign hw2reg.stretch_ctrl.stop_tx.de = stretch_stop_tx_clr;
  assign hw2reg.stretch_ctrl.stop_acq.d = 1'b0;
  assign hw2reg.stretch_ctrl.stop_acq.de = stretch_stop_acq_clr;

  assign override = reg2hw.ovrd.txovrden;

  assign scl_o = override ? reg2hw.ovrd.sclval : scl_out_fsm;
  assign sda_o = override ? reg2hw.ovrd.sdaval : sda_out_fsm;

  assign host_enable = reg2hw.ctrl.enablehost.q;
  assign target_enable = reg2hw.ctrl.enabletarget.q;
  assign line_loopback = reg2hw.ctrl.llpbk.q;

  assign target_address0 = reg2hw.target_id.address0.q;
  assign target_mask0 = reg2hw.target_id.mask0.q;
  assign target_address1 = reg2hw.target_id.address1.q;
  assign target_mask1 = reg2hw.target_id.mask1.q;

  // Sample scl_i and sda_i at system clock
  always_ff @ (posedge clk_i or negedge rst_ni) begin : rx_oversampling
    if(!rst_ni) begin
       scl_rx_val <= 16'h0;
       sda_rx_val <= 16'h0;
    end else begin
       scl_rx_val <= {scl_rx_val[14:0], scl_i};
       sda_rx_val <= {sda_rx_val[14:0], sda_i};
    end
  end

  assign thigh           = reg2hw.timing0.thigh.q;
  assign tlow            = reg2hw.timing0.tlow.q;
  assign t_r             = reg2hw.timing1.t_r.q;
  assign t_f             = reg2hw.timing1.t_f.q;
  assign tsu_sta         = reg2hw.timing2.tsu_sta.q;
  assign thd_sta         = reg2hw.timing2.thd_sta.q;
  assign tsu_dat         = reg2hw.timing3.tsu_dat.q;
  assign thd_dat         = reg2hw.timing3.thd_dat.q;
  assign tsu_sto         = reg2hw.timing4.tsu_sto.q;
  assign t_buf           = reg2hw.timing4.t_buf.q;
  assign stretch_timeout = reg2hw.timeout_ctrl.val.q;
  assign timeout_enable  = reg2hw.timeout_ctrl.en.q;
  assign host_timeout    = reg2hw.host_timeout_ctrl.q;

  assign stretch_en_addr_tx  = reg2hw.stretch_ctrl.en_addr_tx.q;
  assign stretch_en_addr_acq = reg2hw.stretch_ctrl.en_addr_acq.q;
  assign stretch_stop_tx     = reg2hw.stretch_ctrl.stop_tx.q;
  assign stretch_stop_acq    = reg2hw.stretch_ctrl.stop_acq.q;

  assign i2c_fifo_rxrst   = reg2hw.fifo_ctrl.rxrst.q & reg2hw.fifo_ctrl.rxrst.qe;
  assign i2c_fifo_fmtrst  = reg2hw.fifo_ctrl.fmtrst.q & reg2hw.fifo_ctrl.fmtrst.qe;
  assign i2c_fifo_rxilvl  = reg2hw.fifo_ctrl.rxilvl.q;
  assign i2c_fifo_fmtilvl = reg2hw.fifo_ctrl.fmtilvl.q;

  assign i2c_fifo_txrst   = reg2hw.fifo_ctrl.txrst.q & reg2hw.fifo_ctrl.txrst.qe;
  assign i2c_fifo_acqrst  = reg2hw.fifo_ctrl.acqrst.q & reg2hw.fifo_ctrl.acqrst.qe;

  always_ff @ (posedge clk_i or negedge rst_ni) begin : watermark_transition
    if (!rst_ni) begin
      fmt_watermark_q <= 1'b1; // true by default
      rx_watermark_q  <= 1'b0; // false by default
    end else begin
      fmt_watermark_q <= fmt_watermark_d;
      rx_watermark_q  <= rx_watermark_d;
    end
  end

  always_comb begin
    unique case(i2c_fifo_fmtilvl)
      2'h0:    fmt_watermark_d = (fmt_fifo_depth <= 7'd1);
      2'h1:    fmt_watermark_d = (fmt_fifo_depth <= 7'd4);
      2'h2:    fmt_watermark_d = (fmt_fifo_depth <= 7'd8);
      default: fmt_watermark_d = (fmt_fifo_depth <= 7'd16);
    endcase
  end

  assign event_fmt_watermark = fmt_watermark_d & ~fmt_watermark_q;

  always_comb begin
    unique case(i2c_fifo_rxilvl)
      3'h0:    rx_watermark_d = (rx_fifo_depth >= 7'd1);
      3'h1:    rx_watermark_d = (rx_fifo_depth >= 7'd4);
      3'h2:    rx_watermark_d = (rx_fifo_depth >= 7'd8);
      3'h3:    rx_watermark_d = (rx_fifo_depth >= 7'd16);
      3'h4:    rx_watermark_d = (rx_fifo_depth >= 7'd30);
      default: rx_watermark_d = 1'b0;
    endcase
  end

  assign event_rx_watermark = rx_watermark_d & ~rx_watermark_q;

  assign event_fmt_overflow = fmt_fifo_wvalid & ~fmt_fifo_wready;
  assign event_rx_overflow = rx_fifo_wvalid & ~rx_fifo_wready;

  // The fifo write enable is controlled by fbyte, start, stop, read, rcont,
  // and nakok field qe bits.
  // When all qe bits are asserted, fdata is injected into the fifo.
  assign fmt_fifo_wvalid     = line_loopback ? 1'b1 :
                               reg2hw.fdata.fbyte.qe &
                               reg2hw.fdata.start.qe &
                               reg2hw.fdata.stop.qe  &
                               reg2hw.fdata.read.qe  &
                               reg2hw.fdata.rcont.qe &
                               reg2hw.fdata.nakok.qe;
  assign fmt_fifo_wdata[7:0] = line_loopback ? rx_fifo_rdata : reg2hw.fdata.fbyte.q;
  assign fmt_fifo_wdata[8]   = line_loopback ? 1'b0 : reg2hw.fdata.start.q;
  assign fmt_fifo_wdata[9]   = line_loopback ? 1'b0 : reg2hw.fdata.stop.q;
  assign fmt_fifo_wdata[10]  = line_loopback ? 1'b0 : reg2hw.fdata.read.q;
  assign fmt_fifo_wdata[11]  = line_loopback ? 1'b0 : reg2hw.fdata.rcont.q;
  assign fmt_fifo_wdata[12]  = line_loopback ? 1'b1 : reg2hw.fdata.nakok.q;

  assign fmt_byte               = fmt_fifo_rvalid ? fmt_fifo_rdata[7:0] : '0;
  assign fmt_flag_start_before  = fmt_fifo_rvalid ? fmt_fifo_rdata[8] : '0;
  assign fmt_flag_stop_after    = fmt_fifo_rvalid ? fmt_fifo_rdata[9] : '0;
  assign fmt_flag_read_bytes    = fmt_fifo_rvalid ? fmt_fifo_rdata[10] : '0;
  assign fmt_flag_read_continue = fmt_fifo_rvalid ? fmt_fifo_rdata[11] : '0;
  assign fmt_flag_nak_ok        = fmt_fifo_rvalid ? fmt_fifo_rdata[12] : '0;

  // Unused parts of exposed bits
  assign unused_fifo_ctrl_rxilvl_qe  = reg2hw.fifo_ctrl.rxilvl.qe;
  assign unused_fifo_ctrl_fmtilvl_qe = reg2hw.fifo_ctrl.fmtilvl.qe;
  assign unused_rx_fifo_rdata_q = reg2hw.rdata.q;
  assign unused_acq_fifo_adata_q = reg2hw.acqdata.abyte.q;
  assign unused_acq_fifo_signal_q = reg2hw.acqdata.signal.q;
  assign unused_alert_test_qe = reg2hw.alert_test.qe;
  assign unused_alert_test_q = reg2hw.alert_test.q;

  prim_fifo_sync #(
    .Width   (13),
    .Pass    (1'b1),
    .Depth   (FifoDepth)
  ) u_i2c_fmtfifo (
    .clk_i,
    .rst_ni,
    .clr_i   (i2c_fifo_fmtrst),
    .wvalid(fmt_fifo_wvalid),
    .wready(fmt_fifo_wready),
    .wdata(fmt_fifo_wdata),
    .depth(fmt_fifo_depth),
    .rvalid(fmt_fifo_rvalid),
    .rready(fmt_fifo_rready),
    .rdata(fmt_fifo_rdata)
  );

  assign rx_fifo_rready = reg2hw.rdata.re;

  prim_fifo_sync #(
    .Width   (8),
    .Pass    (1'b0),
    .Depth   (FifoDepth)
  ) u_i2c_rxfifo (
    .clk_i,
    .rst_ni,
    .clr_i   (i2c_fifo_rxrst),
    .wvalid(rx_fifo_wvalid),
    .wready(rx_fifo_wready),
    .wdata(rx_fifo_wdata),
    .depth (rx_fifo_depth),
    .rvalid(rx_fifo_rvalid),
    .rready(rx_fifo_rready),
    .rdata (rx_fifo_rdata)
  );

  // Target TX and ACQ FIFOs
  assign event_tx_overflow = tx_fifo_wvalid & ~tx_fifo_wready;
  assign event_acq_overflow = acq_fifo_wvalid & ~acq_fifo_wready;

  assign tx_fifo_wvalid = line_loopback ? 1'b1 : reg2hw.txdata.qe;
  assign tx_fifo_wdata  = line_loopback ? acq_fifo_rdata[7:0] : reg2hw.txdata.q;

  prim_fifo_sync #(
    .Width(8),
    .Pass(1'b1),
    .Depth(FifoDepth)
  ) u_i2c_txfifo (
    .clk_i,
    .rst_ni,
    .clr_i   (i2c_fifo_txrst),
    .wvalid(tx_fifo_wvalid),
    .wready(tx_fifo_wready),
    .wdata (tx_fifo_wdata),
    .depth (tx_fifo_depth),
    .rvalid(tx_fifo_rvalid),
    .rready(tx_fifo_rready),
    .rdata (tx_fifo_rdata)
  );

  assign acq_fifo_rready = reg2hw.acqdata.abyte.re & reg2hw.acqdata.signal.re;

  prim_fifo_sync #(
    .Width(10),
    .Pass(1'b0),
    .Depth(FifoDepth)
  ) u_i2c_acqfifo (
    .clk_i,
    .rst_ni,
    .clr_i   (i2c_fifo_acqrst),
    .wvalid(acq_fifo_wvalid),
    .wready(acq_fifo_wready),
    .wdata(acq_fifo_wdata),
    .depth(acq_fifo_depth),
    .rvalid(acq_fifo_rvalid),
    .rready(acq_fifo_rready),
    .rdata (acq_fifo_rdata)
  );

  // sync the incoming SCL and SDA signals
  prim_flop_2sync #(
    .Width(1),
    .ResetValue(1'b1)
  ) u_i2c_sync_scl (
    .clk_i,
    .rst_ni,
    .d_i (scl_i),
    .q_o (scl_sync)
  );

  prim_flop_2sync #(
    .Width(1),
    .ResetValue(1'b1)
  ) u_i2c_sync_sda (
    .clk_i,
    .rst_ni,
    .d_i (sda_i),
    .q_o (sda_sync)
  );

  i2c_fsm u_i2c_fsm (
    .clk_i,
    .rst_ni,

    .scl_i                   (scl_sync),
    .scl_o                   (scl_out_fsm),
    .sda_i                   (sda_sync),
    .sda_o                   (sda_out_fsm),

    .host_enable_i           (host_enable),
    .target_enable_i         (target_enable),

    .fmt_fifo_rvalid_i       (fmt_fifo_rvalid),
    .fmt_fifo_wvalid_i       (fmt_fifo_wvalid),
    .fmt_fifo_depth_i        (fmt_fifo_depth),
    .fmt_fifo_rready_o       (fmt_fifo_rready),

    .fmt_byte_i              (fmt_byte),
    .fmt_flag_start_before_i (fmt_flag_start_before),
    .fmt_flag_stop_after_i   (fmt_flag_stop_after),
    .fmt_flag_read_bytes_i   (fmt_flag_read_bytes),
    .fmt_flag_read_continue_i(fmt_flag_read_continue),
    .fmt_flag_nak_ok_i       (fmt_flag_nak_ok),

    .rx_fifo_wvalid_o        (rx_fifo_wvalid),
    .rx_fifo_wdata_o         (rx_fifo_wdata),

    .tx_fifo_rvalid_i        (tx_fifo_rvalid),
    .tx_fifo_wvalid_i        (tx_fifo_wvalid),
    .tx_fifo_depth_i         (tx_fifo_depth),
    .tx_fifo_rready_o        (tx_fifo_rready),
    .tx_fifo_rdata_i         (tx_fifo_rdata),

    .acq_fifo_wready_i       (acq_fifo_wready),
    .acq_fifo_wvalid_o       (acq_fifo_wvalid),
    .acq_fifo_wdata_o        (acq_fifo_wdata),

    .host_idle_o             (host_idle),
    .target_idle_o           (target_idle),

    .thigh_i                 (thigh),
    .tlow_i                  (tlow),
    .t_r_i                   (t_r),
    .t_f_i                   (t_f),
    .thd_sta_i               (thd_sta),
    .tsu_sta_i               (tsu_sta),
    .tsu_sto_i               (tsu_sto),
    .tsu_dat_i               (tsu_dat),
    .thd_dat_i               (thd_dat),
    .t_buf_i                 (t_buf),
    .stretch_timeout_i       (stretch_timeout),
    .timeout_enable_i        (timeout_enable),
    .host_timeout_i          (host_timeout),

    .stretch_en_addr_tx_i    (stretch_en_addr_tx),
    .stretch_en_addr_acq_i   (stretch_en_addr_acq),
    .stretch_stop_tx_i       (stretch_stop_tx),
    .stretch_stop_acq_i      (stretch_stop_acq),

    .target_address0_i       (target_address0),
    .target_mask0_i          (target_mask0),
    .target_address1_i       (target_address1),
    .target_mask1_i          (target_mask1),

    .stretch_stop_tx_clr_o   (stretch_stop_tx_clr),
    .stretch_stop_acq_clr_o  (stretch_stop_acq_clr),

    .event_nak_o             (event_nak),
    .event_scl_interference_o(event_scl_interference),
    .event_sda_interference_o(event_sda_interference),
    .event_stretch_timeout_o (event_stretch_timeout),
    .event_sda_unstable_o    (event_sda_unstable),
    .event_trans_complete_o  (event_trans_complete),
    .event_tx_empty_o        (event_tx_empty),
    .event_tx_nonempty_o     (event_tx_nonempty),
    .event_ack_stop_o        (event_ack_stop),
    .event_host_timeout_o    (event_host_timeout)
  );

  prim_intr_hw #(.Width(1)) intr_hw_fmt_watermark (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_fmt_watermark),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.fmt_watermark.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.fmt_watermark.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.fmt_watermark.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.fmt_watermark.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.fmt_watermark.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.fmt_watermark.d),
    .intr_o                 (intr_fmt_watermark_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_rx_watermark (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_rx_watermark),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.rx_watermark.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.rx_watermark.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.rx_watermark.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.rx_watermark.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.rx_watermark.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.rx_watermark.d),
    .intr_o                 (intr_rx_watermark_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_fmt_overflow (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_fmt_overflow),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.fmt_overflow.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.fmt_overflow.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.fmt_overflow.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.fmt_overflow.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.fmt_overflow.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.fmt_overflow.d),
    .intr_o                 (intr_fmt_overflow_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_rx_overflow (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_rx_overflow),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.rx_overflow.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.rx_overflow.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.rx_overflow.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.rx_overflow.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.rx_overflow.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.rx_overflow.d),
    .intr_o                 (intr_rx_overflow_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_nak (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_nak),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.nak.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.nak.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.nak.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.nak.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.nak.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.nak.d),
    .intr_o                 (intr_nak_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_scl_interference (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_scl_interference),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.scl_interference.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.scl_interference.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.scl_interference.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.scl_interference.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.scl_interference.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.scl_interference.d),
    .intr_o                 (intr_scl_interference_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_sda_interference (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_sda_interference),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.sda_interference.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.sda_interference.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.sda_interference.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.sda_interference.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.sda_interference.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.sda_interference.d),
    .intr_o                 (intr_sda_interference_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_stretch_timeout (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_stretch_timeout),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.stretch_timeout.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.stretch_timeout.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.stretch_timeout.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.stretch_timeout.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.stretch_timeout.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.stretch_timeout.d),
    .intr_o                 (intr_stretch_timeout_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_sda_unstable (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_sda_unstable),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.sda_unstable.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.sda_unstable.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.sda_unstable.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.sda_unstable.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.sda_unstable.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.sda_unstable.d),
    .intr_o                 (intr_sda_unstable_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_trans_complete (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_trans_complete),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.trans_complete.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.trans_complete.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.trans_complete.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.trans_complete.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.trans_complete.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.trans_complete.d),
    .intr_o                 (intr_trans_complete_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_tx_empty (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_tx_empty),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.tx_empty.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.tx_empty.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.tx_empty.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.tx_empty.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.tx_empty.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.tx_empty.d),
    .intr_o                 (intr_tx_empty_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_tx_nonempty (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_tx_nonempty),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.tx_nonempty.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.tx_nonempty.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.tx_nonempty.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.tx_nonempty.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.tx_nonempty.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.tx_nonempty.d),
    .intr_o                 (intr_tx_nonempty_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_tx_overflow (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_tx_overflow),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.tx_overflow.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.tx_overflow.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.tx_overflow.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.tx_overflow.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.tx_overflow.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.tx_overflow.d),
    .intr_o                 (intr_tx_overflow_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_acq_overflow (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_acq_overflow),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.acq_overflow.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.acq_overflow.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.acq_overflow.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.acq_overflow.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.acq_overflow.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.acq_overflow.d),
    .intr_o                 (intr_acq_overflow_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_ack_stop (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_ack_stop),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.ack_stop.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.ack_stop.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.ack_stop.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.ack_stop.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.ack_stop.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.ack_stop.d),
    .intr_o                 (intr_ack_stop_o)
  );

  prim_intr_hw #(.Width(1)) intr_hw_host_timeout (
    .clk_i,
    .rst_ni,
    .event_intr_i           (event_host_timeout),
    .reg2hw_intr_enable_q_i (reg2hw.intr_enable.host_timeout.q),
    .reg2hw_intr_test_q_i   (reg2hw.intr_test.host_timeout.q),
    .reg2hw_intr_test_qe_i  (reg2hw.intr_test.host_timeout.qe),
    .reg2hw_intr_state_q_i  (reg2hw.intr_state.host_timeout.q),
    .hw2reg_intr_state_de_o (hw2reg.intr_state.host_timeout.de),
    .hw2reg_intr_state_d_o  (hw2reg.intr_state.host_timeout.d),
    .intr_o                 (intr_host_timeout_o)
  );

endmodule
