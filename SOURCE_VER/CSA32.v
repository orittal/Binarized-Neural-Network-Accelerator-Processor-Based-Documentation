`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:17 01/12/2026 
// Design Name: 
// Module Name:    CSA32 
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
module CSA32(
		input [31:0]A, 
		input [31:0]B,
		input SUB,
		output [31:0] ALU_OUT,
		output NEG
    );
	 wire [15:0] sum_low, sum_high0, sum_high1;
    wire cout_low, cout_high0, cout_high1;
	 
	 ADSU16 adder_low(
		  .A(A[15:0]),
		  .B(B[15:0]),
		  .CI(SUB),      
		  .ADD(~SUB),     
		  .S(sum_low),
		  .CO(cout_low)
	);
	
	ADSU16 adder_high0(
		  .A(A[31:16]),
		  .B(B[31:16]),
		  .CI(1'b0),      
		  .ADD(~SUB),     
		  .S(sum_high0),
		  .CO(cout_high0)
	);
	
	ADSU16 adder_high1(
		  .A(A[31:16]),
		  .B(B[31:16]),
		  .CI(1'b1),      
		  .ADD(~SUB),     
		  .S(sum_high1),
		  .CO(cout_high1)
	);
	
	assign ALU_OUT[15:0]  = sum_low;
   assign ALU_OUT[31:16] = (cout_low) ? sum_high1 : sum_high0;
	
	assign final_cout = (cout_low) ? cout_high1 : cout_high0;
	assign b_prime_31 = B[31] ^ SUB;
	assign NEG = A[31] ^ b_prime_31 ^ final_cout;	


endmodule
