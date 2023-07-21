`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:26 05/19/2023
// Design Name:   MUX8_1
// Module Name:   /home/ise/VLSI/PRAC14/MUX8-1/MUX8-1/tbmux8_1.v
// Project Name:  MUX8-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX8_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbmux8_1;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg [2:0] sel;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	MUX8_1U4_1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.sel(sel), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		#0 sel =3'b000; #0 {i0,i1,i2,i3,i4,i5,i6,i7} = 8'b10000000;
		#5 sel =3'b001; #0 {i0,i1,i2,i3,i4,i5,i6,i7} = 8'b01000000;
		#5 sel =3'b010; #0 {i0,i1,i2,i3,i4,i5,i6,i7} = 8'b00100000;
		#5 $finish;
        
		// Add stimulus here

	end
      
endmodule

