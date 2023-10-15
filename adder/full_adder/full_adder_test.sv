module full_adder_tb;

  reg a, b, cin;
  wire s, cout;

  full_adder ufa (
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
  );

  initial begin
    a = 0; b = 0; cin = 0;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 1; cin = 0;
    #10 $finish;
  end

  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(1, full_adder_tb);
  end

endmodule
