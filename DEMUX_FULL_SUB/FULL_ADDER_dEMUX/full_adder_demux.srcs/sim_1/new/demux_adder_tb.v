`timescale 1ns / 1ps
module demux_adder_tb;
reg I;
reg S2,S1,S0;
wire [7:0] Y;
wire sum , carry;
full_adder_demux uut (
.I(I),
.S0(S0),
.S1(S1),
.S2(S2),
.Y(Y),
.sum(sum),
.carry(carry)
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
