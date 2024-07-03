module Nor(input A, B, output NorG);
    wire x;
    Or instanceOr( .A(A), .B(B), .OrG(x));
    Not instanceNor (.X(x), .nX(NorG));
    endmodule
