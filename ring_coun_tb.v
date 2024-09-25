`timescale 1ns / 1ps
module ring_coun_tb;
	reg clk;
	reg rst;
	wire q0;
	wire q1;
	wire q2;
	wire q3;
	ring_coun_dec uut (
		.clk(clk), 
		.rst(rst), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2), 
		.q3(q3)
	);
	initial begin
		clk = 0;
		rst = 0;
		#10;
	end
	always #5 clk=~clk;
	initial
	begin
	rst=1'b1;
	#10;
	rst=1'b0;
   end  
endmodule

