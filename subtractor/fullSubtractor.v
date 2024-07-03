module fullSub(input A, B, Bin ,output diff, borrow);
    wire a1;
    xor(a1, A, B);
    xor(diff, a1, Bin);

    xor(b1, B, Bin);
    and(c1, B, Bin);

    and(d1, b1, ~A);
    or(borrow, c1, d1);
    endmodule
    
