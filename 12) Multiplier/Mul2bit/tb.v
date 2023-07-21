`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:08 05/22/2023
// Design Name:   MULT2
// Module Name:   /home/ise/VLSI/PRAC18/MULT2/tb.v
// Project Name:  MULT2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULT2
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
	reg [1:0] A;
	reg [1:0] B;

	// Outputs
	wire [3:0] P;

	// Instantiate the Unit Under Test (UUT)
	MULT2 uut (
		.A(A), 
		.B(B), 
		.P(P)
	);

	initial begin
		#0 A = 2'b00; B = 2'b00;
		#5 A = 2'b10; B = 2'b10;
		#5 A = 2'b10; B = 2'b01;
		#5 $finish;
		// Add stimulus here

	end
      
endmodule

