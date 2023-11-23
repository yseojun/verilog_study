module adder_behavior(
	input [1:0] a,b,
	output reg [1:0] sum,
	output reg carry_out
);
	always @* begin //while loop 와는 다르다
		{carry_out, sum} = a + b;
	end
endmodule