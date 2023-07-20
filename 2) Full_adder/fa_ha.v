`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:36 05/16/2023 
// Design Name: 
// Module Name:    fa_ha 
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
module fa_ha(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	
	wire s1,c1,c2;
	ha_df a1(a,b,s1,c1);
	ha_df a2(s1,c,sum,c2);
	or a3(carry,c1,c2);
	

endmodule
