`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:00:50 05/19/2023
// Design Name:   BCD_adder
// Module Name:   /home/ise/VLSI/PRAC11/BCD_adder/tb_bcd.v
// Project Name:  BCD_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bcd;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	BCD_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
	

	end
      
endmodule

