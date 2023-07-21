`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:51:38 05/19/2023
// Design Name:   bh
// Module Name:   /home/ise/VLSI/PRAC15/DEC4-8/bh/tb.v
// Project Name:  bh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire i7;
	wire i6;
	wire i5;
	wire i4;
	wire i3;
	wire i2;
	wire i1;
	wire i0;

	// Instantiate the Unit Under Test (UUT)
	DEC3_8 uut ( 
		.a(a), 
		.b(b), 
		.c(c), 
		.i7(i7), 
		.i6(i6), 
		.i5(i5), 
		.i4(i4), 
		.i3(i3), 
		.i2(i2), 
		.i1(i1), 
		.i0(i0)
	);

	initial begin
		// Initialize Inputs
		#0 {a,b,c}=3'b000;
		#5 {a,b,c}=3'b001;
		#5 {a,b,c}=3'b010;
		#5 {a,b,c}=3'b011;
		#5 {a,b,c}=3'b100;
		#5 $finish;
	end
      
endmodule

