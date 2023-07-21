`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:25 05/19/2023 
// Design Name: 
// Module Name:    beh 
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
module beh(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sin,
    output reg f
    );

	always@(*)
	begin
		case (sin)
			2'b00 : f=a;
			2'b01 : f=b;
			2'b10 : f=c;
			2'b11 : f=d;
			default f=0;
		endcase
	end
endmodule
