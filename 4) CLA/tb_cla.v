`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:37:03 05/18/2023
// Design Name:   CLA
// Module Name:   /home/ise/VLSI/prac9/CLA/tb_cla.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_cla;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire cout;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	CLA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum)
	);

	initial begin
	
	integer i,j;
		// Initialize Inputs
		$monitor("t=%d,a=%b,b=%b,cin=%b,sum=,%b,cout=%b",$time,a,b,cin,sum,cout);
		#5 cin = 0;
		{a,b}=8'h00;
			for(i=0;i<8;i=i+1)
				begin
					for(j=0;j<8;j=j+1)
						begin
							#5 {a,b}={a,b}+1;
						end
				end
				
		#5 $finish;
        
		// Add stimulus here

	end
      
endmodule

