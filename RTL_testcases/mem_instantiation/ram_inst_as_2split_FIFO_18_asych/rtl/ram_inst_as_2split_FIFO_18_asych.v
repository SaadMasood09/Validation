

module ram_inst_as_2split_FIFO_18_asych (
  input clock0, clock2, clock1, clock3, we1, we2, re1, re2, rst_ptr1, rst_ptr2,
  input [17:0] din1, din2,
  output [17:0] dout1, dout2,
  output EMPTY1,EPO1,EWM1,UNDERRUN1,FULL1,FMO1,FWM1,OVERRUN1, EMPTY2,EPO2,EWM2,UNDERRUN2,FULL2,FMO2,FWM2,OVERRUN2);

parameter [80:0] MODE_BITS =81'h04928800ffc2494400ffd;

 RS_TDP36K  #(.MODE_BITS(MODE_BITS))
  inst1(
    .ADDR_A1(0),
    .ADDR_A2(0),
    .ADDR_B1(0),
    .ADDR_B2(0),
    .BE_A1(0),
    .BE_A2(0),
    .BE_B1(0),
    .BE_B2(0),
    .CLK_A1(clock0),
    .CLK_A2(clock2),
    .CLK_B1(clock1),
    .CLK_B2(clock3),
    .FLUSH1(rst_ptr1),
    .FLUSH2(rst_ptr2),
    .RDATA_A1({EMPTY1,EPO1,EWM1,UNDERRUN1,FULL1,FMO1,FWM1,OVERRUN1}),
    .RDATA_A2({EMPTY2,EPO2,EWM2,UNDERRUN2,FULL2,FMO2,FWM2,OVERRUN2}),
    .RDATA_B1({dout1[17:0]}),
    .RDATA_B2({dout2[17:0]}),
    .REN_A1(0),
    .REN_A2(0),
    .REN_B1(re1),
    .REN_B2(re2),
    .WDATA_A1(din1[17:0]),
    .WDATA_A2(din2[17:0]),
    .WDATA_B1(0),
    .WDATA_B2(0),
    .WEN_A1(we1),
    .WEN_A2(we2),
    .WEN_B1(0),
    .WEN_B2(0)
  );
 

endmodule
