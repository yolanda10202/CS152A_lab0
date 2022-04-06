`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:20 04/06/2022 
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
module led_blink(clk, Led);
	input clk;
	// Example Verilog code for the counter 
	output reg [7:0] Led; 
	reg [31:0] counter;
	
	initial begin
	  Led = 7'b0000000;
	  counter = 32'b00000000000000000000000000000000;
	end
	
	always @ (posedge clk) begin
	  counter <= counter + 32'b00000000000000000000000000000001;
	  if (counter == 32'b0000000000000000000000000100000) begin
		Led[0] <= ~Led[0];
		counter <= 32'b00000000000000000000000000000000;
	  end
	end
endmodule
