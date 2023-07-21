`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:30 05/16/2023 
// Design Name: 
// Module Name:    universa_adder 
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
module rca(a,b,cin,cout,sum);
	parameter n=4;
	input [n-1:0]a,b;
	input cin;
	output [n-1:0]sum;
	output cout;
	
	assign {cout,sum} = a + b + cin;
endmodule
	
module universa_adder(a,b,cin,cout,sum);
	parameter n=4;
	input [n-1:0]a,b;
	input cin;
	output [n-1:0]sum;
	output cout;
	genvar i;l
	
	//if cin is 1 then act as subtractor
	//if cin is 0 then act as adder
	wire [n-1:0]bi;
	/*xor a1(bi[0],b[0],cin);
	xor a2(bi[1],b[1],cin);
	xor a3(bi[2],b[2],cin);
	xor a4(bi[3],b[3],cin);
	*/
	for (i=0; i<n; i=i+1)
		begin
			xor a1(bi[i],b[i],cin);
		end
	rca uas(a,bi,cin,cout,sum);

endmodule