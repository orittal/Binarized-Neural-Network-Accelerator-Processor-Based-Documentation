`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:11 12/15/2025 
// Design Name: 
// Module Name:    DLX_control 
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
module DLX_control(
	input clk,
	input reset,
	input step_en,
	input busy,
	input [5:0] opcode,
	input ack_n,
	
	output in_init,
	output mr,
	output mw,
	output [3:0] DLX_control_state,
	output en_B,
	output en_C,
	output en_PC,
	output en_IR,
	output en_GPR,
	output MUX_sel
	);

	reg [3:0] curr_state;
		
	wire store = (opcode == 6'b101011) ? 1'b1:1'b0;	
	wire load = (opcode == 6'b100011) ? 1'b1:1'b0;	
	
	parameter INIT = 3'b000;
	parameter FETCH = 3'b001;
	parameter DECODE = 3'b010;
	parameter STORE = 3'b011;
	parameter LOAD = 3'b100;
	parameter WBI = 3'b101;
	parameter HALT = 3'b110;
	
	always@(posedge  clk) begin
		if (reset) begin
			curr_state <= INIT;
		end
		
		else begin
			
			case (curr_state)
				INIT: begin
					if (step_en)
						curr_state <= FETCH;
					else
						curr_state <=INIT;
				end
				
				FETCH: begin
					if (~busy)
						curr_state <= DECODE;
					else
						curr_state <=FETCH;
				end				

				DECODE: begin
					if (store)
						curr_state <= STORE;
					else if (load)
						curr_state <= LOAD;
					else
						curr_state <= HALT;
				end
				
				STORE: begin
					if (~busy)
						curr_state <= INIT;
					else
						curr_state <= STORE;
				end				

				LOAD: begin
					if (~busy)
						curr_state <= WBI;
					else
						curr_state <= LOAD;
				end

				WBI: begin
					curr_state <= INIT;
				end

				HALT: begin
					if (~reset)
						curr_state <= HALT;
					else
						curr_state <= INIT;
				end
				
				default: begin
					curr_state <= INIT;
				end
	
			endcase
		end
	end
	
	assign in_init = (curr_state == HALT | curr_state == INIT)? 1'b1:1'b0;
	assign DLX_control_state = curr_state;
	assign en_IR = (curr_state == FETCH && ack_n == 0) ? 1'b1:1'b0;
	assign en_B = (curr_state == DECODE) ? 1'b1:1'b0;
	assign en_PC = (curr_state == DECODE) ? 1'b1:1'b0;
	assign en_C = (curr_state == LOAD) ? 1'b1:1'b0;
	assign en_GPR = (curr_state == WBI) ? 1'b1:1'b0;
	assign mr = ((curr_state == LOAD)|(curr_state == FETCH)) ? 1'b1:1'b0;
	assign mw = (curr_state == STORE) ? 1'b1:1'b0;
	assign MUX_sel = (curr_state == FETCH) ? 1'b0:1'b1;
	
endmodule