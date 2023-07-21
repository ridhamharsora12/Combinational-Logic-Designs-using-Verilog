`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:36 05/19/2023 
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
    input a,
    input b,
	 input en,
    output reg i0,
    output reg i1,
    output reg i2,
    output reg i3
    );

	always@(*)
	begin
		if(en)
			begin
				if({a,b}==2'b00) {i3,i2,i1,i0} = 4'b0001;
				else if({a,b}==2'b01) {i3,i2,i1,i0} = 4'b0010;
				else if({a,b}==2'b10) {i3,i2,i1,i0} = 4'b0100;
				else if({a,b}==2'b11) {i3,i2,i1,i0} = 4'b1000;
				else {i3,i2,i1,i0} = 4'bxxxx;
			end
		else {i3,i2,i1,i0} = 4'b0000;
	end

endmodule
