module serialToParallel_tb();
  //inputs
  reg clk;
  reg d;
  
  //outputs
  wire [3:0] q;
  
  serialToParallel uut (.clk(clk),.d(d),.out(q));
  
  initial
  begin
    #10
    clk = 0;
  	d=1;
    #1
  	$display("output= %b",q);
    clk = 1;
  	d=0;
    #1
  	$display("output= %b",q);
    #10;
    
    clk = 0;
  	d=0;
  	#10;
    clk = 1;
  	d=1;
    #1
    $display("output= %b",q);
  end
  	//always #5 clk=~clk;
endmodule
