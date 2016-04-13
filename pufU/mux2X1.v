`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:13 04/13/2016 
// Design Name: 
// Module Name:    mux2X1 
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

module mux2x1(A,B,S,O);
  
  input A,B,S;
  output O;
    
   wire  N1, N2, N3;

   not not1(N1, S);
   and and1(N2, A, N1);
   and and2(N3, B, S);
   or or1(O, N2, N3);   
  
endmodule
