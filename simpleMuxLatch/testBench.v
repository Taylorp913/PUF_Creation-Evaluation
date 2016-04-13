`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:04 04/12/2016 
// Design Name: 
// Module Name:    testBench 
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
module testBench();
	
	reg a,b,sel;
	wire a1,b1;
	
	muxArbiter MA(a,b,sel,a1,b1);
	
	//always begin for a loop
	initial begin
	c <= 0;
	#100;
	c <= 1;
	end
	
	initial begin
	d <= 1;
	#100;
	d <= 0;
	#100;
	d <=1;
	end


endmodule
