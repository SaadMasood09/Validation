// `include "register.v"
// `include "memory_cntrl.v"
// `include "full_adder.v"
// `include "large_mux.v"

module design114_10_21_top_neg #(parameter WIDTH=32,CHANNEL=10) (clk, rst, in, out);

	localparam OUT_BUS=CHANNEL*WIDTH;
	input clk,rst;
	input [WIDTH-1:0] in;
	output [WIDTH-1:0] out;

	reg [WIDTH-1:0] d_in0;
	reg [WIDTH-1:0] d_in1;
	reg [WIDTH-1:0] d_in2;
	reg [WIDTH-1:0] d_in3;
	reg [WIDTH-1:0] d_in4;
	reg [WIDTH-1:0] d_in5;
	reg [WIDTH-1:0] d_in6;
	reg [WIDTH-1:0] d_in7;
	reg [WIDTH-1:0] d_in8;
	reg [WIDTH-1:0] d_in9;
	wire [WIDTH-1:0] d_out0;
	wire [WIDTH-1:0] d_out1;
	wire [WIDTH-1:0] d_out2;
	wire [WIDTH-1:0] d_out3;
	wire [WIDTH-1:0] d_out4;
	wire [WIDTH-1:0] d_out5;
	wire [WIDTH-1:0] d_out6;
	wire [WIDTH-1:0] d_out7;
	wire [WIDTH-1:0] d_out8;
	wire [WIDTH-1:0] d_out9;

	reg [OUT_BUS-1:0] tmp;

	always @ (negedge clk or negedge rst) begin
		if (!rst)
			tmp <= 0;
		else
			tmp <= {tmp[OUT_BUS-(WIDTH-1):0],in};
	end

	always @ (negedge clk) begin
		d_in0 <= tmp[WIDTH-1:0];
		d_in1 <= tmp[(WIDTH*2)-1:WIDTH*1];
		d_in2 <= tmp[(WIDTH*3)-1:WIDTH*2];
		d_in3 <= tmp[(WIDTH*4)-1:WIDTH*3];
		d_in4 <= tmp[(WIDTH*5)-1:WIDTH*4];
		d_in5 <= tmp[(WIDTH*6)-1:WIDTH*5];
		d_in6 <= tmp[(WIDTH*7)-1:WIDTH*6];
		d_in7 <= tmp[(WIDTH*8)-1:WIDTH*7];
		d_in8 <= tmp[(WIDTH*9)-1:WIDTH*8];
		d_in9 <= tmp[(WIDTH*10)-1:WIDTH*9];
	end

	design114_10_21 #(.WIDTH(WIDTH)) design114_10_21_inst(.d_in0(d_in0),.d_in1(d_in1),.d_in2(d_in2),.d_in3(d_in3),.d_in4(d_in4),.d_in5(d_in5),.d_in6(d_in6),.d_in7(d_in7),.d_in8(d_in8),.d_in9(d_in9),.d_out0(d_out0),.d_out1(d_out1),.d_out2(d_out2),.d_out3(d_out3),.d_out4(d_out4),.d_out5(d_out5),.d_out6(d_out6),.d_out7(d_out7),.d_out8(d_out8),.d_out9(d_out9),.clk(clk),.rst(!rst));

	assign out = d_out0^d_out1^d_out2^d_out3^d_out4^d_out5^d_out6^d_out7^d_out8^d_out9;

endmodule

