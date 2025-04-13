module parity_generator(
  input x,
  input y,
  input z,
  output parity
);
//both work
//assign parity = (~x & ~y & z) | (~x & y & ~z) | (x & ~y & ~z) | (x & y & z);
assign parity = x ^ y ^ z;
endmodule


