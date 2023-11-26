module Clock_tb;

  reg clk;
  reg rstn;
  wire [5:0] minute_out;
  wire [4:0] hour_out;

  Clock uut (
    .clk(clk),
    .rstn(rstn),
    .minute(minute_out),
    .hour(hour_out)
  );

  initial begin
    rstn = 1;
    #10 rstn = 0;
    #10 rstn = 1;
  end
  
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
  
  initial begin
    #1500 rstn = 0;
    #10 rstn = 1;
  end

  initial #40000 $finish;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, Clock_tb);
  end
  
endmodule
