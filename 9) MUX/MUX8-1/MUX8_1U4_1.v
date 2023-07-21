`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:48 05/19/2023 
// Design Name: 
// Module Name:    MUX8_1U4_1 
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
module mux4_1(a,b,c,d,sel,f);
	input a,b,c,d;
	input [1:0]sel;
	output reg f;
	
	always@(*)
		begin
		case(sel)
			2'b00 : f=a;
			2'b01 : f=b;
			2'b10 : f=c;
			2'b11 : f=d;
			default f=0;
		endcase
		end
endmodule

module mux2_1(a,b,sel,f);
	input a,b;
	input sel;
	output reg f;
	
	always@(*)
	begin
		case (sel)
			1'b0 : f=a;
			1'b1 : f=b;
			default f=0;
		endcase
	end
endmodule

module MUX8_1U4_1(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input [2:0] sel,
    output f
    );
	
	 mux4_1 a1(i0,i1,i2,i3,sel[1:0],x1);
	 mux4_1 a2(i4,i5,i6,i7,sel[1:0],x2);
	 mux2_1 a3(x1,x2,sel[2],f);

endmodule
