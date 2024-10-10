//Testbench for 8_to_1 Multiplexer

module tb_mux8to1;
    //Testbench signals
    reg [7:0] in;
    reg [2:0] sel;
    wire out;


    //Instantiate the 8-to-1 multiplexer
    mux_8to1 uut(.in(in),.sel(sel),.out(out));

    //Dump file for GTKWave
    initial begin
        $dumpfile("mux8to1.vcd");
        $dumpvars(0, tb_mux8to1);
    end

    //Test procedures
    initial begin
        //Apply test vectors
        in=8'b10101010;
        sel=3'b000; #10;
        sel=3'b001; #10;
        sel=3'b010; #10;
        sel=3'b011; #10;
        sel=3'b100; #10;
        sel=3'b101; #10;
        sel=3'b110; #10;
        sel=3'b111; #10;

        //Finish simulation
        $finish;
    end
    endmodule
