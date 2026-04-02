module BCD_to_Grey(
    input [3:0]A,
    output [3:0]Grey
);
    assign Grey[0]=A[1]^A[0];
    assign Grey[1]=A[2]^A[1];
    assign Grey[2]=A[3]^A[2];
    assign Grey[3]=A[3];
    
endmodule
