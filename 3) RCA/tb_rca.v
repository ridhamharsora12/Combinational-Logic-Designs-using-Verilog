`timescale 1ns / 1ps

module tb_rca;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire cout;
	wire [3:0] sum;
	

	// Instantiate the Unit Under Test (UUT)
	RCA_4bit_df uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum)
	);
	//initialization of a,b
	integer i,j;
	//integer [7:0]x = {a,b};

	initial begin
		// Initialize Inputs
			#0 cin = 0;
			#0{a,b}=8'h00;
			for(i=0; i<16; i=i+1)
				begin
					for(j=0; j<16; j=j+1)
					begin 
						#5{a,b}={a,b}+1;
					end
				end
		
		

        
		// Add stimulus here

	end
      
endmodule

