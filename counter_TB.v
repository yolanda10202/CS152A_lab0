`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:43 04/06/2022 
// Design Name: 
// Module Name:    counter_TB 
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
// or browse Examples
module counter_TB();
  reg clk, rst;
  wire [3:0] result;
  
  counter m_counter(.clk(clk), .rst(rst), .a(result));
  
  initial begin
    clk = 1'b0;
    rst = 1'b0;
	 //$display(result);
    #5 rst = 1;
	 //$display(result);
    #5 rst = 0;
	 //$display(result);
    #1000
	 $finish;
  end
  
  always begin
      #1 clk <= ~clk;
  end
endmodule

