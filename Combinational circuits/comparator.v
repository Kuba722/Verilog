module comp(
    input [2:0]A,
    input [2:0]C,
    output EQ,
    output GT,
    output LT
);
    wire eq2=~(A[2]^C[2]);
    wire eq1=~(A[1]^C[1]);
    wire eq0=~(A[0]^C[0]);
    
    wire lt2=~A[2]&C[2];
    wire lt1=~A[1]&C[1];
    wire lt0=~A[0]&C[0];
    
    wire gt2=A[2]&~C[2];
    wire gt1=A[1]&~C[1];
    wire gt0=A[0]&~C[0];
    
    assign EQ=eq2&eq1&eq0;
    assign GT=gt2|(gt1&eq2)|(gt0&eq1&eq2);
    assign LT=lt2|(lt1&eq2)|(lt0&eq1&eq2);
    
endmodule
