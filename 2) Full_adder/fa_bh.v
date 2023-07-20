`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:51:38 05/16/2023 
// Design Name: 
// Module Name:    fa_bh 
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
module fa_bh(a,b,c,sum,carry);
	input a,b,c;
	output reg sum,carry;
	
	always@(*)
		begin
			sum<=a^b^c;
			carry<=(a&b | b&c | a&c);
		end

endmodule
