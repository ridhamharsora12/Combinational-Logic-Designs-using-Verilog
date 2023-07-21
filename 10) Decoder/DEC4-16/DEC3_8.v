`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:08 05/19/2023 
// Design Name: 
// Module Name:    DEC3_8 
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
module dec2_4(en,a,b,i0,i1,i2,i3);
	input en,a,b;
	output reg i0,i1,i2,i3;
	
	always@(*)
		begin
			if(en)
				begin
					case({a,b})
					2'b00 : {i3,i2,i1,i0} = 4'b0001;
					2'b01 : {i3,i2,i1,i0} = 4'b0010;
					2'b10 : {i3,i2,i1,i0} = 4'b0100;
					2'b11 : {i3,i2,i1,i0} = 4'b1000;
					default {i3,i2,i1,i0} = 4'b0000;
					endcase
				end
			else {i3,i2,i1,i0} = 4'b0000;
		end
endmodule

module DEC3_8(a,b,c,i0,i1,i2,i3,i4,i5,i6,i7);
	input a,b,c;
	output i0,i1,i2,i3,i4,i5,i6,i7;
	
	dec2_4 d1(~a,b,c,i0,i1,i2,i3);
	dec2_4 d2(a,b,c,i4,i5,i6,i7);
	
endmodule
