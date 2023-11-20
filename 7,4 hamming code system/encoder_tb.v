
// Code your testbench here
// or browse Examples
module hamming_encoder_tb();

  reg [3:0] data_in;
  wire [7:1] ham_out;
    
  hamming_encoder UUT(.data_in(data_in),.ham_out(ham_out));
initial
  
    begin
        #10
        data_in = 4'b0110;
        #1
      $display("output= %b",ham_out);
        data_in = 4'b0001; 
        #1
      $display("output= %b",ham_out);
        data_in = 4'b1001;
        #1
      $display("output= %b",ham_out);
        #1
        data_in = 4'b0101;
      	#1
      $display("output= %b",ham_out);
        #1
        data_in = 4'b1101;
      	#1
      $display("output= %b",ham_out);
        #1
        data_in = 4'b0101;
      	#1
      $display("output= %b",ham_out);
      	#10
      $finish; 
       
    end
endmodule
