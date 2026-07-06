`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:00 12/22/2025 
// Design Name: 
// Module Name:    PC_env 
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
module PC_env(
		input CLK,
		input RESET,
		input pc_en, 
		input [31:0] PC_IN,
		output reg [31:0] PC_OUT
    );
	 
	 always @(posedge CLK) begin
		if (RESET)
			PC_OUT <= 32'd0;
		else if (pc_en)
			PC_OUT <= PC_IN;
	end


endmodule