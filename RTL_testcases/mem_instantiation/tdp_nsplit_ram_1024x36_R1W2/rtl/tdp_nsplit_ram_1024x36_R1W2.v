

module tdp_nsplit_ram_1024x36_R1W2 (
  input clock0, clock1, weA, weB,
  input [9:0] addrA, addrB,
  input [1:0] dinA, dinB, 
  output doutA, doutB);

  //parameter [80:0] MODE_BITS =81'h1B5A;
  parameter [80:0] MODE_BITS =81'hb5b00000000000000000;


 RS_TDP36K  #(.MODE_BITS(MODE_BITS))
  inst1(
    .ADDR_A1({ 5'h00, addrA }),
    .ADDR_A2({ 4'h0, addrA }),
    .ADDR_B1({ 5'h00, addrB }),
    .ADDR_B2({ 4'h0, addrB }),
    // .ADDR_A1({addrA, 5'h00}),
    // .ADDR_A2({addrA[8:0], 5'h00 }),
    // .ADDR_B1({ addrB, 5'h00 }),
    // .ADDR_B2({ addrB[8:0], 5'h00 }),
    .BE_A1(2'b11),
    .BE_A2(0),
    .BE_B1(2'b11),
    .BE_B2(0),
    .CLK_A1(clock0),
    .CLK_A2(clock0),
    .CLK_B1(clock1),
    .CLK_B2(clock1),
    .FLUSH1(0),
    .FLUSH2(0),
    .RDATA_A1(doutA),
    .RDATA_A2(),
    .RDATA_B1(doutB),
    .RDATA_B2(),
    .REN_A1(1),
    .REN_A2(0),
    .REN_B1(1),
    .REN_B2(0),
    .WDATA_A1(dinA),
    .WDATA_A2(0),
    .WDATA_B1(dinB),
    .WDATA_B2(0),
    .WEN_A1(weA),
    .WEN_A2(0),
    .WEN_B1(weB),
    .WEN_B2(0)
  );
 

endmodule
