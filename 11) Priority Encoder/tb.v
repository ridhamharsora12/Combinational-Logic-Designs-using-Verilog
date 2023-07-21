`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:10 05/21/2023
// Design Name:   pr_en
// Module Name:   /home/ise/VLSI/PRAC17/pr_en/tb.v
// Project Name:  pr_en
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pr_en
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
	reg i0;
	reg i1;
	reg i2;
	reg i3;

	// Outputs
	wire y1;
	wire y0;

	// Instantiate the Unit Under Test (UUT)
	pr_en uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.y1(y1), 
		.y0(y0)
	);

	initial begin
		#0 {i0,i1,i2,i3} = 4'b0000;
		#5 {i0,i1,i2,i3} = 4'b1000;
		#5 {i0,i1,i2,i3} = 4'b0100;
		#5 {i0,i1,i2,i3} = 4'b0010;
		#5 {i0,i1,i2,i3} = 4'b0001;
		
		#5 $finish;
		// Add stimulus here

	end
      
endmodule

