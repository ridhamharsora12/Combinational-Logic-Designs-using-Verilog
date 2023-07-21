`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:57 05/19/2023 
// Design Name: 
// Module Name:    beh 
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

//design 2 to 1 mux using behaviour description
module beh(
    input a,
    input b,
    input cin,
    output reg o
    );

	 always@(*)
	 begin
		if (cin==1) o<=a;
		else o<=b;
	 end

endmodule
