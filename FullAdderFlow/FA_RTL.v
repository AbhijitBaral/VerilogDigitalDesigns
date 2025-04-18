// RTL description of Full Adder in verilog

module FA(A, B , Cin, Sum, Cout);
  input A, B, Cin;
  output Sum, Cout;

  assign Sum = A^B^Cin;
  assign Cout = (A&B)|(Cin&(A^B));
  endmodule
