`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:28 05/24/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [7:0] A,B,
    output reg [7:0] ALU_RES,
    input [3:0] ALU_SEL
    //output o,
    //output z,
    //output n
    );
	 always@(*)
	 begin 

		case(ALU_SEL)
			4'b0000 : ALU_RES = A+B;
			4'b0001 : ALU_RES = A-B;
			4'b0010 : ALU_RES = A*B;
			4'b0011 : ALU_RES = A&B;
			4'b0100 : ALU_RES = A|B;
			4'b0101 : ALU_RES = A^B;
			4'b0110 : ALU_RES = ~(A&B);
			4'b0111 : ALU_RES = ~(A|B);
			4'b1000 : ALU_RES = ~(A^B);
			4'b1001 : ALU_RES = A>>1;
			4'b1010 : ALU_RES = A<<1;
			4'b1011 : ALU_RES = B>>1;
			4'b1100 : ALU_RES = B<<1;
			4'b1101 : ALU_RES = {A[0],A[7:1]};
			4'b1110 : ALU_RES = {B[0],B[7:1]};
			4'b1111 : ALU_RES = A/2;
			
			default ALU_RES = 8'h00;
		endcase
	 end
	 //let define 8x1mux 

endmodule
