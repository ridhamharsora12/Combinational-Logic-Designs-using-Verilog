`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:58 05/22/2023 
// Design Name: 
// Module Name:    MUL3 
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
module adder3bit(cout,sum,a,b);
	input [2:0]a,b;
	output cout;
	output [2:0]sum;
	
	assign {cout,sum} = a + b;
	
endmodule

module MUL3(
    input [2:0] a,b,
    output [5:0] p
    );
	
	wire [8:0]x;
	wire [2:0]sum;
	wire c1;
	and nd1(p[0],a[0],b[0]);
	and nd2(x[1],a[1],b[0]);
	and nd3(x[2],a[2],b[0]);
	and nd4(x[3],a[0],b[1]);
	and nd5(x[4],a[1],b[1]);
	and nd6(x[5],a[2],b[1]);
	and nd7(x[6],a[0],b[2]);
	and nd8(x[7],a[1],b[2]);
	and nd9(x[8],a[2],b[2]);
	
	adder3bit ad1(c1,sum,{1'b0,x[2],x[1]},{x[5],x[4],x[3]});
	adder3bit ad2(p[5],p[4:2],{c1,sum[2:1]},{x[8],x[7],x[6]});
	assign p[1] = sum[0];
	
	
endmodule
