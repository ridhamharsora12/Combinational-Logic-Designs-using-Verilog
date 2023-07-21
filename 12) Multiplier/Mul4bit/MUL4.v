`timescale 1ns / 1ps
module adder4bit(a,b,sum,cout);
	input [3:0]a,b;
	output [3:0]sum;
	output cout;
	
	assign {cout,sum} = a + b;
	
endmodule

module MUL4(a,b,p);
	input [3:0]a,b;
	output [7:0]p;
	
	wire [3:1]x;
	wire [3:0]x1,x2,x3,s1,s2;
	wire c1,c2;
	
	and n1(p[0],a[0]&b[0]);
	and n2(x[1],a[1]&b[0]);
	and n3(x[2],a[2]&b[0]);
	and n4(x[3],a[3]&b[0]);
	
	and n5(x1[0],a[0]&b[1]);
	and n6(x1[1],a[1]&b[1]);
	and n7(x1[2],a[2]&b[1]);
	and n8(x1[3],a[3]&b[1]);
	
	and n9(x2[0],a[0]&b[2]);
	and n10(x2[1],a[1]&b[2]);
	and n11(x2[2],a[2]&b[2]);
	and n12(x2[3],a[3]&b[2]);
	
	and n13(x3[0],a[0]&b[3]);
	and n14(x3[1],a[1]&b[3]);
	and n15(x3[2],a[2]&b[3]);
	and n16(x3[3],a[3]&b[3]);
	
	adder4bit a1(x1,{1'b0,x[3:1]},s1[3:0],c1);
	adder4bit a2(x2,{c1,s1[3:1]},s2[3:0],c2);
	adder4bit a3(x3,{c2,s2[3:1]},p[6:3],p[7]);
	
	assign p[1] = s1[0];
	assign p[2] = s2[0];
	
endmodule
	