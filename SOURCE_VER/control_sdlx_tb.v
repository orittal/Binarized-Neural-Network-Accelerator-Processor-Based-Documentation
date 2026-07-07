`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:57:22 01/12/2026
// Design Name:   CONTROL_SDLXSM
// Module Name:   E:/adlx/C8/DLX/control_sdlx_tb.v
// Project Name:  DLX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CONTROL_SDLXSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_sdlx_tb;

	// Inputs
	reg ack_n;
	reg clk;
	reg reset;
	reg step_en;
	reg busy;
	reg bt;
	reg [31:0] IR;

	// Outputs
	wire IRCE;
	wire PCCE;
	wire ACE;
	wire BCE;
	wire CCE;
	wire MARCE;
	wire MDRCE;
	wire S1SEL0;
	wire S1SEL1;
	wire S2SEL0;
	wire S2SEL1;
	wire DINSEL;
	wire MDRSEL;
	wire ASEL;
	wire ADD;
	wire TEST;
	wire [2:0] ALUF;
	wire SHIFTER;
	wire RIGHT;
	wire ITYPE;
	wire JLINK;
	wire MR;
	wire MW;
	wire GPR_WE;
	wire isINIT;
	wire isHALT;
	wire STOP_N;

	// Instantiate the Unit Under Test (UUT)
	CONTROL_SDLXSM uut (
		.ack_n(ack_n), 
		.clk(clk), 
		.reset(reset), 
		.step_en(step_en), 
		.busy(busy), 
		.bt(bt), 
		.IR(IR), 
		.IRCE(IRCE), 
		.PCCE(PCCE), 
		.ACE(ACE), 
		.BCE(BCE), 
		.CCE(CCE), 
		.MARCE(MARCE), 
		.MDRCE(MDRCE), 
		.S1SEL0(S1SEL0), 
		.S1SEL1(S1SEL1), 
		.S2SEL0(S2SEL0), 
		.S2SEL1(S2SEL1), 
		.DINSEL(DINSEL), 
		.MDRSEL(MDRSEL), 
		.ASEL(ASEL), 
		.ADD(ADD), 
		.TEST(TEST), 
		.ALUF(ALUF), 
		.SHIFTER(SHIFTER), 
		.RIGHT(RIGHT), 
		.ITYPE(ITYPE), 
		.JLINK(JLINK), 
		.MR(MR), 
		.MW(MW), 
		.GPR_WE(GPR_WE), 
		.isINIT(isINIT), 
		.isHALT(isHALT), 
		.STOP_N(STOP_N)
	);

	initial begin
		// Initialize Inputs
		ack_n = 0;
		clk = 1;
		reset = 1;
		step_en = 0;
		busy = 0;
		bt = 0;
		IR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

