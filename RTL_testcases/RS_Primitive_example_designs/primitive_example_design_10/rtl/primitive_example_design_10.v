module primitive_example_design_10 (
  input clk,
  input rst,
  input ibuf1_en,
  output reg [3:0] temperature,
  output valid,
  output error
);

  wire valid_w,error_w,rst_w,valid_wl,error_wl,clock;
  reg [7:0] temperature_w;
  
  SOC_FPGA_TEMPERATURE inst (.TEMPERATURE(temperature_w),.VALID(valid_w),.ERROR(error_w));
  
  CLK_BUF clk_buf_inst (.I(clk),.O(clock));
  
  I_BUF ibuf_inst1 (.I(rst),.EN(ibuf1_en),.O(rst_w));

  O_BUF obuf_inst1 (.I(valid_wl),.O(valid));
  O_BUF obuf_inst2 (.I(error_wl),.O(error));

  latch latch_inst1 (.d(valid_w),.en(rst_w),.q(valid_wl));
  latch latch_inst2 (.d(error_w),.en(rst_w),.q(error_wl));

  always @(posedge clock or negedge rst_w) begin
    if (!rst_w) begin
      temperature <= 4'b0000;
    end else begin
      case (temperature_w)
        8'b0000_0000: temperature <= 4'h0;
        8'b0000_0001: temperature <= 4'h1;
        8'b0000_0010: temperature <= 4'h2;
        8'b0000_0011: temperature <= 4'h3;
        8'b0000_0100: temperature <= 4'h4;
        8'b0000_0101: temperature <= 4'h5;
        8'b0000_0110: temperature <= 4'h6;
        8'b0000_0111: temperature <= 4'h7;
        8'b0000_1000: temperature <= 4'h8;
        8'b0000_1001: temperature <= 4'h9;
        8'b0000_1010: temperature <= 4'ha;
        8'b0000_1011: temperature <= 4'hb;
        8'b0000_1100: temperature <= 4'hc;
        8'b0000_1101: temperature <= 4'hd;
        8'b0000_1110: temperature <= 4'he;
        8'b0000_1111: temperature <= 4'hf;
        8'b0001_0000: temperature <= 4'h0;
        8'b0001_0001: temperature <= 4'h1;
        8'b0001_0010: temperature <= 4'h2;
        8'b0001_0011: temperature <= 4'h3;
        8'b0001_0100: temperature <= 4'h4;
        8'b0001_0101: temperature <= 4'h5;
        8'b0001_0110: temperature <= 4'h6;
        8'b0001_0111: temperature <= 4'h7;
        8'b0001_1000: temperature <= 4'h8;
        8'b0001_1001: temperature <= 4'h9;
        8'b0001_1010: temperature <= 4'ha;
        8'b0001_1011: temperature <= 4'hb;
        8'b0001_1100: temperature <= 4'hc;
        8'b0001_1101: temperature <= 4'hd;
        8'b0001_1110: temperature <= 4'he;
        8'b0001_1111: temperature <= 4'hf;
        8'b0010_0000: temperature <= 4'h0;
        8'b0010_0001: temperature <= 4'h1;
        8'b0010_0010: temperature <= 4'h2;
        8'b0010_0011: temperature <= 4'h3;
        8'b0010_0100: temperature <= 4'h4;
        8'b0010_0101: temperature <= 4'h5;
        8'b0010_0110: temperature <= 4'h6;
        8'b0010_0111: temperature <= 4'h7;
        8'b0010_1000: temperature <= 4'h8;
        8'b0010_1001: temperature <= 4'h9;
        8'b0010_1010: temperature <= 4'ha;
        8'b0010_1011: temperature <= 4'hb;
        8'b0010_1100: temperature <= 4'hc;
        8'b0010_1101: temperature <= 4'hd;
        8'b0010_1110: temperature <= 4'he;
        8'b0010_1111: temperature <= 4'hf;
        8'b0011_0000: temperature <= 4'h0;
        8'b0011_0001: temperature <= 4'h1;
        8'b0011_0010: temperature <= 4'h2;
        8'b0011_0011: temperature <= 4'h3;
        8'b0011_0100: temperature <= 4'h4;
        8'b0011_0101: temperature <= 4'h5;
        8'b0011_0110: temperature <= 4'h6;
        8'b0011_0111: temperature <= 4'h7;
        8'b0011_1000: temperature <= 4'h8;
        8'b0011_1001: temperature <= 4'h9;
        8'b0011_1010: temperature <= 4'ha;
        8'b0011_1011: temperature <= 4'hb;
        8'b0011_1100: temperature <= 4'hc;
        8'b0011_1101: temperature <= 4'hd;
        8'b0011_1110: temperature <= 4'he;
        8'b0011_1111: temperature <= 4'hf;
        8'b0100_0000: temperature <= 4'h0;
        8'b0100_0001: temperature <= 4'h1;
        8'b0100_0010: temperature <= 4'h2;
        8'b0100_0011: temperature <= 4'h3;
        8'b0100_0100: temperature <= 4'h4;
        8'b0100_0101: temperature <= 4'h5;
        8'b0100_0110: temperature <= 4'h6;
        8'b0100_0111: temperature <= 4'h7;
        8'b0100_1000: temperature <= 4'h8;
        8'b0100_1001: temperature <= 4'h9;
        8'b0100_1010: temperature <= 4'ha;
        8'b0100_1011: temperature <= 4'hb;
        8'b0100_1100: temperature <= 4'hc;
        8'b0100_1101: temperature <= 4'hd;
        8'b0100_1110: temperature <= 4'he;
        8'b0100_1111: temperature <= 4'hf;
        8'b0101_0000: temperature <= 4'h0;
        8'b0101_0001: temperature <= 4'h1;
        8'b0101_0010: temperature <= 4'h2;
        8'b0101_0011: temperature <= 4'h3;
        8'b0101_0100: temperature <= 4'h4;
        8'b0101_0101: temperature <= 4'h5;
        8'b0101_0110: temperature <= 4'h6;
        8'b0101_0111: temperature <= 4'h7;
        8'b0101_1000: temperature <= 4'h8;
        8'b0101_1001: temperature <= 4'h9;
        8'b0101_1010: temperature <= 4'ha;
        8'b0101_1011: temperature <= 4'hb;
        8'b0101_1100: temperature <= 4'hc;
        8'b0101_1101: temperature <= 4'hd;
        8'b0101_1110: temperature <= 4'he;
        8'b0101_1111: temperature <= 4'hf;
        8'b0110_0000: temperature <= 4'h0;
        8'b0110_0001: temperature <= 4'h1;
        8'b0110_0010: temperature <= 4'h2;
        8'b0110_0011: temperature <= 4'h3;
        8'b0110_0100: temperature <= 4'h4;
        8'b0110_0101: temperature <= 4'h5;
        8'b0110_0110: temperature <= 4'h6;
        8'b0110_0111: temperature <= 4'h7;
        8'b0110_1000: temperature <= 4'h8;
        8'b0110_1001: temperature <= 4'h9;
        8'b0110_1010: temperature <= 4'ha;
        8'b0110_1011: temperature <= 4'hb;
        8'b0110_1100: temperature <= 4'hc;
        8'b0110_1101: temperature <= 4'hd;
        8'b0110_1110: temperature <= 4'he;
        8'b0110_1111: temperature <= 4'hf;
        8'b0111_0000: temperature <= 4'h0;
        8'b0111_0001: temperature <= 4'h1;
        8'b0111_0010: temperature <= 4'h2;
        8'b0111_0011: temperature <= 4'h3;
        8'b0111_0100: temperature <= 4'h4;
        8'b0111_0101: temperature <= 4'h5;
        8'b0111_0110: temperature <= 4'h6;
        8'b0111_0111: temperature <= 4'h7;
        8'b0111_1000: temperature <= 4'h8;
        8'b0111_1001: temperature <= 4'h9;
        8'b0111_1010: temperature <= 4'ha;
        8'b0111_1011: temperature <= 4'hb;
        8'b0111_1100: temperature <= 4'hc;
        8'b0111_1101: temperature <= 4'hd;
        8'b0111_1110: temperature <= 4'he;
        8'b0111_1111: temperature <= 4'hf;
        8'b1000_0000: temperature <= 4'h0;
        8'b1000_0001: temperature <= 4'h1;
        8'b1000_0010: temperature <= 4'h2;
        8'b1000_0011: temperature <= 4'h3;
        8'b1000_0100: temperature <= 4'h4;
        8'b1000_0101: temperature <= 4'h5;
        8'b1000_0110: temperature <= 4'h6;
        8'b1000_0111: temperature <= 4'h7;
        8'b1000_1000: temperature <= 4'h8;
        8'b1000_1001: temperature <= 4'h9;
        8'b1000_1010: temperature <= 4'ha;
        8'b1000_1011: temperature <= 4'hb;
        8'b1000_1100: temperature <= 4'hc;
        8'b1000_1101: temperature <= 4'hd;
        8'b1000_1110: temperature <= 4'he;
        8'b1000_1111: temperature <= 4'hf;
        8'b1001_0000: temperature <= 4'h0;
        8'b1001_0001: temperature <= 4'h1;
        8'b1001_0010: temperature <= 4'h2;
        8'b1001_0011: temperature <= 4'h3;
        8'b1001_0100: temperature <= 4'h4;
        8'b1001_0101: temperature <= 4'h5;
        8'b1001_0110: temperature <= 4'h6;
        8'b1001_0111: temperature <= 4'h7;
        8'b1001_1000: temperature <= 4'h8;
        8'b1001_1001: temperature <= 4'h9;
        8'b1001_1010: temperature <= 4'ha;
        8'b1001_1011: temperature <= 4'hb;
        8'b1001_1100: temperature <= 4'hc;
        8'b1001_1101: temperature <= 4'hd;
        8'b1001_1110: temperature <= 4'he;
        8'b1001_1111: temperature <= 4'hf;
        8'b1010_0000: temperature <= 4'h0;
        8'b1010_0001: temperature <= 4'h1;
        8'b1010_0010: temperature <= 4'h2;
        8'b1010_0011: temperature <= 4'h3;
        8'b1010_0100: temperature <= 4'h4;
        8'b1010_0101: temperature <= 4'h5;
        8'b1010_0110: temperature <= 4'h6;
        8'b1010_0111: temperature <= 4'h7;
        8'b1010_1000: temperature <= 4'h8;
        8'b1010_1001: temperature <= 4'h9;
        8'b1010_1010: temperature <= 4'ha;
        8'b1010_1011: temperature <= 4'hb;
        8'b1010_1100: temperature <= 4'hc;
        8'b1010_1101: temperature <= 4'hd;
        8'b1010_1110: temperature <= 4'he;
        8'b1010_1111: temperature <= 4'hf;
        8'b1011_0000: temperature <= 4'h0;
        8'b1011_0001: temperature <= 4'h1;
        8'b1011_0010: temperature <= 4'h2;
        8'b1011_0011: temperature <= 4'h3;
        8'b1011_0100: temperature <= 4'h4;
        8'b1011_0101: temperature <= 4'h5;
        8'b1011_0110: temperature <= 4'h6;
        8'b1011_0111: temperature <= 4'h7;
        8'b1011_1000: temperature <= 4'h8;
        8'b1011_1001: temperature <= 4'h9;
        8'b1011_1010: temperature <= 4'ha;
        8'b1011_1011: temperature <= 4'hb;
        8'b1011_1100: temperature <= 4'hc;
        8'b1011_1101: temperature <= 4'hd;
        8'b1011_1110: temperature <= 4'he;
        8'b1011_1111: temperature <= 4'hf;
        8'b1100_0000: temperature <= 4'h0;
        8'b1100_0001: temperature <= 4'h1;
        8'b1100_0010: temperature <= 4'h2;
        8'b1100_0011: temperature <= 4'h3;
        8'b1100_0100: temperature <= 4'h4;
        8'b1100_0101: temperature <= 4'h5;
        8'b1100_0110: temperature <= 4'h6;
        8'b1100_0111: temperature <= 4'h7;
        8'b1100_1000: temperature <= 4'h8;
        8'b1100_1001: temperature <= 4'h9;
        8'b1100_1010: temperature <= 4'ha;
        8'b1100_1011: temperature <= 4'hb;
        8'b1100_1100: temperature <= 4'hc;
        8'b1100_1101: temperature <= 4'hd;
        8'b1100_1110: temperature <= 4'he;
        8'b1100_1111: temperature <= 4'hf;
        8'b1101_0000: temperature <= 4'h0;
        8'b1101_0001: temperature <= 4'h1;
        8'b1101_0010: temperature <= 4'h2;
        8'b1101_0011: temperature <= 4'h3;
        8'b1101_0100: temperature <= 4'h4;
        8'b1101_0101: temperature <= 4'h5;
        8'b1101_0110: temperature <= 4'h6;
        8'b1101_0111: temperature <= 4'h7;
        8'b1101_1000: temperature <= 4'h8;
        8'b1101_1001: temperature <= 4'h9;
        8'b1101_1010: temperature <= 4'ha;
        8'b1101_1011: temperature <= 4'hb;
        8'b1101_1100: temperature <= 4'hc;
        8'b1101_1101: temperature <= 4'hd;
        8'b1101_1110: temperature <= 4'he;
        8'b1101_1111: temperature <= 4'hf;
        8'b1110_0000: temperature <= 4'h0;
        8'b1110_0001: temperature <= 4'h1;
        8'b1110_0010: temperature <= 4'h2;
        8'b1110_0011: temperature <= 4'h3;
        8'b1110_0100: temperature <= 4'h4;
        8'b1110_0101: temperature <= 4'h5;
        8'b1110_0110: temperature <= 4'h6;
        8'b1110_0111: temperature <= 4'h7;
        8'b1110_1000: temperature <= 4'h8;
        8'b1110_1001: temperature <= 4'h9;
        8'b1110_1010: temperature <= 4'ha;
        8'b1110_1011: temperature <= 4'hb;
        8'b1110_1100: temperature <= 4'hc;
        8'b1110_1101: temperature <= 4'hd;
        8'b1110_1110: temperature <= 4'he;
        8'b1110_1111: temperature <= 4'hf;
        8'b1111_0000: temperature <= 4'h0;
        8'b1111_0001: temperature <= 4'h1;
        8'b1111_0010: temperature <= 4'h2;
        8'b1111_0011: temperature <= 4'h3;
        8'b1111_0100: temperature <= 4'h4;
        8'b1111_0101: temperature <= 4'h5;
        8'b1111_0110: temperature <= 4'h6;
        8'b1111_0111: temperature <= 4'h7;
        8'b1111_1000: temperature <= 4'h8;
        8'b1111_1001: temperature <= 4'h9;
        8'b1111_1010: temperature <= 4'ha;
        8'b1111_1011: temperature <= 4'hb;
        8'b1111_1100: temperature <= 4'hc;
        8'b1111_1101: temperature <= 4'hd;
        8'b1111_1110: temperature <= 4'he;
        8'b1111_1111: temperature <= 4'hf;
        default: temperature <= 4'b1111; // Default case
      endcase
    end
  end
endmodule

module latch #(parameter WIDTH=1) (d,en,q);
    input en;
    input [WIDTH-1:0] d;
    output [WIDTH-1:0] q;

    always @(*) begin
        if (en) assign q = d;
    end
endmodule
