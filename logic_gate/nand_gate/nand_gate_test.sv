module tb_logic_gates();
  
  reg in;
  wire out;
  
  not_gate u_not_gate(
    .in(in),
    .out(out)
  );
  
  initial begin
    #0 in = 1'b0;
    #10 in = 1'b1;
    #10 in = 1'b0;
    #10 in = 1'b0;
    #10 in = 1'b1;
  end
  
  initial begin
    #100 $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, tb_logic_gates);
  end
  
endmodule