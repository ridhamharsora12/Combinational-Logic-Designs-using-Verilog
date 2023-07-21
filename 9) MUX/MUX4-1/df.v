`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:03:02 05/19/2023 
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
    input c,
    input d,
    input [1:0] sin,
    output f
    );

	 assign f=(sin[0]&sin[1]&d | sin[0]&~sin[1]&c | ~sin[0]&sin[1]&b | ~sin[0]&~sin[1]&a); 

endmodule
