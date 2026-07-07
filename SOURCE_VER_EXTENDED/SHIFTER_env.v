`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:28 01/05/2026 
// Design Name: 
// Module Name:    SHIFTER_env 
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
module SHIFTER_env(
		input shift,
		input right, 
		input [31:0] DI_shifter,
		output reg [31:0] DO_shifter
    );

	always @(*) begin
		if (shift == 1'b0) begin
			DO_shifter = DI_shifter;
		end
		else begin
			if (right == 1'b1) begin
				DO_shifter = DI_shifter >> 1;
			end
			else begin
				DO_shifter = DI_shifter << 1;
			end
		end
	end

endmodule
