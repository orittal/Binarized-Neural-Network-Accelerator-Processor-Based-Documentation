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
module PC_en(
		input CLK,
		input RESET,
		input pc_en, 
		output reg [15:0] PC
    );
	 
	 always @(posedge CLK) begin
		if (RESET)
			PC <= 16'd0;
		else if (pc_en)
			PC <= PC + 16'd1;
	end


endmodule