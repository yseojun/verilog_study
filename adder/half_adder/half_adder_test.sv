module half_adder_tb;

	reg a, b;
	wire s, c;

	half_adder uha(a, b, s, c);

	initial begin
		a=0; b=0;
		#10 a = 0; b = 1;
		#10 a = 1; b = 0;
		#10 a = 1; b = 1;
		#10 $finish;
	end

	initial begin
		$dumpfile("half_adder.vcd");
		$dumpvars(1, half_adder_tb);
	end

endmodule