module two_bit_tb;

	reg a_0, b_0, a_1, b_1;
	wire s_0, s_1, cout;

	two_bit_full_adder uut (
		.a_0(a_0),
		.b_0(b_0),
		.a_1(a_1),
		.b_1(b_1),
		.s_0(s_0),
		.s_1(s_1),
		.cout(cout)
	);

	integer i, j, k, l;
  
	initial begin
		for (i = 0; i <= 1; i = i + 1) begin
			for (j = 0; j <= 1; j = j + 1) begin
				for (k = 0; k <= 1; k = k + 1) begin
					for (l = 0; l <= 1; l = l + 1) begin
					a_0 = i; b_0 = j; a_1 = k; b_1 = l;
					#10;
					end
				end
			end
		end
		$finish;
	end

	initial begin
		$dumpfile("two_bit_full_adder.vcd");
		$dumpvars(0, testbench);
	end

endmodule
