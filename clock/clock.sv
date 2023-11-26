module Clock (
  input wire clk,
  input wire rstn,
  output reg [5:0] minute,
  output reg [4:0] hour
);

  reg [5:0] count_minute;
  reg [4:0] count_hour;

  always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      count_minute <= 6'b0;
      count_hour <= 5'b0;
    end else begin
      if (count_minute == 59) begin
        count_minute <= 6'b0;
        if (count_hour == 23) begin
          count_hour <= 5'b0;
        end else begin
          count_hour <= count_hour + 1;
        end
      end else begin
        count_minute <= count_minute + 1;
      end
    end
  end

  always @* begin
    minute = count_minute;
    hour = count_hour;
  end

endmodule
	