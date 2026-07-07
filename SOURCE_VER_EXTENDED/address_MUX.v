`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:23 12/22/2025 
// Design Name: 
// Module Name:    address_MUX 
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
module address_MUX(
	input [15:0] PC,
	input [15:0] IR_AO,
	input mux_select,
	output [15:0] AO
    );
	 
	assign AO = (mux_select)? IR_AO:PC;


endmodule
