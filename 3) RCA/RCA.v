`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:43 05/16/2023 
// Design Name: 
// Module Name:    RCA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fa_df(a,b,c,sum,carry);
input a,b,c;
output sum,carry;

assign sum = a^b^c;
assign carry = ((a&b )| (b&c )| (a&c));

endmodule

module RCA(a,b,cin,cout,sum);
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output cout;
	
	wire c1,c2,c3;
	fa_df fa0(a[0],b[0],cin,sum[0],c1);
	fa_df fa1(a[1],b[1],c1,sum[1],c2);
	fa_df fa2(a[2],b[2],c2,sum[2],c3);
	fa_df fa3(a[3],b[3],c3,sum[3],cout);
	
endmodule
