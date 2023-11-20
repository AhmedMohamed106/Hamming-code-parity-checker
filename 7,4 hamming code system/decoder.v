
module hamm_decoder(input [7:1]in,output reg [3:0]out, output reg[2:0] error_index);
                       
  
  reg [7:1]IN;


always @(*)
begin

  error_index[0] = in[1]^in[3]^in[5]^in[7];
  error_index[1] = in[2]^in[3]^in[6]^in[7];
  error_index[2] = in[4]^in[5]^in[6]^in[7];

if(error_index == 3'b000)begin

    out[0] = in[3];
    out[1] = in[5];
    out[2] = in[6];
    out[3] = in[7];
	end
else 
	begin
    IN = in;
    IN[error_index] = !IN[error_index];
    out[0] = IN[3];
    out[1] = IN[5];
    out[2] = IN[6];
    out[3] = IN[7];
	end
end
endmodule
