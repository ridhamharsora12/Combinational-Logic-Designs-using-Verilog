`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:19:32 05/21/2023 
// Design Name: 
// Module Name:    DEC4_16U2_4 
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


module DEC4_16U2_4(a,b,c,d,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15);
	input a,b,c,d;
	output i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15;
	
	wire x1,x2,x3,x4;
	dec2_4 d1(1'b1,a,b,x1,x2,x3,x4);
	dec2_4 d2(x1,c,d,i0,i1,i2,i3);
	dec2_4 d3(x2,c,d,i4,i5,i6,i7);
	dec2_4 d4(x3,c,d,i8,i9,i10,i11);
	dec2_4 d5(x4,c,d,i12,i13,i14,i15);
	
endmodule
