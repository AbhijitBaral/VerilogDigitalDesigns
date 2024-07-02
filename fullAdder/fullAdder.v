module fullAdder(input i1, i2, Cin, output Cout, sum);
    wire S, c1, c2;
    
    halfAdder HA1(.A(i1), .B(i2), .sum(S), .carry(c1));
    halfAdder HA2(.A(S), .B(Cin), .sum(sum), .carry(c2));
    or orGate(Cout, c1, c2);
    endmodule

