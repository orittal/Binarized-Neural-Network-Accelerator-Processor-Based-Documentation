`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:01 01/12/2026 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [31:0] A,
	input [31:0] B,
	input test,
	input add,
	input [2:0] ALUF,
	output reg [31:0] ALU_OUT
    );
	 
	 wire [31:0] S;
	 wire [2:0] F;
	 wire neg, sub, COMP_OUT;
	 
	 assign F = (add) ? 3'b011: ALUF;
	 assign sub = test | (!F[0]);
	 
	 CSA32 add_sub32(
		.A(A[31:0]),
		.B(B[31:0]),
		.SUB(sub),
		.ALU_OUT(S[31:0]),
		.NEG(neg)
	);
	
	comparator comp(
		.S(S[31:0]),
		.neg(neg),
		.F(F[2:0]),
		.COMP_OUT(COMP_OUT)
	);
	
	always @(*) begin
		if (test) begin
			ALU_OUT = {31'b0, COMP_OUT};
		end
		else if (!F[2]) begin
			ALU_OUT = S;
		end
		else if (F[1]) begin
			ALU_OUT = A & B;
		end
		else if (F[0]) begin
			ALU_OUT = A | B;
		end
		else begin
			ALU_OUT = A ^ B;
		end
	end
		


endmodule
