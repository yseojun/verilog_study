module full_adder (
  input a, b, cin,
  output sum, cout
);

  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | ( (a ^ b) & cin );

endmodule

module two_bit_full_adder (
  input a_0, b_0, a_1, b_1,
  output s_0, s_1, cout
);

  wire c0, c1, c2;
  wire sum_0, sum_1; 
  
  full_adder fa0 (.a(a_0), .b(b_0), .cin(0), .sum(sum_0), .cout(c0));
  full_adder fa1 (.a(a_1), .b(b_1), .cin(c0), .sum(sum_1), .cout(c1));

  assign s_0 = sum_0;
  assign s_1 = sum_1;
  assign cout = c1;

endmodule
