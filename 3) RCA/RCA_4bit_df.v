`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module RCA_4bit_df(a,b,cin,cout,sum);
	//parameter N = 7;
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output cout;
	
	assign {cout,sum} = a + b + cin;
	

endmodule
