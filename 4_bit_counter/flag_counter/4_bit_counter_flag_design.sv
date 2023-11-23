module counter(
	input clk,rstn,
  input reg [3:0] cntStart,
	output reg [3:0] cnt
);
	always @(posedge clk, negedge rstn) begin
		if (!rstn)
			begin
				if (cntStart == 0) cnt <= 0;
				else cnt <= cntStart;
			end
		else cnt <= cnt + 1;
	end
endmodule