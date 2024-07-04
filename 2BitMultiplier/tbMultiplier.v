module tbMultiplier;

//Signals
    reg [1:0]A, B;
    wire [3:0] product;

//Module instantiation
    multiplier instanceM (.A(A), .B(B), .product(product));
    
    initial begin
        A[1]=0; A[0]=0; B[1]= 0; B[0]= 0; #10 
        A[1]=0; A[0]=0; B[1]= 0; B[0]= 1; #10 
        A[1]=0; A[0]=0; B[1]= 1; B[0]= 0; #10 
        A[1]=0; A[0]=0; B[1]= 1; B[0]= 1; #10 
        A[1]=0; A[0]=1; B[1]= 0; B[0]= 0; #10 
        A[1]=0; A[0]=1; B[1]= 0; B[0]= 1; #10 
        A[1]=0; A[0]=1; B[1]= 1; B[0]= 0; #10 
        A[1]=0; A[0]=1; B[1]= 1; B[0]= 1; #10 
        A[1]=1; A[0]=0; B[1]= 0; B[0]= 0; #10 
        A[1]=1; A[0]=0; B[1]= 0; B[0]= 1; #10 
        A[1]=1; A[0]=0; B[1]= 1; B[0]= 0; #10 
        A[1]=1; A[0]=0; B[1]= 1; B[0]= 1; #10 
        A[1]=1; A[0]=1; B[1]= 0; B[0]= 0; #10 
        A[1]=1; A[0]=1; B[1]= 0; B[0]= 1; #10 
        A[1]=1; A[0]=1; B[1]= 1; B[0]= 0; #10 
        A[1]=1; A[0]=1; B[1]= 1; B[0]= 1; #10 

        $finish;
    end

    initial begin
        $dumpfile ("tbMultiplier");
        $dumpvars (0,tbMultiplier);
    end
    endmodule














