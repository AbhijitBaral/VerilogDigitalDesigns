module functionB (input [3:0] in, output C);
    wire a1, a2, a3, b1;
    xor instanceXor(a1, in[3], in[2]);
    nand instanceNand (b1, in[3], in[1]);
    and instanceAnd (a2, b1, in[0]);
    nor instanceOr (a3, in[1], in[3]);

    or instanceOr1 (c, a1, a2, a3);
    endmodule
