// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

  module TEST_gate;
  
	//input signa
        reg [3:0]a,b;
		  reg cin;
	//output signal
		  wire [3:0]sum;
		  wire cout;
		  
	design dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
		  
   initial begin
     #0 cin = 0;
	  #5 {a,b}= 8'h91;
	  #5 {a,b}=8'h80;
	  
	  #10 cin = 1;
	  #5 {a,b}= 8'h91;
	  #5 {a,b}=8'h80;
	  #10 $finish; 
   end

  endmodule
