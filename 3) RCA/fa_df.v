`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:32 05/16/2023 
// Design Name: 
// Module Name:    fa_df 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fa_df(a,b,c,sum,carry);
input a,b,c;
output sum,carry;

assign sum = a^b^c;
assign carry = (a&b | b&c | a&c);

endmodule
