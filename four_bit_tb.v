// or browse Examples
module counter_TB();
  reg clk, rst;
  wire [3:0] result;
  
  counter m_counter(.clk(clk), .rst(rst), .a(result));
  
  initial begin
    clk = 1'b0;
    rst = 1'b0;
	 $display(result);
    #5 rst = 1;
	 $display(result);
    #5 rst = 0;
	 $display(result);
    #1000
	 $finish;
  end
  
  always begin
      #3 clk <= ~clk;
  end
endmodule