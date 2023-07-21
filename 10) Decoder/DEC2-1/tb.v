`timescale 40ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:13:50 05/19/2023
// Design Name:   bh
// Module Name:   /home/ise/VLSI/PRAC15/DEC2-4/bh/tb.v
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
	reg en;

	// Outputs
	wire i0;
	wire i1;
	wire i2;
	wire i3;

	// Instantiate the Unit Under Test (UUT)
	df uut (
		.a(a), 
		.b(b), 
		.en(en), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3)
	);

	initial begin
		// Initialize Inputs
		#0 en = 0; {a,b} = 2'b00; 
		#5 en = 1; {a,b} = 2'b00; 
		#5 en = 1; {a,b} = 2'b01; 
		#5 en = 1; {a,b} = 2'b10; 
		#5 $finish;

	end
      
endmodule

