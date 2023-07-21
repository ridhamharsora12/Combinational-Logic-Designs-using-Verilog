`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:42 05/19/2023 
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
    input i8,
    input i9,
    input i10,
    input i11,
    input i12,
    input i13,
    input i14,
    input i15,
    input [3:0] sel,
    output reg f
    );

	 always@(*)
	 begin
		case (sel)
			4'h0 : f=i0;
			4'h1 : f=i1;
			4'h2 : f=i2;
			4'h3 : f=i3;
			4'h4 : f=i4;
			4'h5 : f=i5;
			4'h6 : f=i6;
			4'h7 : f=i7;
			4'h8 : f=i8;
			4'h9 : f=i9;
			4'hA : f=i10;
			4'hB : f=i11;
			4'hC : f=i12;
			4'hD : f=i13;
			4'hE : f=i14;
			4'hF : f=i15;
			default f=0;
		endcase
	 end
endmodule
