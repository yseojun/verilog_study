module tb_logic_gates();

  reg in_a;
  reg in_b;
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_logic_gates);
  end
  
  // XOR Gate
  wire out_xor;
  xor_gate u_xor_gate(
    .in_a(in_a),
    .in_b(in_b),
    .out(out_xor)
  );

  // XNOR Gate
  wire out_xnor;
  xnor_gate u_xnor_gate(
    .in_a(in_a),
    .in_b(in_b),
    .out(out_xnor)
  );

  // OR Gate
  wire out_or;
  or_gate u_or_gate(
    .in_a(in_a),
    .in_b(in_b),
    .out(out_or)
  );

  // NOT Gate
  wire out_not;
  not_gate u_not_gate(
    .in(in_a),
    .out(out_not)
  );

  // NOR Gate
  wire out_nor;
  nor_gate u_nor_gate(
    .in_a(in_a),
    .in_b(in_b),
    .out(out_nor)
  );

  // NAND Gate
  wire out_nand;
  nand_gate u_nand_gate(
    .in_a(in_a),
    .in_b(in_b),
    .out(out_nand)
  );

  // AND Gate
  wire out_and;
  and_gate u_and_gate(
    .in_a(in_a),
    .in_b(in_b),
    .out(out_and)
  );

  initial begin
    #0 in_a = 1'b0; in_b = 1'b0;
    #10 in_a = 1'b1; in_b = 1'b0;
    #10 in_a = 1'b0; in_b = 1'b1;
    #10 in_a = 1'b1; in_b = 1'b1;
    #10 in_a = 1'b0; in_b = 1'b0;
    #10 in_a = 1'b1; in_b = 1'b0;
    #10 in_a = 1'b0; in_b = 1'b1;
    #10 in_a = 1'b1; in_b = 1'b1;
  end

  initial begin
    #100 $finish;
  end

endmodule
