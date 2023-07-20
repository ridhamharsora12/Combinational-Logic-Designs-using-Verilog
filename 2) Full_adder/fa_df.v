`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:33:17 05/16/2023 
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
module fa_df(a,b,c,sum,cout);
	input a,b,c;
	output sum,cout;
	
	assign sum = a^b^c;
	assign cout= (a&b |c&b |a&c);


endmodule
