`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:42:47 05/19/2023
// Design Name:   bh
// Module Name:   /home/ise/VLSI/PRAC15/DEC4-16/bh/tb.v
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

module tb_3_8;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire i0;
	wire i1;
	wire i2;
	wire i3;
	wire i4;
	wire i5;
	wire i6;
	wire i7;
	wire i8;
	wire i9;
	wire i10;
	wire i11;
	wire i12;
	wire i13;
	wire i14;
	wire i15;

	// Instantiate the Unit Under Test (UUT)
	DEC4_16U3_8 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.i8(i8), 
		.i9(i9), 
		.i10(i10), 
		.i11(i11), 
		.i12(i12), 
		.i13(i13), 
		.i14(i14), 
		.i15(i15)
	);

	initial begin
		// Initialize Inputs
		#0 {a,b,c,d}=4'b0000;
		#5 {a,b,c,d}=4'b0001;
		#5 {a,b,c,d}=4'b0010;
		#5 {a,b,c,d}=4'b0011;
		#5 $finish;
		
	end
      
endmodule

