`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:40 05/19/2023 
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
module bh(en,a,b,c,i7,i6,i5,i4,i3,i2,i1,i0);
	 input a,b,c,en; 
	 output reg i7,i6,i5,i4,i3,i2,i1,i0;
	 always@(*)
	 begin
		if(en)
			begin
				case({a,b,c})
					3'b000 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000001;
					3'b001 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000010;
					3'b010 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000100;
					3'b011 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00001000;
					3'b100 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00010000;
					3'b101 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00100000;
					3'b110 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b01000000;
					3'b111 : {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b10000000;
					default {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000000;
					endcase
		  	end 
		 else {i7,i6,i5,i4,i3,i2,i1,i0} = 8'b00000000;
	 end
	 
endmodule
