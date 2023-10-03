// Code your testbench here
// or browse Examples

module hello_world;
  int test=0;
  
  initial begin // 코드 순차 실행
    #10 $display("time %t : hello world %d ", $time, test++); //#10 -> delay
    #10 $display("time %t : hello world %d ", $time, test++);
    	$display("time %t : hello world %d ", $time, test++);
  end
  
  initial begin
    $monitor("monitor : test %d", test);
  end
  
endmodule