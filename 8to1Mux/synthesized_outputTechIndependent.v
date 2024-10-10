/* Generated by Yosys 0.41+126 (git sha1 855ac285f, g++ 11.4.0-1ubuntu1~22.04 -fPIC -Os) */

module mux_8to1(in, sel, out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  input [7:0] in;
  wire [7:0] in;
  output out;
  wire out;
  input [2:0] sel;
  wire [2:0] sel;
  assign _00_ = sel[2] ? in[7] : in[3];
  assign _01_ = sel[2] ? in[6] : in[2];
  assign _02_ = sel[0] ? _00_ : _01_;
  assign _03_ = sel[2] ? in[5] : in[1];
  assign _04_ = sel[2] ? in[4] : in[0];
  assign _05_ = sel[0] ? _03_ : _04_;
  assign out = sel[1] ? _02_ : _05_;
endmodule