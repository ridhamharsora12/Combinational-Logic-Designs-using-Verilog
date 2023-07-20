`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:09 05/15/2023 
// Design Name: 
// Module Name:    ha_str 
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
module ha_str(a,b,sum,carry);
	input a,b;
	output sum,carry;
	
	xor a1(sum,a,b);
	and a2(carry,a,b);
	

endmodule
