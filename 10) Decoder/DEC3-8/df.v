`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:09 05/19/2023 
// Design Name: 
// Module Name:    df 
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
module df(en,a,b,c,i0,i1,i2,i3,i4,i5,i6,i7);
	input en,a,b,c;
	output i0,i1,i2,i3,i4,i5,i6,i7;

	assign i0 = ~a&~b&~c&en;
	assign i1 = ~a&~b&c&en;
	assign i2 = ~a&b&~c&en;
	assign i3 = ~a&b&c&en;
	assign i4 = a&~b&~c&en;
	assign i5 = a&~b&c&en;
	assign i6 = a&b&~c&en;
	assign i7 = a&b&c&en;
	
endmodule
