`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:49 05/19/2023 
// Design Name: 
// Module Name:    MUX8-1 
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
			case (sel)
				1'b0 : f = a;
				1'b1 : f = b;
				default f= 0;
			endcase
		end
endmodule

module MUX8_1(
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
	 
	 wire x1,x2,x3,x4,x5,x6;
	 mux2_1 a1(i0,i1,sel[0],x1);
	 mux2_1 a2(i2,i3,sel[0],x2);
	 mux2_1 a3(i4,i5,sel[0],x3);
	 mux2_1 a4(i6,i7,sel[0],x4);
	 mux2_1 a5(x1,x2,sel[1],x5);
	 mux2_1 a6(x3,x4,sel[1],x6);
	 mux2_1 a7(x5,x6,sel[2],f);

endmodule
