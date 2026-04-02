module sub #(parameter n=3)(
    input [n-1:0]A,
    input [n-1:0]B,
    output reg[n-1:0]sum,
    output reg cout
    );
    reg [n:0] carry;
    reg [n-1:0]neg_B;
    
    integer i;
    
    always@(*)begin
        carry[0]=1; 
        neg_B=~B;
        for (i=0;i<n;i=i+1) begin
            sum[i]=A[i]^neg_B[i]^carry[i];
            carry[i+1]=(A[i]&neg_B[i])|(A[i]&carry[i])|(neg_B[i]&carry[i]);
        end
    
     cout = carry[n];
    end
endmodule
