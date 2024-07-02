module tbfullAdder;

// Signals
    reg i1, i2, Cin;
    wire Cout, sum;

//instance of fullAdder
    fullAdder fa(.i1(i1), .i2(i2), .Cin(Cin), .Cout(Cout), .sum(sum));


    initial begin
        i1=0; i2=0; Cin=0;
        #10;

        i1=0; i2=0; Cin=0;  #10;
        i1=1; i2=0; Cin=0;  #10;
        i1=0; i2=1; Cin=0;  #10;
        i1=0; i2=0; Cin=1;  #10;
        i1=1; i2=1; Cin=0;  #10;
        i1=1; i2=0; Cin=1;  #10;
        i1=0; i2=1; Cin=1;  #10;
        i1=1; i2=1; Cin=1;  #10;

        $finish;
    end

    initial begin
        $dumpfile ("tbFullAdder.vcd");
        $dumpvars (0,tbfullAdder);
    end
    endmodule

