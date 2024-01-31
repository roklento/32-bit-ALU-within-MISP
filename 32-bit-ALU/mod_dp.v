module mod_dp(
input clk,       
input reset,      
input [31:0] A,   
input [31:0] B,   
input ld_temp,    
input sub,        
output reg [31:0] TEMP,  
output comp       
);

	always @(posedge clk or posedge reset) begin
		if (reset) begin
			TEMP <= 0;
		end else if (ld_temp) begin
			TEMP <= A;  // Load TEMP with A
		end else if (sub) begin
			TEMP <= TEMP - B;  // Subtract B from TEMP
		end
	end

	// Compare TEMP with B and output the result
	assign comp = (TEMP >= B);

endmodule
