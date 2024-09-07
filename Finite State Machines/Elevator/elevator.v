module elevator(clk, motion_status, floor_status, out );
    input clk, floor_status;
    input wire[1:0] motion_status;
    parameter S0=0, S1=1, S2=2, S3=3, S4=4;
    
    output reg[2:0] out=S0;

    reg [2:0]present_state = S0;

    always @(posedge clk)begin
        case(present_state)
            S0: begin
                if(motion_status==2'b01)begin
                    out = 3'b001;
                    present_state = S1;
                end
                else if(motion_status==2'b10)begin
                    out = 3'b010;
                    present_state = S2;
                end
            end

            S1: begin
                if(floor_status == 1)begin
                    out = 3'b011;
                    present_state = S3;
                end
            end

            S2: begin
                if(floor_status == 1)begin
                    out = 3'b011;
                    present_state = S3;
                end
            end

            S3: begin
                #10;
                out = 3'b100;
                present_state = S4;
            end

            S4: begin
                #10;
                out = 3'b000;
                present_state = S0;
            end
        endcase
    end
    endmodule

