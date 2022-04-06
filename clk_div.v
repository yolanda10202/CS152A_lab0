`timescale 1 ns/1 ns

// clock divider design
// Apply Count Parameters
module clk_div #(parameter count_from, parameter count_to) (in, out);
	input in;
	output reg out = 0;
	// Create 32 Bit Counter Variable
	reg [31:0] counter = count_from;
	
	// Put correct signals in trigger sensitivity list
	always @ (posedge in) begin
		if (counter == count_to/2) begin
			// Change variables/outputs under correct conditions
			counter <= 0;
			out = ~out;
		end
		else begin
			// Create default case
			counter <= counter + 1;
		end
	end
endmodule 
