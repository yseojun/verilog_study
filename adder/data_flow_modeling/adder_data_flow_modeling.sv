module adder_dataflow(
  input[1:0] a,b,
  output[1:0] sum,
  output carry_out
);
  wire [2:0] sum_3bit;
  
  assign sum_3bit = a+b;
  
  assign sum=sum_3bit[1:0];
  assign carry_out = sum_3bit[2];
  
endmodule