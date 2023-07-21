`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:50:32 05/25/2023
// Design Name:   ALU
// Module Name:   /home/ise/VLSI/PRAC20/alu8bit/tb.v
// Project Name:  alu8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
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
	reg [7:0] A;
	reg [7:0] B;
	reg [3:0] ALU_SEL;

	// Outputs
	wire [7:0] ALU_RES;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALU_RES(ALU_RES), 
		.ALU_SEL(ALU_SEL)
	);

	initial begin
		// Initialize Inputs
		#0 A = 8'b00000100; B = 8'b00000010;
		#0 ALU_SEL = 4'b0000;
		#5 ALU_SEL = 4'b0001;
		#5 ALU_SEL = 4'b0010;
		#5 ALU_SEL = 4'b0011;
		#5 ALU_SEL = 4'b0100;
		#5 ALU_SEL = 4'b0101;
		#5 ALU_SEL = 4'b0110;
		#5 ALU_SEL = 4'b0111;
		#5 ALU_SEL = 4'b1000;
		#5 ALU_SEL = 4'b1001;
		#5 ALU_SEL = 4'b1010;
		#5 ALU_SEL = 4'b1011;
		#5 ALU_SEL = 4'b1100;
		#5 ALU_SEL = 4'b1101;
		#5 ALU_SEL = 4'b1110;
		#5 ALU_SEL = 4'b1111;
		#5 $finish;
		
	end
      
endmodule

