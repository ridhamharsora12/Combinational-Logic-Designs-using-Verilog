`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:32 05/19/2023 
// Design Name: 
// Module Name:    bh 
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
module bh(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input [2:0] sel,
    output reg f
    );
	 
	 always@(*)
	 begin
		case (sel)
		3'b000 : f=i0;
		3'b001 : f=i1;
		3'b010 : f=i2;
		3'b011 : f=i3;
		3'b100 : f=i4;
		3'b101 : f=i5;
		3'b110 : f=i6;
		3'b111 : f=i7;
		default f=0;
		endcase
	 end


endmodule
