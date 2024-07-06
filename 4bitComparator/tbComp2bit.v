module tbComp2bit;

//Signals
    reg [1:0]A, B;
    wire AgB, AeB, AlB;

//Instantiation
   comp2bit instance1(.A(A), .B(B), .AgB(AgB), .AeB(AeB), .AlB(AlB));
  

   initial begin
       A[1]=0; A[0]=0; B[1]=0; B[0]=0;  #10  
       A[1]=0; A[0]=1; B[1]=0; B[0]=0;  #10  
       A[1]=1; A[0]=0; B[1]=0; B[0]=0;  #10  
       A[1]=1; A[0]=1; B[1]=0; B[0]=0;  #10  
       A[1]=0; A[0]=0; B[1]=0; B[0]=1;  #10  
       A[1]=0; A[0]=1; B[1]=0; B[0]=1;  #10  
       A[1]=1; A[0]=0; B[1]=0; B[0]=1;  #10  
       A[1]=1; A[0]=1; B[1]=0; B[0]=1;  #10  
       A[1]=0; A[0]=0; B[1]=1; B[0]=0;  #10  
       A[1]=0; A[0]=1; B[1]=1; B[0]=0;  #10  
       A[1]=1; A[0]=0; B[1]=1; B[0]=0;  #10  
       A[1]=1; A[0]=1; B[1]=1; B[0]=0;  #10  
       A[1]=0; A[0]=0; B[1]=1; B[0]=1;  #10  
       A[1]=0; A[0]=1; B[1]=1; B[0]=1;  #10  
       A[1]=1; A[0]=0; B[1]=1; B[0]=1;  #10  
       A[1]=1; A[0]=1; B[1]=1; B[0]=1;  #10

       $finish;
   end

   initial begin
       $dumpfile("tbComp2bit.vcd");
       $dumpvars(0,tbComp2bit);
   end
   endmodule
