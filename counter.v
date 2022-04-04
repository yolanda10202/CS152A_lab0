// Code your design here
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:38 04/04/2022 
// Design Name: 
// Module Name:    counter 
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
module counter(clk, rst, a);
	input clk, rst;
	// Example Verilog code for the counter 
	output reg [3:0] a; 
	always @ (posedge clk) begin
	  if (rst) 
		a <= 4'b0000; 
	  else 
		a <= a + 1'b1; 
	end
	
endmodule
