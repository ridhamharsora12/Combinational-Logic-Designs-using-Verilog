`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:32:52 05/24/2023
// Design Name:   Bshift8
// Module Name:   /home/ise/VLSI/PRAC19/Bshif8/tb.v
// Project Name:  Bshif8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bshift8
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
	reg [7:0] in;
	reg [2:0] s;

	// Outputs
	wire [7:0] op;

	// Instantiate the Unit Under Test (UUT)
	Bshift8 uut (
		.in(in), 
		.op(op), 
		.s(s)
	);

	initial begin
		#0 in = 8'hf0;
		#0 s=3'b000;
		#5 s=3'b001;
		#5 s=3'b010;
		#5 s=3'b011;
		#5 s=3'b101;
		#5 s=3'b110;
		#5 s=3'b111;
		#5 $finish;
	end
      
endmodule

