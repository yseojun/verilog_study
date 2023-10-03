module Design_C (
	input clk,
	input rstn,

	input [3:0] in_a,
	input [3:0] in_b,
	input [7:0] in_c,

	output [3:0] out_a,
	output [7:0] out_b,
	output [7:0] out_c,
);

//Instantiation
Design_C_A u_C_A_1(clk, rstn, in_a, out_a);

Design_C_A u_C_A_2(
	clk, rstn, in_a, out_a
	
);

endmodule