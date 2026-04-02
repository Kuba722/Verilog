module A_seg(
   input [3:0]in,
   output out
);
   assign out=(in[2]~^in[0])|in[3]|in[1];
endmodule
