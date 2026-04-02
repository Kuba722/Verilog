module adder #(parameter N=3)(
    input wire[N:0] bin1,
    input wire[N:0] bin2,
    output reg[N:0] y,
    output reg carry
);
integer i;
reg c;
always @(*) begin
        c = 0;  
        for (i = 0; i <= N; i = i+1) begin
            y[i] = bin1[i] ^ bin2[i] ^ c; 
            c    = (bin1[i] & bin2[i]) | (c & (bin1[i] ^ bin2[i])); 
        end
        carry = c;
    end
endmodule
