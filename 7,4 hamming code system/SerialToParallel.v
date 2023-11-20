
module serialToParallel(clk,d,out);
    input clk;
    input d;
    output [3:0] out;
   reg[3:0] counter=0;
   reg [3:0]q=0;
always@(posedge clk)

begin
	counter<=counter+1;
	if (counter < 4)
	begin
	q[3]<=d;
	q[2]<=q[3];
	q[1]<=q[2];
	q[0]<=q[1];
	end
	else 
	begin
	q<=q;
	end
	
	
end
assign out =q;
endmodule

