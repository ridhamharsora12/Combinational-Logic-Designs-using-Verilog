`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module fourbitadder(a,b,sum,cy);
	input [3:0]a,b;
	output[3:0]sum;
	output cy;
	
	assign {cy,sum} = a + b;
endmodule

module BCD_adder(a,b,sum,cout);
	input [3:0]a,b;
	output[3:0]sum;
	output cout;
	
	wire[3:0]sum1;
	wire c1,c2;
	reg [3:0]x;
	
	fourbitadder a1(a,b,sum1,c1);
	assign cout = (c1 | (sum1[3]&sum1[2]) | (sum1[1]&sum1[3]));
	always@(*)
	begin
		if (cout==1'b1) x=4'b0110;
		else x=4'b0000;
	end
	fourbitadder a2(sum1,x,sum,c2);

endmodule 