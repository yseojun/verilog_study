// Code your testbench here
// or browse Examples

module dump_example;
  reg a,b;
  
  initial begin
    	a = 0; b = 0;
    #10 a = 1; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #10;
    $finish;
  end
  
  initial begin
    $dumpfile("dump_example.vcd");
    $dumpvars(1, dump_example);
    $display("test waveform dump");
  end
  
endmodule

// Code your testbench here
// or browse Examples

module tb_top();
  reg clk;
  reg rst_n;
  
  initial begin
    rst_n = 1'b1;
    #7 rst_n = 1'b0;
    #10 rst_n = 1'b1;
  end
  
  initial clk = 1'b1;
  always #5 clk = ~clk;
  
  initial begin
    #100 $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_top);
  end
  
endmodule