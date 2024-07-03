module tbGates;

//Signals
    reg A, B;
    wire AandB, AorB, notA, AnorB, AnandB, AexorB;

    Not instNOT(.X(A),.nX(notA));
    And instAND(.A(A),.B(B),.AndG(AandB));
    Or instOR(.A(A), .B(B), .OrG(AorB));
    Nor instNor(.A(A), .B(B), .NorG(AnorB));
    Nand instNAND(.A(A), .B(B), .NandG(AnandB));
    Exor instEXOR(.A(A), .B(B), .ExORG(AexorB));

    initial begin
        A=0; B=0;
        #10;

        A=0; B=0;   #10;
        A=1; B=0;   #10;
        A=0; B=1;   #10;
        A=1; B=1;   #10;

        $finish;
    end

    initial begin
        $dumpfile("tbGates.vcd");
        $dumpvars(0,tbGates);
    end

    endmodule


