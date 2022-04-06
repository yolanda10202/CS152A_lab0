module led_blink_TB();
  reg clk;
  wire a;
  
  led_blink m_led(.clk(clk), .a(a));
  
  initial begin
    clk = 1'b0;
	  a = 1'b0;
  end
  
  always begin
      #100 clk <= ~clk;
  end
endmodule
