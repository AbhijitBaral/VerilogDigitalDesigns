module comp2bit(input [1:0]A,B, output AgB, AeB, AlB);
    wire [2:0]a,c;
    wire [3:0] b;
    assign a[0]= A[0]& (~B[1]) & (~B[0]);
    assign a[1]= A[1] & (~B[1]);
    assign a[2]= A[1] & (~B[0]) & A[0];
    
    assign b[0]= (~A[0]) & (~A[1]) & (~B[0]) & (~B[1]);
    assign b[1]= (~A[1]) & A[0] & (~B[1]) & B[0];
    assign b[2]= A[1] & (~B[0]) & (~A[0]) & B[1];
    assign b[3]= A[1] & B[0] & A[0] & B[1];
    
    assign c[0]= (~A[0]) &(~A[1]) & B[0];
    assign c[1]= (~A[1]) & B[1];
    assign c[2]= B[0] & (~A[0]) & B[1];

    assign AgB= a[0] | a[1] | a[2];
    assign AeB= b[0] | b[1] | b[2] | b[3];
    assign AlB= c[0] | c[1] | c[2];
    endmodule
