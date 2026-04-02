module inc_dec#(parameter n=8)(
    input [n-1:0]in,
    input control,
    output reg[n-1:0]out
);
    always @(*)begin
    
        if(control)
            out=in+1;
        else
            out=in-1;
        end
endmodule
