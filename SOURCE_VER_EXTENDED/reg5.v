`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:50:28 11/24/2025 
// Design Name: 
// Module Name:    reg5 
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
module reg5(
    input reset,
    input clock,
    input enable,
    input [4:0] data_in,
    output [4:0] data_out
    );


reg [4:0] data_out_reg;

// register  with active high  reset
    always @(posedge clock)

    if (reset ==1)
	     data_out_reg <=   5'b00000;

	 else if (enable ==1)
	      data_out_reg <=   data_in;
			
	 else 
	      data_out_reg <=  data_out_reg;
	
assign  data_out = data_out_reg;

endmodule
