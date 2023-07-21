`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:30:08 05/22/2023
// Design Name:   MUL3
// Module Name:   /home/ise/VLSI/PRAC18/MUL3/tb.v
// Project Name:  MUL3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUL3
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
	reg [2:0] a;
	reg [2:0] b;

	// Outputs
	wire [5:0] p;

	// Instantiate the Unit Under Test (UUT)
	MUL3 uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		#0 a= 3'b000; b=3'b000;
		#5 a= 3'b010; b=3'b010;
		#5 a= 3'b100; b=3'b010;
		#5 a= 3'b100; b=3'b001;
		#5 a= 3'b001; b=3'b000;
		#5 $finish;
	end
      
endmodule

