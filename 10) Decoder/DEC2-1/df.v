`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:08 05/19/2023 
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
module df(
    input a,
    input b,
    output i0,
    output i1,
    output i2,
    output i3,
    input en
    );
	 
	 assign i0 = ~a&~b&en;
	 assign i1 = ~a&b&en;
	 assign i2 = a&~b&en;
	 assign i3 = a&b&en; 

endmodule
