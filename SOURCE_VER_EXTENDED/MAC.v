
`timescale 1ns / 1ps

module MAC(
	input ack_n, 
   input clk, 
   input mr, 
   input mw, 
   input reset, 
   output as_n, 
   output busy, 
   output [1:0] MAC_state, 
   output wr_n,
	output stop_n
	);

   reg [1:0] curr_state;
	
	parameter WAIT4REQ = 2'b00;
	parameter WAIT4ACK = 2'b01;
	parameter NEXT = 2'b10;
	
	wire req = mr|mw;
	
	always@(posedge  clk) begin
		if (reset) begin
			curr_state <= WAIT4REQ;
		end
		
		else begin
			
			case (curr_state)
				WAIT4REQ: begin
					if (req)
						curr_state <= WAIT4ACK;
					else
						curr_state <= WAIT4REQ;
				end
				
				WAIT4ACK: begin
					if (~ack_n)
						curr_state <= NEXT;
					else
						curr_state <= WAIT4ACK;
				end				

				NEXT: begin
					curr_state <= WAIT4REQ;
				end
				
				default: begin
					curr_state <= WAIT4REQ;
				end
	
			endcase
		end
	end
   
	assign as_n = ~req;
   assign busy = ack_n&req;
   assign MAC_state = curr_state;
   assign wr_n = ~mw;
	assign stop_n = (curr_state == WAIT4ACK)? 1'b0:1'b1;
	
endmodule
