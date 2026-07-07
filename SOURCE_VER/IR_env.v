`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:34 12/22/2025 
// Design Name: 
// Module Name:    IR_env 
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
module IR_env(
    input  CLK,
    input  EN,
    input  RST,
    input [31:0] DI,
    output [4:0] Aadr,
    output [4:0] Badr,
    output reg [4:0] Cadr,
    output [15:0] imm,
    output [31:0] sext_imm,
    output [5:0] func,
    output reg [2:0] aluf,
    output reg [31:0] IR,
    output [5:0] opcode
 );

    always @(posedge CLK) begin
        if (RST) 
            IR <= 32'd0;
        else if (EN) 
            IR <= DI;
    end

    assign opcode   = IR[31:26];
    assign Aadr     = IR[25:21];
    assign Badr     = IR[20:16];
    assign imm      = IR[15:0];
    assign func     = IR[5:0];
    assign sext_imm = {{16{IR[15]}}, IR[15:0]};

    always @(*) begin
        if (IR[31:26] == 6'b000000)
            Cadr = IR[15:11];
        else if (IR[31:26] == 6'b010111)
            Cadr = 5'd31;
        else
            Cadr = IR[20:16];

        if (IR[31:26] == 6'b000000)
            aluf = IR[2:0];
        else
            aluf = IR[28:26];
    end

endmodule
