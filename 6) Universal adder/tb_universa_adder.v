`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:10:35 05/16/2023
// Design Name:   universa_adder
// Module Name:   /home/ise/VLSI/prac5/universa_adder/tb_universa_adder.v
// Project Name:  universa_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: universa_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_universa_adder;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire cout;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	universa_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum)
	);
	integer i,j;
	initial begin
		
		#0 cin = 1; //subtractor
		//#0 cin = 0;//adder
		
		#0{a,b} = 8'h00;
						
		// Initialize Inputs
		for(i=0; i<16; i=i+1)
			begin
				for(j=0; j<16; j=j+1)
					begin
						#5 {a,b} = ({a,b} + 1);
					end
			end
		#5 $finish;

	end
      
endmodule

