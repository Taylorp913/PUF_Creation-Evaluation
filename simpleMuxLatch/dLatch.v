`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:24 04/12/2016 
// Design Name: 
// Module Name:    dLatch 
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

module d_flipFlop(d,c,q,qn);
	input d,c;
	output q,qn;
	wire y1,y2,y3,y4;

	not (y1,c);
	not (y2,y1);

	d_latch DL(d,y1,y3,y4);
	sr_latch SR(y2,y3,y4,q,qn);
endmodule

module d_latch(d,y1,y3,y4);
	input d,y1;
	output y3,y4;
	wire dn,d1,dn1;

	not (dn,d);
	and (d1,y1,d);
	and (dn1,y1,dn);
	nor (y3,d1,y4);
	nor (y4,dn1,y3);
endmodule

module sr_latch(y2,y3,y4,q,qn);
	input y2,y3,y4;
	output q,qn;
	wire s1,r1;

	and (s1,y2,y3);
	and (r1,y2,y4);
	nor (qn,s1,q);
	nor (q,r1,qn);
endmodule


