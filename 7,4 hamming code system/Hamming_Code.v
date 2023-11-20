
module encdecoder(input serial_in,input clk1,input clk2,output serial_outt,output med,output [6:0] regdec,output[3:0] decoout,output re2out);

wire [3:0] q_4 ;
wire [6:0] ham_out;
wire ser_7;
wire [6:0] q_7;
wire serial_out; 
wire [3:0] dec_out;

serialToParallel STP_en (.clk(clk1),.d(serial_in),.out(q_4));

hamming_encoder en (.data_in(q_4),.ham_out(ham_out));

parallel_to_serial_7 PTS_en (.clk(clk2),.data_in(ham_out),.serial_out(ser_7));

serialToParallel_7 STP_dec (.clk(clk2),.d(ser_7),.out(q_7));
assign regdec=q_7;
hamm_decoder dec (.in(q_7),.out(dec_out),.error_index(error_index));
assign decoout=dec_out;
parallel_to_serial PTS_dec (.clk(clk1),.data_in(dec_out),.serial_out(serial_out));
assign re2out=serial_out;

assign med =ser_7;

assign serial_outt =serial_out;

endmodule
