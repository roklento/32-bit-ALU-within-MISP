module mod_cu(
input clk,        
input reset,      
input start,      
input comp,       
output reg ld_temp,  
output reg sub,      
output reg done      
);

	// Define states using parameters
	parameter 	S_IDLE = 2'b00,
					S_SUBTRACT = 2'b01,
					S_DONE = 2'b10;

	reg [1:0] current_state = S_IDLE;
	reg [1:0] next_state;

	// State transition logic
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			current_state <= S_IDLE;
		end else begin
			current_state <= next_state;
		end
	end

	// Next state and output logic
	always @(*) begin
		ld_temp = 1'b0;
		sub = 1'b0;
		done = 1'b0;

		case (current_state)
			S_IDLE: begin
				if (start) begin
					ld_temp = 1'b1;
					next_state = S_SUBTRACT;
				end else begin
					next_state = S_IDLE;
				end
			end
			S_SUBTRACT: begin
				if (!comp) begin
					sub = 1'b0;
					next_state = S_DONE;
				end else begin
				sub = 1'b1;
				next_state = S_SUBTRACT;  // Stay in SUBTRACT if not done
				end
			end
			S_DONE: begin
				done = 1'b1;
				if(!start) begin
					next_state = S_IDLE;  // Go back to IDLE to be ready for another operation
				end
			end
			default: begin
				next_state = S_IDLE;
			end
		endcase
	end
endmodule