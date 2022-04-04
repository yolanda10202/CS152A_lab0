// Code your testbench here
// or browse Examples
module counter_TB();
  reg clk, rst;
  reg [3:0] result;
  
  counter m_counter(.clk(clk), .rst(rst), .a(result));
  
  initial begin
    clk = 1'b0;
    rst = 1'b0;
    // result = 4'b0000;
    #5 rst = 1;
    #5 rst = 0;
    
  end
  
  always begin
    repeat(10) begin
      #100;
      clk <= ~clk;
    end
  end
endmodule
