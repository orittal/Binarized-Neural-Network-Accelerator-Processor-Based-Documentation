`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:09 01/28/2025 
// Design Name: 
// Module Name:    MUX3bit 
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
module MUX3bit(
    input sel,
    input [2:0] A,
    input [2:0] B,
    output [2:0] O
    );
assign O = (sel) ? B:A;

endmodule
