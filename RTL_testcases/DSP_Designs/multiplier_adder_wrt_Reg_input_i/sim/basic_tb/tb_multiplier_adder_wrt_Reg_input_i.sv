`include "../../rtl/multiplier_adder_wrt_Reg_input_i.v"
module tb_multiplier_adder_wrt_Reg_input_i ();
	reg signed [19:0] A;
	reg signed [17:0] B;
	reg clk, reset, subtract_i, Reg_input_i ;
	reg [3:0] acc_fir;
	reg signed [19:0] shift_out;
	wire signed [37:0] P;
	reg signed  [37:0] P_value;
	initial clk=0;
	always #5 
	   clk=~clk;
	initial begin
		reset = 0;
		A=0;
		B=0;
		subtract_i = 0;
		Reg_input_i =1;
		acc_fir = 0;
		@(posedge clk);
		reset = 1;
		$display ("\n\n***Reset Test is applied***\n\n");
		@(posedge clk);
		@(posedge clk);
		$display ($time,,"reset=%0b, clk=%0b, acc_fir=%0d, A=%0d, B=%0d, P=%0d",reset, clk, acc_fir, A, B, P);
		if (P == 0)
			$display ("Reset Test Passed");
		else begin
			$display ("Reset Test Failed; P value must be: 0 \n ");
		end
		$display ("\n\n***Reset Test is ended***\n\n");
		reset = 0;
		@(negedge clk);

		$display ("\n\n*** Random Functionality Tests for multiplier with signed inputs are applied***\n\n");
		repeat (32) begin
			A = $random( );
			B = $random( );
			acc_fir = $urandom( );
			shift_out = A<<acc_fir;
			P_value = shift_out + A*B;
			@(negedge clk);
			@(negedge clk);
			$display ($time,,"reset=%0b, clk=%0b, acc_fir=%0d, A=%0d, B=%0d, P=%0d",reset, clk, acc_fir, A, B, P);			
			if (P == P_value)
				$display ("Test Passed");
			else begin
				$display ("Test Failed:\n P value must be: %d \n", P_value);
			end
		end

		$display ("\n\n***Random Functionality Tests for multiplier with signed inputs are ended***\n\n");

		reset =1;
		A=0;
		B=0;
		acc_fir = 0;
		P_value = 0;
		$display ("\n\n***Reset Test is applied***\n\n");
		@(posedge clk);
		@(posedge clk);
		$display ($time,,"reset=%0b, clk=%0b, acc_fir=%0d, A=%0d, B=%0d, P=%0d",reset, clk, acc_fir, A, B, P);
		if (P == 0 )
			$display ("Reset Test Passed");
		else begin
			$display ("Reset Test Failed; P value must be: 0 \n ");
		end
		$display ("\n\n***Reset Test is ended***\n\n");
		
		reset=0;
		@(negedge clk);
		$display ("\n\n***Reset Value is set zero again***\n\n");


		$display ("\n\n***Directed Functionality Test for multiplier is applied***\n\n");
		A = 5;
		B = 2;
		subtract_i = 1;
		acc_fir = 2;
		shift_out = A<<acc_fir;
		P_value = shift_out - A*B;
		@(negedge clk);
		@(negedge clk);
		$display ($time,,"reset=%0b, clk=%0b, acc_fir=%0d, A=%0d, B=%0d, P=%0d",reset, clk, acc_fir, A, B, P);
		if (P == P_value)
			$display ("Test Passed");
		else begin
			$display ("Test Failed:\n P value must be: %0d \n", P_value);
		end
		$display ("\n\n***Directed Functionality Test for multiplier is ended***\n\n");

		#100;
		$finish;
	end
	multiplier_adder_wrt_Reg_input_i (clk, reset, subtract_i, Reg_input_i, A, B, acc_fir, P);
endmodule