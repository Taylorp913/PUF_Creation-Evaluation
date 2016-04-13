`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:12 04/13/2016 
// Design Name: 
// Module Name:    arbiterOne 
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
module arbiterOne(A,B,S,O);
	input [64:0]A,B;
	input [64:0]S;
	output O;

	mux4X2 N1(A[0],B[0],S[0],A[1],B[1]);
	mux4X2 N2(A[1],B[1],S[1],A[2],B[2]);
	
	
endmodule
