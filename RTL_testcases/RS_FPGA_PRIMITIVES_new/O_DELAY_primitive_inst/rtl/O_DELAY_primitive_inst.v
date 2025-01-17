module O_DELAY_primitive_inst (
  input I, // Data input
  input DLY_LOAD, // Delay load input
  input DLY_ADJ, // Delay adjust input
  input DLY_INCDEC, // Delay increment / decrement input
  output [5:0] DLY_TAP_VALUE, // Delay tap value output
  input CLK_IN, // Clock input
  output O // Data output
);

O_DELAY #(.DELAY(0)) inst (
  I, // Data input
  DLY_LOAD, // Delay load input
  DLY_ADJ, // Delay adjust input
  DLY_INCDEC, // Delay increment / decrement input
  DLY_TAP_VALUE, // Delay tap value output
  CLK_IN, // Clock input
  O 
);
endmodule
