module full_adder #(parameter n=3)(
    input [n-1:0]A,
    input [n-1:0]B,
    input cin,
    output [n-1:0]sum,
    output cout
    );
    wire [n:0] carry;
    assign carry[0]=cin;
    
    genvar i;
    generate
        for (i=0;i<n;i=i+1) begin
            assign sum[i]=A[i]^B[i]^carry[i];
            assign carry[i+1]=(A[i]&B[i])|(A[i]&carry[i])|(B[i]&carry[i]);
        end
    endgenerate
    
    assign cout = carry[n];
    
endmodule
