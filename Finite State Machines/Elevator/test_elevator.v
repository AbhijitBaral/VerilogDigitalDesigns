module test_elevator;
    reg clk=1'b0, floor_status;
    reg[1:0] motion_status;
    wire[2:0] out;

    elevator instanceElevator(.clk(clk), .floor_status(floor_status), .motion_status(motion_status), .out(out));
    /*
    initial
    begin
        $dumpfile("elevator.vcd");
        $dumpvars(0, test_elevator);
        clk = 1'b0;
    end */
    
    always #5 clk = ~clk;

    initial
    begin
        #12 motion_status=2'b01; #5 motion_status=2'b00;
        #15 floor_status=1; #5 floor_status=0;
        #10 motion_status=2'b10; #10 motion_status=2'b00; #10 floor_status=0;
        #10 $finish;
    end
    endmodule
