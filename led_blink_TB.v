`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:17 04/06/2022 
// Design Name: 
// Module Name:    led_blink_TB 
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
module led_blink_TB();
  reg clk;
  wire [7:0] a;
  
  led_blink m_led(.clk(clk), .Led(a));
  
  initial begin
    clk = 1'b0;
  end
  
  always begin
      #100 clk <= ~clk;
  end
endmodule
