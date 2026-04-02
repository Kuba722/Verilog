module MUX(
   input[3:0]in,
   input [1:0]select,
   output Y
);
   assign Y=~select[1]&~select[0]&in[0]|
             ~select[1]&select[0]&in[1]|
             select[1]&~select[0]&in[2]|
              select[1]&select[0]&in[3];
    
endmodule
