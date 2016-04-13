`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:26 04/13/2016 
// Design Name: 
// Module Name:    mux4X2 
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
module mux4X2(A,B,S,X,Y);
	input A,B,S;
	output X,Y;

	mux2X1 M1(A,B,S,X);
	mux2X1 M2(B,A,S,Y);

endmodule
