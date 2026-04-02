module bin_to_U2#(parameter N=3)(
    input wire[N:0] bin,
    output reg[N:0] u2
);
    always @(*) begin         
        u2 = (~bin) + 1;   
    end
endmodule
