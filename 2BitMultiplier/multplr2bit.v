module multiplier( input [1:0]A, B, output [3:0]product);
    wire  a1, a2, b1, b2;
    and (product[0], A[0], B[0]);
    and (a1, B[0], A[1]);
    and (a2, B[1], A[0]);
    halfAdder instance1 (.A(a1), .B(a2), .carry(b1), .sum(product[1]));
    and (b2, B[1], A[1]);
    halfAdder instance2 (.A(b1), .B(b2), .sum(product[2]), .carry(product[3]));
    endmodule
