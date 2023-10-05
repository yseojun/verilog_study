module xor_gate(
	input in_a,
	input in_b,
	output out
);

	assign out = in_a ^ in_b;

endmodule

module xnor_gate(
	input in_a,
	input in_b,
	output out
);

	assign out = ~(in_a ^ in_b);

endmodule

module or_gate(
	input in_a,
	input in_b,
	output out
);

	assign out = in_a || in_b;

endmodule

module not_gate(
	input in;
	output out;
);

	assign out = ~in;

endmodule

module nor_gate(
	input in_a,
	input in_b,
	output out
);

	assign out = ~(in_a || in_b);

endmodule

module nand_gate(
	input in_a,
	input in_b,
	output out
);

	assign out = ~(in_a && in_b);

endmodule

module and_gate(
	input in_a,
	input in_b,
	output out
);

	assign out = in_a && in_b;

endmodule