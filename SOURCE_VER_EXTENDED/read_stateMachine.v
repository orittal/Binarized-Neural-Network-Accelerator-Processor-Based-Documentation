`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:48 12/08/2025 
// Design Name: 
// Module Name:    write_stateMachine 
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
module read_stateMachine(
	input clk,
	input reset,
	input step_en,
	input ack_n,
	output [1:0] curr_state,
	output AS_N,
	output WR_N,
	output IN_INIT,
	output STOP_N,
	output counter_ce
   );

	reg [1:0] curr_state_val;
	reg [1:0] prev_state_val;
	
	parameter WAIT = 2'h0;
	parameter FETCH = 2'h1;
	parameter WAIT4ACK = 2'h2;
	parameter LOAD = 2'h3;
	
	always@(posedge clk) begin
		if (reset) begin 
			curr_state_val <= WAIT;
			prev_state_val <= WAIT;
		end

		else begin 
			prev_state_val <= curr_state_val;
			
			case (curr_state_val)
				WAIT: begin
					if (step_en)
						curr_state_val <= FETCH;
					else 
						curr_state_val <= WAIT;
				end
				
				FETCH: begin
						curr_state_val <= WAIT4ACK;
				end
				
				WAIT4ACK: begin
					if (~ack_n)
						curr_state_val <= LOAD;
					else
						curr_state_val <= WAIT4ACK;
				end
				
				LOAD: begin
					curr_state_val <= WAIT;
				end
				
				default: begin
					curr_state_val <= WAIT;
				end
				
			endcase
		end
	end
	
	assign STOP_N = ((prev_state_val == WAIT4ACK & curr_state_val == WAIT4ACK)&(ack_n))? 1'b0:1'b1;
	
	assign curr_state = curr_state_val;
	
	assign AS_N = (curr_state_val == FETCH | curr_state_val == WAIT4ACK)? 1'b0:1'b1;
	assign WR_N	= 1'b1;
	assign IN_INIT = (curr_state_val == WAIT)? 1'b1:1'b0;
	assign counter_ce = (curr_state_val == LOAD)? 1'b1:1'b0;

endmodule
