`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:06 05/22/2023 
// Design Name: 
// Module Name:    MULT2 
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
module adder2(cout,sum,a,b);
	input [1:0]a,b;
	output [1:0]sum;
	output cout;
	
	assign {cout,sum} = a+b;
	
endmodule

module MULT2(
    input [1:0] A,
    input [1:0] B,
    output [3:0] P
    );
	 
	 and and1(P[0],A[0]&B[0]);
	 and and2(X1,A[1]&B[0]);
	 and and3(X2,A[0]&B[1]);
	 and and5(X3,A[1]&B[1]);
	 
	 adder2 add2(P[3],P[2:1],{X3,X2},{1'b0,X1});

endmodule
