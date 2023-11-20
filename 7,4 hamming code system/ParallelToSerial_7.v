
module parallel_to_serial_7
(
	input clk, 
	input[6:0] data_in,
	output  serial_out
    );
	reg[6:0] counter;
	reg[6:0] data;
	
	always @(posedge clk)
	begin
	counter<=counter+1;
		if (counter ==7)begin
		data<=data_in;
		end
		else if (counter > 7 )begin
		
			data<={1'b0,data[6:1]};
		
			end
			
			end
			assign serial_out=data[0];
endmodule