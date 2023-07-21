`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:20 05/21/2023 
// Design Name: 
// Module Name:    pr_en 
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
module pr_en(
    input i0,i1,i2,i3,
    output reg y1,y0
    );
	
	always@(*)
	begin
		case ({i3,i2,i1,i0})
		4'b0001 : {y1,y0} = 2'b00;
		4'b0010 : {y1,y0} = 2'b01;
		4'b0100 : {y1,y0} = 2'b10;
		4'b1000 : {y1,y0} = 2'b11;
		default {y1,y0} = 2'bxx;
		endcase
	end

endmodule
