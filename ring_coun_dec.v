`timescale 1ns / 1ps
module ring_coun_dec(input clk,rst,output q0,q1,q2,q3);
	 wire [1:0]m;
	coun2 c1(clk,rst,m);
	dec d1(m[1],m[0],q0,q1,q2,q3);
endmodule
module coun2(input clk,rst,output reg [1:0] q);
always @(posedge clk)
begin
	if (rst)
		q<=0;
	else
		q<=q+1;
end
endmodule
module dec(input a,b, output reg y0,y1,y2,y3);
always @(*)
begin
case({a,b})
2'b00:{y0,y1,y2,y3}={1'b1,1'b0,1'b0,1'b0};
2'b01:{y0,y1,y2,y3}={1'b0,1'b1,1'b0,1'b0};
2'b10:{y0,y1,y2,y3}={1'b0,1'b0,1'b1,1'b0};
2'b11:{y0,y1,y2,y3}={1'b0,1'b0,1'b0,1'b1};
default:{y0,y1,y2,y3}={1'b1,1'b0,1'b0,1'b0};
endcase
end
endmodule
