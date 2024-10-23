module PIPO1(dout, din, ld, clk);
    input [15:0]din;
    input ld, clk;
    output reg [15:0] dout;
    always @(*)
        dout=in1 + in2;
    endmodule

