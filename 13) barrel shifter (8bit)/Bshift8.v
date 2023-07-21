`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:13:27 05/24/2023 
// Design Name: 
// Module Name:    Bshift8 
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
module Bshift8(
    input [7:0] in,
    output reg [7:0] op,
    input [2:0]s
    );
	 always@(*)
	 begin
		case (s)
			3'b000 : op = in;
			3'b001 : op = {in[0],in[7:1]};
			3'b010 : op = {in[1:0],in[7:2]};
			3'b011 : op = {in[2:0],in[7:3]};
			3'b100 : op = {in[3:0],in[7:4]};
			3'b101 : op = {in[4:0],in[7:5]};
			3'b110 : op = {in[5:0],in[7:6]};
			3'b111 : op = {in[6:0],in[7]};
			default op = 8'h00;
			endcase
	 end

endmodule
