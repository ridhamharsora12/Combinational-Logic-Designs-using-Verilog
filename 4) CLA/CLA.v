`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:56:32 05/18/2023 
// Design Name: 
// Module Name:    CLA 
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
module CLA(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output reg cout,
    output reg[3:0]sum
    );
	 integer i;
	 reg [3:0]p,g;
	 reg [4:0]c;
	 always@(*)
	 begin
		c[0]=cin;
		for(i=0; i<4; i=i+1)
		begin
			p[i]=a[i]^b[i];
			g[i]=a[i]&b[i];
			sum[i]=p[i]^c[i];
			c[i+1]=(g[i] | p[i]&c[i]);
		end
		cout=c[4];
	 end


endmodule 