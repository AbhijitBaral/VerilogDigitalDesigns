module halfSub(input A, B, output dif, borr);
    assign diff=A ^ B;
    assign borr= B & (~A);
    endmodule
