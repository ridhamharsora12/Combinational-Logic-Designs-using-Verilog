`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:19 05/19/2023
// Design Name:   MUX4_1
// Module Name:   /home/ise/VLSI/PRAC14/MUX4-1/MUX4-1/tb_mux.v
// Project Name:  MUX4-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg [1:0] sel;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	MUX4_1 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.sel(sel), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		#0 sel = 2'b00;
		#0 {a,b,c,d} = 4'b1000;
		
		#5 sel = 2'b01;
		#5 {a,b,c,d} = 4'b0100;
		
		#5 sel = 2'b10;
		#5 {a,b,c,d} = 4'b0010;
		
		#5 sel = 2'b11;
		#5 {a,b,c,d} = 4'b0001;
		
		#5 $finish;
		
		
		
		
	end
      
endmodule

