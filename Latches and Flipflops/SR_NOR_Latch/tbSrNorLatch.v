module tbSrNorLatch;

    reg S, R;
    wire Q, nQ;

    srNorLatch instnc(.S(S), .R(R), .Q(Q), .nQ(nQ));

    initial begin
        S=0; R=0; #10
        S=1; R=0; #10
        S=0; R=0; #10
        S=0; R=1; #10
        S=0; R=0; #10

        $finish;
    end

    initial begin
        $dumpfile("srNorLatch.vcd");
        $dumpvars(0,tbSrNorLatch);
    end
    endmodule


