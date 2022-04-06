`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:50 04/06/2022 
// Design Name: 
// Module Name:    led_blink
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
module led_blink(clk);
	input clk;
	// Example Verilog code for the counter 
	output a; 
	wire one_hz_clk;
  
	//To Do: Create and/or instantiate a 1 Hz clock divider
	clk_div #(.count_from(0), .count_to(1000000000))
		my_clockDiv(.in(clk), .out(one_hz_clk));
	
	always @ (posedge clk) begin
	  a = ~a;
	end
	
endmodule
