module DEMUX(
    input in,
    input [1:0]select,
    output [3:0]Y
);
    assign Y[0]=~select[1]&~select[0]&in;
    assign Y[1]=~select[1]&select[0]&in;
    assign Y[2]=select[1]&~select[0]&in;
    assign Y[3]=select[1]&select[0]&in;
endmodule
