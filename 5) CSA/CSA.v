`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module FA(a,b,c,cy,sum);
	input a,b,c;
	output sum;
	output cy;
	
	assign sum=a^b^c;
	assign cy=(a&b | b&c | a&c);
endmodule

module RCA(a,b,cin,sum,cout);
	 input [3:0] a;
    input [3:0] b;
    input cin;
    output [3:0] sum;
    output cout; 
	 
	 wire c1,c2,c3,c4;
	 FA a1(a[0],b[0],cin,c1,sum[0]);
	 FA a2(a[1],b[1],c1,c2,sum[1]);
	 FA a3(a[2],b[2],c2,c3,sum[2]);
	 FA a4(a[3],b[3],c3,cout,sum[3]);
	 
endmodule


module CSA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0]sum,
    output reg cout
    );
	integer i; 
	 wire [3:0]rcasum1,rcasum0;
	 RCA rca1(a,b,1'b1,rcasum1,cout1);
	 RCA rca2(a,b,1'b0,rcasum0,cout0);
	 
	 always@(*)
	 begin
		for(i=0; i<4; i=i+1)
		begin
			if(cin==0) 
				begin
					sum[i]=rcasum0[i];
					cout=cout0;
				end
			else
				begin
					sum[i]=rcasum1[i];
					cout=cout1;
				end
		end
	 end
	 
endmodule
