module Nand( input A, B, output NandG);
    wire x;
    And instanceAnd(.A(A), .B(B), .AndG(x));
    Not instanceNot(.X(x), .nX(NandG));
    endmodule
