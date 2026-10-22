`timescale 1ns / 1ps
module DEMUX_SUB_TB;
reg I;
reg S2,S1,S0;
wire [7:0] Y;
wire difference ,borrow;
DEMUX_SUB uut(
.I(I),
.S0(S0),
.S1(S1),
.S2(S2),
.Y(Y),
.difference(difference),
.borrow(borrow)
);
integer i;
initial begin
I =1'b1;
for(i=0;i<8;i=i+1) begin
 {S2,S1,S0} = i;
 #10;
 end
 $finish;
 end
endmodule


   