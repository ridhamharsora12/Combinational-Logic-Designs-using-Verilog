`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:17 05/19/2023 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
    input [3:0] a,
    input [3:0] b,
    output reg G,
    output reg L,
    output reg E
    );

	always@(*)
	begin
		if(a<b) {G,L,E}=3'b010;
		else if(a>b) {G,L,E}=3'b100;
		else {G,L,E}=3'b001;
	end
endmodule
