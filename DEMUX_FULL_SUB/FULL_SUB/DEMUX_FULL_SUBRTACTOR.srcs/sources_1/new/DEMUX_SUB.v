`timescale 1ns / 1ps
module DEMUX_SUB(
input wire I,
input wire S2,S1,S0,
output reg [7:0] Y,
output reg difference, borrow
);
integer i;
always @(*) begin 
Y = 8'b00000000;
difference = 1'b0;
borrow = 1'b0;
 for(i=0; i< 8;i=i+1) begin 
      if({S2,S1,S0} == i ) begin 
         Y[i] = I;
        end
       if(i == 1 || i == 2 || i == 4 || i == 7) begin
          difference = difference | Y [i] ;
        end
       if(i == 1 || i == 2 || i == 3 || i == 7) begin
           borrow = borrow | Y[i] ;
        end
   end
end
endmodule


  