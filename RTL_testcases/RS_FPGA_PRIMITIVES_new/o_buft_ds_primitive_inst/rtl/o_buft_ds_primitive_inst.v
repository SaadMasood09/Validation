module o_buft_ds_primitive_inst (
  input I_O_BUFT_DS, // Data input
  input T_O_BUFT_DS, // Tri-state output
  output O_P_O_BUFT_DS, // Data positive output (connect to top-level port)
  output O_N_O_BUFT_DS // Data negative output (connect to top-level port)
);

  wire I;
  wire T;
  wire O_P;
  wire O_N;

  O_BUFT_DS O_BUFT_DS_primitive (
    .I(I_O_BUFT_DS),   // Connect to your input signal
    .T(T_O_BUFT_DS),   // Connect to your tri-state signal
    .O_P(O_P),          // Connect to your positive output signal
    .O_N(O_N)           // Connect to your negative output signal
  );

  // Connect your positive and negative output signals to the instance's outputs
  assign O_P_O_BUFT_DS = O_P;
  assign O_N_O_BUFT_DS = O_N;

endmodule