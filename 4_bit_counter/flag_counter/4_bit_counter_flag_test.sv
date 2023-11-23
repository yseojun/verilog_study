module tb;
	reg clk, rstn;
	reg [3:0] cntStart;
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
		#0 cntStart = 4'b0;
		#230
			cntStart = 4'b1;
			rstn = 0;
		#10
			rstn = 1;
		#200 $finish;
	end

	counter u_counter(clk, rstn, cntStart, cnt);

	initial begin
		$dumpfile("wave.vcd");
    	$dumpvars(1, tb);
	end

endmodule