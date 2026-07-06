`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:47 01/05/2026 
// Design Name: 
// Module Name:    CONTROL_SDLXSM 
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

module CONTROL_SDLXSM(
   input clk, 
   input reset, 
	input step_en,
	input busy,
	input AEQZ, 
	input [31:0] IR,
	
	output IRCE,
	output PCCE,
	output ACE,
	output BCE,
	output CCE,
	output MARCE,
	output MDRCE,
	output [1:0] S1SEL,
	output [1:0] S2SEL,
	output DINSEL,
	output MDRSEL,
	output ASEL,
	output ADD,
	output TEST,
	output [2:0] ALUF,
	output SHIFTER,
	output RIGHT,
	output ITYPE,
	output JLINK,	
	
	output MR,
	output MW,
	output GPR_WE,
	output isINIT,
	output isHALT,
	output [1:0] BNN_SEL,	
	
	output [4:0] DLX_STATE
	
	);

   reg [4:0] curr_state;
	
	wire [5:0] opcode = IR[31:26];
	wire [5:0] func = IR[5:0];	
	
	parameter INIT = 5'b0;
	parameter FETCH = 5'b1;
	parameter DECODE = 5'b10;
	parameter ALU = 5'b11;
	parameter SHIFT = 5'b100;
	parameter ALUI = 5'b101;
	parameter TESTI = 5'b110;
	parameter ADDRESSCMP = 5'b111;
	parameter JR = 5'b1000;
	parameter SAVEPC = 5'b1001;
	parameter BRANCH = 5'b1010;
	parameter WBR = 5'b1011;
	parameter WBI = 5'b1100;
	parameter LOAD = 5'b1101;
	parameter COPYGPR2MDR = 5'b1111;
	parameter JALR = 5'b10000;
	parameter BTAKEN = 5'b10001;
	parameter COPYMDR2C = 5'b10010;
	parameter STORE = 5'b10011;
	parameter HALT = 5'b10100;
	parameter XP_EXEC = 5'b10101;
	
	wire D1 = opcode[5]&opcode[4]&~opcode[3];
	wire D2 = ~opcode[5]&~opcode[4]&~opcode[3]&~opcode[2]&func[5];
	wire D4 = ~opcode[5]&~opcode[4]&~opcode[3]&~opcode[2]&~func[5];
	wire D5 = ~opcode[5]&~opcode[4]&opcode[3];
	wire D6 = ~opcode[5]&opcode[4]&opcode[3];
	wire D7 = opcode[5]&~opcode[4];
	wire D8 = ~opcode[5]&opcode[4]&~opcode[3]&~opcode[0];
	wire D9 = ~opcode[5]&opcode[4]&~opcode[3]&opcode[0];
	wire D12 = ~opcode[5]&~opcode[4]&~opcode[3]&opcode[2];
	wire D13 = opcode[3];
	wire bt = AEQZ ^ IR[26];
	
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
						curr_state <= INIT;
				end
				
				FETCH: begin
					if (~busy)
						curr_state <= DECODE;
					else
						curr_state <= FETCH;
				end				

				DECODE: begin
					if (D1)
						if (step_en)
							curr_state <= FETCH;
						else
							curr_state <= INIT;
					else if (D2) begin
						if (func == 6'b100111)
							curr_state <= XP_EXEC;
						else
							curr_state <= ALU;
					end
					else if (D4)
						curr_state <= SHIFT;
					else if (D5)
						curr_state <= ALUI;					
					else if (D6)
						curr_state <= TESTI;					
					else if (D7)
						curr_state <= ADDRESSCMP;	
					else if (D8)
						curr_state <= JR;
					else if (D9)
						curr_state <= SAVEPC;	
					else if (D12)
						curr_state <= BRANCH;	
					else
						curr_state <= HALT;
				end
				
				ALU: begin
					curr_state <= WBR;
				end
				
				SHIFT: begin
					curr_state <= WBR;
				end

				ALUI: begin
					curr_state <= WBI;
				end	

				TESTI: begin
					curr_state <= WBI;
				end				

				ADDRESSCMP: begin
					if (D13)
						curr_state <= COPYGPR2MDR;
					else 
						curr_state <= LOAD;
				end
				
				LOAD: begin
					if (~busy)
						curr_state <= COPYMDR2C;
					else
						curr_state <= LOAD;
				end

				JR: begin
					if (step_en)
						curr_state <= FETCH;
					else
						curr_state <= INIT;				
				end

				SAVEPC: begin
					curr_state <= JALR;
				end

				BRANCH: begin
					if (bt)
						curr_state <= BTAKEN;
					else
						if (step_en)
							curr_state <= FETCH;
						else
							curr_state <= INIT;
				end
				
				WBR: begin
					if (step_en)
						curr_state <= FETCH;
					else
						curr_state <= INIT;
				end
				
				WBI: begin
					if (step_en)
						curr_state <= FETCH;
					else
						curr_state <= INIT;
				end
				
				JALR: begin
					if (step_en)
						curr_state <= FETCH;
					else
						curr_state <= INIT;
				end
				
				BTAKEN: begin
					if (step_en)
						curr_state <= FETCH;
					else
						curr_state <= INIT;
				end
				
				COPYMDR2C: begin
					curr_state <= WBI;
				end
				
				STORE: begin
					if (~busy) begin
						if (step_en)
							curr_state <= FETCH;
						else
							curr_state <= INIT;
					end
					if (busy)
						curr_state <= STORE;
				end
				
				COPYGPR2MDR: begin
					curr_state <= STORE;
				end
				
				HALT: begin
					curr_state <= HALT;
				end
				
				default: begin
					curr_state <= INIT;
				end
				
				XP_EXEC: begin
					curr_state <= WBR;
				end
	
			endcase
		end
	end
   
	assign MR = (curr_state == FETCH)|(curr_state == LOAD);
	assign MW = (curr_state == STORE);
	
	assign IRCE = (curr_state == FETCH);
	assign ACE = (curr_state == DECODE);
	assign BCE = (curr_state == DECODE);
	assign CCE = (curr_state == ALU)|(curr_state == TESTI)|(curr_state == ALUI)|(curr_state == SHIFT)|(curr_state == COPYMDR2C)|(curr_state == SAVEPC)|(curr_state == XP_EXEC);
	assign S2SEL[0] = (curr_state == DECODE)|(curr_state == TESTI)|(curr_state == ALUI)|(curr_state == ADDRESSCMP)|(curr_state == BTAKEN);
	assign S2SEL[1] = (curr_state == DECODE)|(curr_state == COPYMDR2C)|(curr_state == COPYGPR2MDR)|(curr_state == JR)|(curr_state == SAVEPC)|(curr_state == JALR);
	assign PCCE = (curr_state == DECODE)|(curr_state == BTAKEN)|(curr_state == JR)|(curr_state == JALR);
	assign ADD = (curr_state == DECODE)|(curr_state == ALUI)|(curr_state == ADDRESSCMP)|(curr_state == BTAKEN)|(curr_state == JR)|(curr_state == SAVEPC)|(curr_state == JALR);
	assign S1SEL[0] = (curr_state == ALU)|(curr_state == TESTI)|(curr_state == ALUI)|(curr_state == SHIFT)|(curr_state == ADDRESSCMP)|(curr_state == COPYMDR2C)|(curr_state == JR)|(curr_state == JALR);
	assign S1SEL[1] = (curr_state == COPYMDR2C)|(curr_state == COPYGPR2MDR);
	assign TEST = (curr_state == TESTI);
	assign ITYPE = (curr_state == TESTI)|(curr_state == ALUI)|(curr_state == WBI);
	assign DINSEL = (curr_state == SHIFT)|(curr_state == COPYMDR2C)|(curr_state == COPYGPR2MDR);
	assign SHIFTER = (curr_state == SHIFT);
	assign RIGHT = (curr_state == SHIFT) & (ALUF[1]==1);
	assign MARCE = (curr_state == ADDRESSCMP);
	assign ASEL = (curr_state == LOAD)|(curr_state == STORE);
	assign MDRSEL = (curr_state == LOAD);
	assign MDRCE = (curr_state == COPYGPR2MDR) | (curr_state == LOAD);
	assign GPR_WE = (curr_state == WBR)|(curr_state == WBI)|(curr_state == JALR);
	assign JLINK = (curr_state == JALR);
	assign isINIT = (curr_state == INIT);
	assign isHALT = (curr_state == HALT);
	
	assign ALUF = ((curr_state == TESTI)|(curr_state == ALUI)|(curr_state == WBI))? IR[28:26]:IR[2:0];
	assign DLX_STATE = curr_state;
	
	assign BNN_SEL = (curr_state == XP_EXEC) ? 2'b01 : 2'b00;
	
endmodule
