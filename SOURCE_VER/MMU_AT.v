`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:35 12/22/2025 
// Design Name: 
// Module Name:    MMU_AT 
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
module MMU_AT(
		input [15:0] AO,
		output [31:0] MMU_AO
    );
	 
	 assign MMU_AO = {16'h0000, AO};


endmodule
