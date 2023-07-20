`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:44 05/16/2023 
// Design Name: 
// Module Name:    fa_str 
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
module fa_str(a,b,c,sum,cout);
	input a,b,c;
	output sum,cout;
	
	//reg sum,cout;
	wire x1,x2,x3;
	xor a1(sum,a,b,c);
	and a2(x1,a,b);
	and a3(x2,c,b);
	and a4(x3,a,c);
	or  a5(cout,x1,x2,x3);


endmodule
