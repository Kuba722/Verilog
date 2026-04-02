module one_hot_to_BCD(
    input [7:0]A,
    output [2:0]BCD
);  
    assign BCD[0]=A[1]|A[3]|A[5]|A[7];
    assign BCD[1]=A[2]|A[3]|A[6]|A[7];
    assign BCD[2]=A[4]|A[5]|A[6]|A[7];
endmodule
