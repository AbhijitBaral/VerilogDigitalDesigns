//Testbench for the RTL decsription of fulladder

module tbFA;

    //Signals 
    reg a,b,cin;
    wire Cout, sum;

    //instance of fullAdder
    FA instFA(.A(a), .B(b), .Cin(cin), .Cout(Cout), .Sum(sum));

    initial begin
        a=0; b=0; cin=0;
        #10;

        a=0; b=0; cin=0;  #10;
        a=1; b=0; cin=0;  #10;
        a=0; b=1; cin=0;  #10;
        a=0; b=0; cin=1;  #10;
        a=1; b=1; cin=0;  #10;
        a=1; b=0; cin=1;  #10;
        a=0; b=1; cin=1;  #10;
        a=1; b=1; cin=1;  #10;

        $finish;
    end

    initial begin
        $dumpfile ("tb_FA.vcd");
        $dumpvars(0,tbFA);
    end
    endmodule

