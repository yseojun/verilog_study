module tb;
	reg clk, rstn;
	wire [3:0] cnt;

	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin
		rstn = 1;
		#10 rstn = 0;
		#10 rstn = 1;
	end

	initial begin
		#400 $finish;
	end

	counter u_counter(clk, rstn, cnt);

	initial begin
		$dumpfile("wave.vcd");
    	$dumpvars(1, tb);
	end

endmodule