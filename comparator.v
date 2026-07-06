`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:08 01/12/2026 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
	input [31:0] S,
	input neg,
	input [2:0] F,
	output COMP_OUT
    );
	 
	 wire is_zero = (S == 32'b0);
	 assign COMP_OUT = (F[2] & neg) | (F[1] & is_zero) | (F[0] & !neg & !is_zero);
	 
endmodule
