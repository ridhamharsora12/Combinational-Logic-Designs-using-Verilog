`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:33 05/19/2023 
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
    input sin,
    output f
    );
	 assign f = (sin&a | (~sin&b));

endmodule
