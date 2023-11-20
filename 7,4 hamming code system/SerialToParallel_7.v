
module serialToParallel_7 (clk,d,out);
    input clk;
    input d;
    output [6:0] out;
   reg[4:0] counter;
   reg [6:0]q;
always@(posedge clk)
begin
	counter<=counter+1;
	if (counter >7)begin
	q[6]<=d;
	q[5]<=q[6];
	q[4]<=q[5];
	q[3]<=q[4];
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

