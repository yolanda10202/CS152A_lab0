// Code your testbench here
// or browse Examples
module counter_TB();
  reg clk, rst;
  reg [3:0] result;
  
  counter m_counter(.clk(clk), .rst(rst), .a(result));
  
  intial begin
    clk = 1b'0;
    rst = 1b'0;
    result = 4'b0000;
  end
  
  always begin
    repeat(10) begin
      #100;
      clk <= ~clk;
    end
  end
end
