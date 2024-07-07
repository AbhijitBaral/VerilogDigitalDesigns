module srNorLatch(input S,R, output Q,nQ);
    wire outNor1, outNor2;
    nor nor1(outNor1, outNor2, R);
    nor nor2(outNor2, outNor1, S);

    assign Q= outNor1;
    assign nQ=outNor2;
    endmodule