module design114_10_21 #(parameter WIDTH=32) (d_in0, d_in1, d_in2, d_in3, d_in4, d_in5, d_in6, d_in7, d_in8, d_in9, d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7, d_out8, d_out9, clk, rst);
	input clk;
	input rst;
	input [WIDTH-1:0] d_in0; 
	input [WIDTH-1:0] d_in1; 
	input [WIDTH-1:0] d_in2; 
	input [WIDTH-1:0] d_in3; 
	input [WIDTH-1:0] d_in4; 
	input [WIDTH-1:0] d_in5; 
	input [WIDTH-1:0] d_in6; 
	input [WIDTH-1:0] d_in7; 
	input [WIDTH-1:0] d_in8; 
	input [WIDTH-1:0] d_in9; 
	output [WIDTH-1:0] d_out0; 
	output [WIDTH-1:0] d_out1; 
	output [WIDTH-1:0] d_out2; 
	output [WIDTH-1:0] d_out3; 
	output [WIDTH-1:0] d_out4; 
	output [WIDTH-1:0] d_out5; 
	output [WIDTH-1:0] d_out6; 
	output [WIDTH-1:0] d_out7; 
	output [WIDTH-1:0] d_out8; 
	output [WIDTH-1:0] d_out9; 

	wire [WIDTH-1:0] wire_d0_0;
	wire [WIDTH-1:0] wire_d0_1;
	wire [WIDTH-1:0] wire_d0_2;
	wire [WIDTH-1:0] wire_d0_3;
	wire [WIDTH-1:0] wire_d0_4;
	wire [WIDTH-1:0] wire_d0_5;
	wire [WIDTH-1:0] wire_d0_6;
	wire [WIDTH-1:0] wire_d0_7;
	wire [WIDTH-1:0] wire_d0_8;
	wire [WIDTH-1:0] wire_d0_9;
	wire [WIDTH-1:0] wire_d0_10;
	wire [WIDTH-1:0] wire_d0_11;
	wire [WIDTH-1:0] wire_d0_12;
	wire [WIDTH-1:0] wire_d0_13;
	wire [WIDTH-1:0] wire_d0_14;
	wire [WIDTH-1:0] wire_d0_15;
	wire [WIDTH-1:0] wire_d0_16;
	wire [WIDTH-1:0] wire_d0_17;
	wire [WIDTH-1:0] wire_d0_18;
	wire [WIDTH-1:0] wire_d0_19;
	wire [WIDTH-1:0] wire_d1_0;
	wire [WIDTH-1:0] wire_d1_1;
	wire [WIDTH-1:0] wire_d1_2;
	wire [WIDTH-1:0] wire_d1_3;
	wire [WIDTH-1:0] wire_d1_4;
	wire [WIDTH-1:0] wire_d1_5;
	wire [WIDTH-1:0] wire_d1_6;
	wire [WIDTH-1:0] wire_d1_7;
	wire [WIDTH-1:0] wire_d1_8;
	wire [WIDTH-1:0] wire_d1_9;
	wire [WIDTH-1:0] wire_d1_10;
	wire [WIDTH-1:0] wire_d1_11;
	wire [WIDTH-1:0] wire_d1_12;
	wire [WIDTH-1:0] wire_d1_13;
	wire [WIDTH-1:0] wire_d1_14;
	wire [WIDTH-1:0] wire_d1_15;
	wire [WIDTH-1:0] wire_d1_16;
	wire [WIDTH-1:0] wire_d1_17;
	wire [WIDTH-1:0] wire_d1_18;
	wire [WIDTH-1:0] wire_d1_19;
	wire [WIDTH-1:0] wire_d2_0;
	wire [WIDTH-1:0] wire_d2_1;
	wire [WIDTH-1:0] wire_d2_2;
	wire [WIDTH-1:0] wire_d2_3;
	wire [WIDTH-1:0] wire_d2_4;
	wire [WIDTH-1:0] wire_d2_5;
	wire [WIDTH-1:0] wire_d2_6;
	wire [WIDTH-1:0] wire_d2_7;
	wire [WIDTH-1:0] wire_d2_8;
	wire [WIDTH-1:0] wire_d2_9;
	wire [WIDTH-1:0] wire_d2_10;
	wire [WIDTH-1:0] wire_d2_11;
	wire [WIDTH-1:0] wire_d2_12;
	wire [WIDTH-1:0] wire_d2_13;
	wire [WIDTH-1:0] wire_d2_14;
	wire [WIDTH-1:0] wire_d2_15;
	wire [WIDTH-1:0] wire_d2_16;
	wire [WIDTH-1:0] wire_d2_17;
	wire [WIDTH-1:0] wire_d2_18;
	wire [WIDTH-1:0] wire_d2_19;
	wire [WIDTH-1:0] wire_d3_0;
	wire [WIDTH-1:0] wire_d3_1;
	wire [WIDTH-1:0] wire_d3_2;
	wire [WIDTH-1:0] wire_d3_3;
	wire [WIDTH-1:0] wire_d3_4;
	wire [WIDTH-1:0] wire_d3_5;
	wire [WIDTH-1:0] wire_d3_6;
	wire [WIDTH-1:0] wire_d3_7;
	wire [WIDTH-1:0] wire_d3_8;
	wire [WIDTH-1:0] wire_d3_9;
	wire [WIDTH-1:0] wire_d3_10;
	wire [WIDTH-1:0] wire_d3_11;
	wire [WIDTH-1:0] wire_d3_12;
	wire [WIDTH-1:0] wire_d3_13;
	wire [WIDTH-1:0] wire_d3_14;
	wire [WIDTH-1:0] wire_d3_15;
	wire [WIDTH-1:0] wire_d3_16;
	wire [WIDTH-1:0] wire_d3_17;
	wire [WIDTH-1:0] wire_d3_18;
	wire [WIDTH-1:0] wire_d3_19;
	wire [WIDTH-1:0] wire_d4_0;
	wire [WIDTH-1:0] wire_d4_1;
	wire [WIDTH-1:0] wire_d4_2;
	wire [WIDTH-1:0] wire_d4_3;
	wire [WIDTH-1:0] wire_d4_4;
	wire [WIDTH-1:0] wire_d4_5;
	wire [WIDTH-1:0] wire_d4_6;
	wire [WIDTH-1:0] wire_d4_7;
	wire [WIDTH-1:0] wire_d4_8;
	wire [WIDTH-1:0] wire_d4_9;
	wire [WIDTH-1:0] wire_d4_10;
	wire [WIDTH-1:0] wire_d4_11;
	wire [WIDTH-1:0] wire_d4_12;
	wire [WIDTH-1:0] wire_d4_13;
	wire [WIDTH-1:0] wire_d4_14;
	wire [WIDTH-1:0] wire_d4_15;
	wire [WIDTH-1:0] wire_d4_16;
	wire [WIDTH-1:0] wire_d4_17;
	wire [WIDTH-1:0] wire_d4_18;
	wire [WIDTH-1:0] wire_d4_19;
	wire [WIDTH-1:0] wire_d5_0;
	wire [WIDTH-1:0] wire_d5_1;
	wire [WIDTH-1:0] wire_d5_2;
	wire [WIDTH-1:0] wire_d5_3;
	wire [WIDTH-1:0] wire_d5_4;
	wire [WIDTH-1:0] wire_d5_5;
	wire [WIDTH-1:0] wire_d5_6;
	wire [WIDTH-1:0] wire_d5_7;
	wire [WIDTH-1:0] wire_d5_8;
	wire [WIDTH-1:0] wire_d5_9;
	wire [WIDTH-1:0] wire_d5_10;
	wire [WIDTH-1:0] wire_d5_11;
	wire [WIDTH-1:0] wire_d5_12;
	wire [WIDTH-1:0] wire_d5_13;
	wire [WIDTH-1:0] wire_d5_14;
	wire [WIDTH-1:0] wire_d5_15;
	wire [WIDTH-1:0] wire_d5_16;
	wire [WIDTH-1:0] wire_d5_17;
	wire [WIDTH-1:0] wire_d5_18;
	wire [WIDTH-1:0] wire_d5_19;
	wire [WIDTH-1:0] wire_d6_0;
	wire [WIDTH-1:0] wire_d6_1;
	wire [WIDTH-1:0] wire_d6_2;
	wire [WIDTH-1:0] wire_d6_3;
	wire [WIDTH-1:0] wire_d6_4;
	wire [WIDTH-1:0] wire_d6_5;
	wire [WIDTH-1:0] wire_d6_6;
	wire [WIDTH-1:0] wire_d6_7;
	wire [WIDTH-1:0] wire_d6_8;
	wire [WIDTH-1:0] wire_d6_9;
	wire [WIDTH-1:0] wire_d6_10;
	wire [WIDTH-1:0] wire_d6_11;
	wire [WIDTH-1:0] wire_d6_12;
	wire [WIDTH-1:0] wire_d6_13;
	wire [WIDTH-1:0] wire_d6_14;
	wire [WIDTH-1:0] wire_d6_15;
	wire [WIDTH-1:0] wire_d6_16;
	wire [WIDTH-1:0] wire_d6_17;
	wire [WIDTH-1:0] wire_d6_18;
	wire [WIDTH-1:0] wire_d6_19;
	wire [WIDTH-1:0] wire_d7_0;
	wire [WIDTH-1:0] wire_d7_1;
	wire [WIDTH-1:0] wire_d7_2;
	wire [WIDTH-1:0] wire_d7_3;
	wire [WIDTH-1:0] wire_d7_4;
	wire [WIDTH-1:0] wire_d7_5;
	wire [WIDTH-1:0] wire_d7_6;
	wire [WIDTH-1:0] wire_d7_7;
	wire [WIDTH-1:0] wire_d7_8;
	wire [WIDTH-1:0] wire_d7_9;
	wire [WIDTH-1:0] wire_d7_10;
	wire [WIDTH-1:0] wire_d7_11;
	wire [WIDTH-1:0] wire_d7_12;
	wire [WIDTH-1:0] wire_d7_13;
	wire [WIDTH-1:0] wire_d7_14;
	wire [WIDTH-1:0] wire_d7_15;
	wire [WIDTH-1:0] wire_d7_16;
	wire [WIDTH-1:0] wire_d7_17;
	wire [WIDTH-1:0] wire_d7_18;
	wire [WIDTH-1:0] wire_d7_19;
	wire [WIDTH-1:0] wire_d8_0;
	wire [WIDTH-1:0] wire_d8_1;
	wire [WIDTH-1:0] wire_d8_2;
	wire [WIDTH-1:0] wire_d8_3;
	wire [WIDTH-1:0] wire_d8_4;
	wire [WIDTH-1:0] wire_d8_5;
	wire [WIDTH-1:0] wire_d8_6;
	wire [WIDTH-1:0] wire_d8_7;
	wire [WIDTH-1:0] wire_d8_8;
	wire [WIDTH-1:0] wire_d8_9;
	wire [WIDTH-1:0] wire_d8_10;
	wire [WIDTH-1:0] wire_d8_11;
	wire [WIDTH-1:0] wire_d8_12;
	wire [WIDTH-1:0] wire_d8_13;
	wire [WIDTH-1:0] wire_d8_14;
	wire [WIDTH-1:0] wire_d8_15;
	wire [WIDTH-1:0] wire_d8_16;
	wire [WIDTH-1:0] wire_d8_17;
	wire [WIDTH-1:0] wire_d8_18;
	wire [WIDTH-1:0] wire_d8_19;
	wire [WIDTH-1:0] wire_d9_0;
	wire [WIDTH-1:0] wire_d9_1;
	wire [WIDTH-1:0] wire_d9_2;
	wire [WIDTH-1:0] wire_d9_3;
	wire [WIDTH-1:0] wire_d9_4;
	wire [WIDTH-1:0] wire_d9_5;
	wire [WIDTH-1:0] wire_d9_6;
	wire [WIDTH-1:0] wire_d9_7;
	wire [WIDTH-1:0] wire_d9_8;
	wire [WIDTH-1:0] wire_d9_9;
	wire [WIDTH-1:0] wire_d9_10;
	wire [WIDTH-1:0] wire_d9_11;
	wire [WIDTH-1:0] wire_d9_12;
	wire [WIDTH-1:0] wire_d9_13;
	wire [WIDTH-1:0] wire_d9_14;
	wire [WIDTH-1:0] wire_d9_15;
	wire [WIDTH-1:0] wire_d9_16;
	wire [WIDTH-1:0] wire_d9_17;
	wire [WIDTH-1:0] wire_d9_18;
	wire [WIDTH-1:0] wire_d9_19;

	large_mux #(.WIDTH(WIDTH)) large_mux_instance100(.data_in(d_in0),.data_out(wire_d0_0),.clk(clk),.rst(rst));            //channel 1
	register #(.WIDTH(WIDTH)) register_instance101(.data_in(wire_d0_0),.data_out(wire_d0_1),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance102(.data_in(wire_d0_1),.data_out(wire_d0_2),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance103(.data_in(wire_d0_2),.data_out(wire_d0_3),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance104(.data_in(wire_d0_3),.data_out(wire_d0_4),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance105(.data_in(wire_d0_4),.data_out(wire_d0_5),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance106(.data_in(wire_d0_5),.data_out(wire_d0_6),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance107(.data_in(wire_d0_6),.data_out(wire_d0_7),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance108(.data_in(wire_d0_7),.data_out(wire_d0_8),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance109(.data_in(wire_d0_8),.data_out(wire_d0_9),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance1010(.data_in(wire_d0_9),.data_out(wire_d0_10),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1011(.data_in(wire_d0_10),.data_out(wire_d0_11),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance1012(.data_in(wire_d0_11),.data_out(wire_d0_12),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1013(.data_in(wire_d0_12),.data_out(wire_d0_13),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1014(.data_in(wire_d0_13),.data_out(wire_d0_14),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance1015(.data_in(wire_d0_14),.data_out(wire_d0_15),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance1016(.data_in(wire_d0_15),.data_out(wire_d0_16),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance1017(.data_in(wire_d0_16),.data_out(wire_d0_17),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance1018(.data_in(wire_d0_17),.data_out(wire_d0_18),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance1019(.data_in(wire_d0_18),.data_out(wire_d0_19),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance1020(.data_in(wire_d0_19),.data_out(d_out0),.clk(clk),.rst(rst));

	large_mux #(.WIDTH(WIDTH)) large_mux_instance210(.data_in(d_in1),.data_out(wire_d1_0),.clk(clk),.rst(rst));            //channel 2
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance211(.data_in(wire_d1_0),.data_out(wire_d1_1),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance212(.data_in(wire_d1_1),.data_out(wire_d1_2),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance213(.data_in(wire_d1_2),.data_out(wire_d1_3),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance214(.data_in(wire_d1_3),.data_out(wire_d1_4),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance215(.data_in(wire_d1_4),.data_out(wire_d1_5),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance216(.data_in(wire_d1_5),.data_out(wire_d1_6),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance217(.data_in(wire_d1_6),.data_out(wire_d1_7),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance218(.data_in(wire_d1_7),.data_out(wire_d1_8),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance219(.data_in(wire_d1_8),.data_out(wire_d1_9),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance2110(.data_in(wire_d1_9),.data_out(wire_d1_10),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance2111(.data_in(wire_d1_10),.data_out(wire_d1_11),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance2112(.data_in(wire_d1_11),.data_out(wire_d1_12),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance2113(.data_in(wire_d1_12),.data_out(wire_d1_13),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance2114(.data_in(wire_d1_13),.data_out(wire_d1_14),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance2115(.data_in(wire_d1_14),.data_out(wire_d1_15),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance2116(.data_in(wire_d1_15),.data_out(wire_d1_16),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance2117(.data_in(wire_d1_16),.data_out(wire_d1_17),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance2118(.data_in(wire_d1_17),.data_out(wire_d1_18),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance2119(.data_in(wire_d1_18),.data_out(wire_d1_19),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance2120(.data_in(wire_d1_19),.data_out(d_out1),.clk(clk),.rst(rst));

	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance320(.data_in(d_in2),.data_out(wire_d2_0),.clk(clk),.rst(rst));            //channel 3
	register #(.WIDTH(WIDTH)) register_instance321(.data_in(wire_d2_0),.data_out(wire_d2_1),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance322(.data_in(wire_d2_1),.data_out(wire_d2_2),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance323(.data_in(wire_d2_2),.data_out(wire_d2_3),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance324(.data_in(wire_d2_3),.data_out(wire_d2_4),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance325(.data_in(wire_d2_4),.data_out(wire_d2_5),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance326(.data_in(wire_d2_5),.data_out(wire_d2_6),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance327(.data_in(wire_d2_6),.data_out(wire_d2_7),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance328(.data_in(wire_d2_7),.data_out(wire_d2_8),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance329(.data_in(wire_d2_8),.data_out(wire_d2_9),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance3210(.data_in(wire_d2_9),.data_out(wire_d2_10),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance3211(.data_in(wire_d2_10),.data_out(wire_d2_11),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance3212(.data_in(wire_d2_11),.data_out(wire_d2_12),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance3213(.data_in(wire_d2_12),.data_out(wire_d2_13),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance3214(.data_in(wire_d2_13),.data_out(wire_d2_14),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance3215(.data_in(wire_d2_14),.data_out(wire_d2_15),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance3216(.data_in(wire_d2_15),.data_out(wire_d2_16),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance3217(.data_in(wire_d2_16),.data_out(wire_d2_17),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance3218(.data_in(wire_d2_17),.data_out(wire_d2_18),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance3219(.data_in(wire_d2_18),.data_out(wire_d2_19),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance3220(.data_in(wire_d2_19),.data_out(d_out2),.clk(clk),.rst(rst));

	large_mux #(.WIDTH(WIDTH)) large_mux_instance430(.data_in(d_in3),.data_out(wire_d3_0),.clk(clk),.rst(rst));            //channel 4
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance431(.data_in(wire_d3_0),.data_out(wire_d3_1),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance432(.data_in(wire_d3_1),.data_out(wire_d3_2),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance433(.data_in(wire_d3_2),.data_out(wire_d3_3),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance434(.data_in(wire_d3_3),.data_out(wire_d3_4),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance435(.data_in(wire_d3_4),.data_out(wire_d3_5),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance436(.data_in(wire_d3_5),.data_out(wire_d3_6),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance437(.data_in(wire_d3_6),.data_out(wire_d3_7),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance438(.data_in(wire_d3_7),.data_out(wire_d3_8),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance439(.data_in(wire_d3_8),.data_out(wire_d3_9),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance4310(.data_in(wire_d3_9),.data_out(wire_d3_10),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance4311(.data_in(wire_d3_10),.data_out(wire_d3_11),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance4312(.data_in(wire_d3_11),.data_out(wire_d3_12),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance4313(.data_in(wire_d3_12),.data_out(wire_d3_13),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance4314(.data_in(wire_d3_13),.data_out(wire_d3_14),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance4315(.data_in(wire_d3_14),.data_out(wire_d3_15),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance4316(.data_in(wire_d3_15),.data_out(wire_d3_16),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance4317(.data_in(wire_d3_16),.data_out(wire_d3_17),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance4318(.data_in(wire_d3_17),.data_out(wire_d3_18),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance4319(.data_in(wire_d3_18),.data_out(wire_d3_19),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance4320(.data_in(wire_d3_19),.data_out(d_out3),.clk(clk),.rst(rst));

	large_mux #(.WIDTH(WIDTH)) large_mux_instance540(.data_in(d_in4),.data_out(wire_d4_0),.clk(clk),.rst(rst));            //channel 5
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance541(.data_in(wire_d4_0),.data_out(wire_d4_1),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance542(.data_in(wire_d4_1),.data_out(wire_d4_2),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance543(.data_in(wire_d4_2),.data_out(wire_d4_3),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance544(.data_in(wire_d4_3),.data_out(wire_d4_4),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance545(.data_in(wire_d4_4),.data_out(wire_d4_5),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance546(.data_in(wire_d4_5),.data_out(wire_d4_6),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance547(.data_in(wire_d4_6),.data_out(wire_d4_7),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance548(.data_in(wire_d4_7),.data_out(wire_d4_8),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance549(.data_in(wire_d4_8),.data_out(wire_d4_9),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance5410(.data_in(wire_d4_9),.data_out(wire_d4_10),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance5411(.data_in(wire_d4_10),.data_out(wire_d4_11),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance5412(.data_in(wire_d4_11),.data_out(wire_d4_12),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance5413(.data_in(wire_d4_12),.data_out(wire_d4_13),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance5414(.data_in(wire_d4_13),.data_out(wire_d4_14),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance5415(.data_in(wire_d4_14),.data_out(wire_d4_15),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance5416(.data_in(wire_d4_15),.data_out(wire_d4_16),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance5417(.data_in(wire_d4_16),.data_out(wire_d4_17),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance5418(.data_in(wire_d4_17),.data_out(wire_d4_18),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance5419(.data_in(wire_d4_18),.data_out(wire_d4_19),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance5420(.data_in(wire_d4_19),.data_out(d_out4),.clk(clk),.rst(rst));

	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance650(.data_in(d_in5),.data_out(wire_d5_0),.clk(clk),.rst(rst));            //channel 6
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance651(.data_in(wire_d5_0),.data_out(wire_d5_1),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance652(.data_in(wire_d5_1),.data_out(wire_d5_2),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance653(.data_in(wire_d5_2),.data_out(wire_d5_3),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance654(.data_in(wire_d5_3),.data_out(wire_d5_4),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance655(.data_in(wire_d5_4),.data_out(wire_d5_5),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance656(.data_in(wire_d5_5),.data_out(wire_d5_6),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance657(.data_in(wire_d5_6),.data_out(wire_d5_7),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance658(.data_in(wire_d5_7),.data_out(wire_d5_8),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance659(.data_in(wire_d5_8),.data_out(wire_d5_9),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance6510(.data_in(wire_d5_9),.data_out(wire_d5_10),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance6511(.data_in(wire_d5_10),.data_out(wire_d5_11),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance6512(.data_in(wire_d5_11),.data_out(wire_d5_12),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance6513(.data_in(wire_d5_12),.data_out(wire_d5_13),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance6514(.data_in(wire_d5_13),.data_out(wire_d5_14),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance6515(.data_in(wire_d5_14),.data_out(wire_d5_15),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance6516(.data_in(wire_d5_15),.data_out(wire_d5_16),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance6517(.data_in(wire_d5_16),.data_out(wire_d5_17),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance6518(.data_in(wire_d5_17),.data_out(wire_d5_18),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance6519(.data_in(wire_d5_18),.data_out(wire_d5_19),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance6520(.data_in(wire_d5_19),.data_out(d_out5),.clk(clk),.rst(rst));

	large_mux #(.WIDTH(WIDTH)) large_mux_instance760(.data_in(d_in6),.data_out(wire_d6_0),.clk(clk),.rst(rst));            //channel 7
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance761(.data_in(wire_d6_0),.data_out(wire_d6_1),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance762(.data_in(wire_d6_1),.data_out(wire_d6_2),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance763(.data_in(wire_d6_2),.data_out(wire_d6_3),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance764(.data_in(wire_d6_3),.data_out(wire_d6_4),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance765(.data_in(wire_d6_4),.data_out(wire_d6_5),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance766(.data_in(wire_d6_5),.data_out(wire_d6_6),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance767(.data_in(wire_d6_6),.data_out(wire_d6_7),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance768(.data_in(wire_d6_7),.data_out(wire_d6_8),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance769(.data_in(wire_d6_8),.data_out(wire_d6_9),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance7610(.data_in(wire_d6_9),.data_out(wire_d6_10),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance7611(.data_in(wire_d6_10),.data_out(wire_d6_11),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance7612(.data_in(wire_d6_11),.data_out(wire_d6_12),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance7613(.data_in(wire_d6_12),.data_out(wire_d6_13),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance7614(.data_in(wire_d6_13),.data_out(wire_d6_14),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance7615(.data_in(wire_d6_14),.data_out(wire_d6_15),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance7616(.data_in(wire_d6_15),.data_out(wire_d6_16),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance7617(.data_in(wire_d6_16),.data_out(wire_d6_17),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance7618(.data_in(wire_d6_17),.data_out(wire_d6_18),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance7619(.data_in(wire_d6_18),.data_out(wire_d6_19),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance7620(.data_in(wire_d6_19),.data_out(d_out6),.clk(clk),.rst(rst));

	register #(.WIDTH(WIDTH)) register_instance870(.data_in(d_in7),.data_out(wire_d7_0),.clk(clk),.rst(rst));            //channel 8
	large_mux #(.WIDTH(WIDTH)) large_mux_instance871(.data_in(wire_d7_0),.data_out(wire_d7_1),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance872(.data_in(wire_d7_1),.data_out(wire_d7_2),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance873(.data_in(wire_d7_2),.data_out(wire_d7_3),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance874(.data_in(wire_d7_3),.data_out(wire_d7_4),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance875(.data_in(wire_d7_4),.data_out(wire_d7_5),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance876(.data_in(wire_d7_5),.data_out(wire_d7_6),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance877(.data_in(wire_d7_6),.data_out(wire_d7_7),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance878(.data_in(wire_d7_7),.data_out(wire_d7_8),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance879(.data_in(wire_d7_8),.data_out(wire_d7_9),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance8710(.data_in(wire_d7_9),.data_out(wire_d7_10),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance8711(.data_in(wire_d7_10),.data_out(wire_d7_11),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance8712(.data_in(wire_d7_11),.data_out(wire_d7_12),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance8713(.data_in(wire_d7_12),.data_out(wire_d7_13),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance8714(.data_in(wire_d7_13),.data_out(wire_d7_14),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance8715(.data_in(wire_d7_14),.data_out(wire_d7_15),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance8716(.data_in(wire_d7_15),.data_out(wire_d7_16),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance8717(.data_in(wire_d7_16),.data_out(wire_d7_17),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance8718(.data_in(wire_d7_17),.data_out(wire_d7_18),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance8719(.data_in(wire_d7_18),.data_out(wire_d7_19),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance8720(.data_in(wire_d7_19),.data_out(d_out7),.clk(clk),.rst(rst));

	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance980(.data_in(d_in8),.data_out(wire_d8_0),.clk(clk),.rst(rst));            //channel 9
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance981(.data_in(wire_d8_0),.data_out(wire_d8_1),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance982(.data_in(wire_d8_1),.data_out(wire_d8_2),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance983(.data_in(wire_d8_2),.data_out(wire_d8_3),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance984(.data_in(wire_d8_3),.data_out(wire_d8_4),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance985(.data_in(wire_d8_4),.data_out(wire_d8_5),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance986(.data_in(wire_d8_5),.data_out(wire_d8_6),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance987(.data_in(wire_d8_6),.data_out(wire_d8_7),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance988(.data_in(wire_d8_7),.data_out(wire_d8_8),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance989(.data_in(wire_d8_8),.data_out(wire_d8_9),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance9810(.data_in(wire_d8_9),.data_out(wire_d8_10),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance9811(.data_in(wire_d8_10),.data_out(wire_d8_11),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance9812(.data_in(wire_d8_11),.data_out(wire_d8_12),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance9813(.data_in(wire_d8_12),.data_out(wire_d8_13),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance9814(.data_in(wire_d8_13),.data_out(wire_d8_14),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance9815(.data_in(wire_d8_14),.data_out(wire_d8_15),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance9816(.data_in(wire_d8_15),.data_out(wire_d8_16),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance9817(.data_in(wire_d8_16),.data_out(wire_d8_17),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance9818(.data_in(wire_d8_17),.data_out(wire_d8_18),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance9819(.data_in(wire_d8_18),.data_out(wire_d8_19),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance9820(.data_in(wire_d8_19),.data_out(d_out8),.clk(clk),.rst(rst));

	register #(.WIDTH(WIDTH)) register_instance10090(.data_in(d_in9),.data_out(wire_d9_0),.clk(clk),.rst(rst));            //channel 10
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance10091(.data_in(wire_d9_0),.data_out(wire_d9_1),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance10092(.data_in(wire_d9_1),.data_out(wire_d9_2),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance10093(.data_in(wire_d9_2),.data_out(wire_d9_3),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance10094(.data_in(wire_d9_3),.data_out(wire_d9_4),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance10095(.data_in(wire_d9_4),.data_out(wire_d9_5),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance10096(.data_in(wire_d9_5),.data_out(wire_d9_6),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance10097(.data_in(wire_d9_6),.data_out(wire_d9_7),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance10098(.data_in(wire_d9_7),.data_out(wire_d9_8),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance10099(.data_in(wire_d9_8),.data_out(wire_d9_9),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance100910(.data_in(wire_d9_9),.data_out(wire_d9_10),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance100911(.data_in(wire_d9_10),.data_out(wire_d9_11),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance100912(.data_in(wire_d9_11),.data_out(wire_d9_12),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance100913(.data_in(wire_d9_12),.data_out(wire_d9_13),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance100914(.data_in(wire_d9_13),.data_out(wire_d9_14),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance100915(.data_in(wire_d9_14),.data_out(wire_d9_15),.clk(clk),.rst(rst));
	memory_cntrl #(.WIDTH(WIDTH)) memory_cntrl_instance100916(.data_in(wire_d9_15),.data_out(wire_d9_16),.clk(clk),.rst(rst));
	full_adder_top #(.WIDTH(WIDTH)) full_adder_instance100917(.data_in(wire_d9_16),.data_out(wire_d9_17),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance100918(.data_in(wire_d9_17),.data_out(wire_d9_18),.clk(clk),.rst(rst));
	register #(.WIDTH(WIDTH)) register_instance100919(.data_in(wire_d9_18),.data_out(wire_d9_19),.clk(clk),.rst(rst));
	large_mux #(.WIDTH(WIDTH)) large_mux_instance100920(.data_in(wire_d9_19),.data_out(d_out9),.clk(clk),.rst(rst));


endmodule