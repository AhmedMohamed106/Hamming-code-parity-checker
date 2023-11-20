
module hamm_decoder_tb;
  reg[7:1] in;
  wire[3:0] out;
  wire[2:0] error_index;
  hamm_decoder uut(.in(in),.out(out),.error_index(error_index));
  initial
    begin
      #10
      in=7'b0100011;
      #10
      $display("out1= %b",out);
      $display("error= %b",error_index);
      #1
      in=7'b0000111;
      #10
      $display("out1= %b",out);
      $display("error= %b",error_index);
      #1
      in=7'b1001100; 
      #10
      $display("out1= %b",out);
      $display("error= %b",error_index);
      #1
      in=7'b1100110;
      #10
      $display("out1= %b",out);
      $display("error= %b",error_index);
    end
  
endmodule
