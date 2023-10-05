module tb_logic_gates();
  
  reg in_a;
  reg in_b;
  wire out;
  
  xor_gate u_xor_gate(
    .in_a(in_a),
    .in_b(in_b),
    .out(out)
  );
  
  initial begin
    #0 in_a = 1'b0; in_b = 1'b0;
    #10 in_a = 1'b1; in_b = 1'b0;
    #10 in_a = 1'b0; in_b = 1'b1;
    #10 in_a = 1'b1; in_b = 1'b1;
  end
  
  initial begin
    #100 $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, tb_logic_gates);
  end
  
endmodule