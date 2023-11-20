

`timescale 1 ps/ 1 ps
module encdecoder_vlg_vec_tst();

reg clk1;
reg clk2;
reg serial_in;
// wires                                               
wire [3:0] decoout;
wire med;
wire re2out;
wire [6:0] regdec;
wire serial_outt;

                       
encdecoder i1 (

	.clk1(clk1),
	.clk2(clk2),
	.decoout(decoout),
	.med(med),
	.re2out(re2out),
	.regdec(regdec),
	.serial_in(serial_in),
	.serial_outt(serial_outt)
);
initial 
begin 
#20000000 $stop;
end 

// clk1
always
begin
	clk1 = 1'b0;
	clk1 = #500000 1'b1;
	#500000;
end 

// clk2
always
begin
	clk2 = 1'b0;
	clk2 = #250000 1'b1;
	#250000;
end 

// serial_in
initial
begin
	serial_in = 1'b1;
	serial_in = #1000000 1'b0;
	serial_in = #1000000 1'b1;
	serial_in = #2000000 1'b0;
end 
endmodule

