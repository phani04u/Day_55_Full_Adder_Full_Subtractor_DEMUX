`timescale 1ns / 1ps
module full_adder_demux(
input wire I,
input wire S2,S1,S0,
output reg [7:0] Y,
output reg sum, carry
);
integer i;
always @(*) begin 
Y = 8'b00000000;
sum = 1'b0;
carry = 1'b0;
   for(i=0; i<8;i=i+1) begin 
     if({S2,S1,S0} == i ) begin 
         Y[i] = I;
        end
     if(i == 1 || i == 2 || i == 4 || i == 7) begin
          sum = sum | Y [i] ;
       end
     if(i == 3 || i == 5 || i == 6 || i == 7) begin
         carry = carry | Y[i] ;
        end
   end
end
endmodule




