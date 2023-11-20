
module hamming_encoder(
    input [3:0] data_in,
    output [7:1] ham_out
    );
        
  xor(ham_out[1],data_in[0],data_in[1],data_in[3]);
  xor(ham_out[2],data_in[0],data_in[2],data_in[3]);
  assign ham_out[3] = data_in[0];
  xor(ham_out[4],data_in[1],data_in[2],data_in[3]);
  assign ham_out[5] = data_in[1];
  assign ham_out[6] = data_in[2];
  assign ham_out[7] = data_in[3];
endmodule