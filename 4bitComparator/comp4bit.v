module comp4bit(input [3:0] A, B, output AgB, AlB, AeB);
    wire AeB1, AeB2;
    comp2bit comp1(.A(A[3:2]), .B(B[3:2]), .AgB(AgB), .AlB(AlB), .AeB(AeB1));
    comp2bit comp2(.A(A[1:0]), .B(B[1:0]), .AeB(AeB2));

    assign AeB= AeB1 & AeB2;
    endmodule
