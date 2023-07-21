`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:43 05/19/2023 
// Design Name: 
// Module Name:    MUX4-1 
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
module mux2_1(a,b,sel,f);
	input a,b,sel;
	output reg f;
	
	always@(*)
	begin
		//if(sel) f=b;
		//else f=a;
		case(sel)
			1'b0 : f=a;
			1'b1 : f=b;
			default f=0;
		endcase
	end
endmodule

module MUX4_1(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    output f
    );
	
	 wire x1,x2;
	 mux2_1 m1(a,b,sel[0],x1);
	 mux2_1 m2(c,d,sel[0],x2);
	 mux2_1 m3(x1,x2,sel[1],f);
	 
	 
	
endmodule
