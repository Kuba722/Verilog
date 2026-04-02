module incrementer#(parameter N=2)(
    input clk,
    input rst,
    input up,
    output reg [N:0] y
);

reg [26:0] counter = 0;

always@(posedge clk)begin
        if (counter == 100_000_000 - 1) begin
            counter <= 0;           
        end else begin
            
    if(rst)
        y<=0;
    else if (up)
        y=y+1;
    else 
        y=y-1;   
    counter <= counter + 1;
    end     
end
endmodule
