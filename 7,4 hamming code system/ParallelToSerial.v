
module parallel_to_serial
(
	input clk,

	input[3:0] data_in,
	output reg serial_out
    );
	reg[3:0] counter=0;
	reg[3:0] data;
	
	always @(posedge clk)
	begin
	counter<=counter+1;
		
		if (counter ==7)begin
		data<=data_in;
		
			end
		else if (counter > 7 )begin
		
			data<={1'b0,data[3:1]};
			
			serial_out<=data[0];
			end
		
	end
endmodule