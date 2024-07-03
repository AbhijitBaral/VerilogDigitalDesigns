module tbFullSub;

reg A,B,Bin;
wire diff, borrow;

fullSub instanc(.A(A), .B(B), .Bin(Bin), .diff(diff), .borrow(borrow));

initial begin
    A=0; B=0; Bin=0; #10;
    A=0; B=0; Bin=1; #10;
    A=0; B=1; Bin=0; #10;
    A=1; B=0; Bin=0; #10;
    A=1; B=1; Bin=0; #10;
    A=1; B=0; Bin=1; #10;
    A=0; B=1; Bin=1; #10;
    A=1; B=1; Bin=1; #10;
    
    $finish;
end

initial begin
    $dumpfile("tbFullSub");
    $dumpvars(0,tbFullSub);
end

endmodule


