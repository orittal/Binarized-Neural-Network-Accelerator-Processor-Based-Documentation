`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:03:29 06/16/2026
// Design Name:   BNN_control
// Module Name:   C:/Users/administrator.CLS-210-PC/Desktop/C8/extended_DLX/extented_DLX/BNN_extension.v
// Project Name:  extented_DLX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BNN_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BNN_extension;

	// Inputs
	reg clk;
	reg reset;
	reg step_en;
	reg busy;
	reg AEQZ;
	reg [31:0] IR;

	// Outputs
	wire IRCE;
	wire PCCE;
	wire ACE;
	wire BCE;
	wire CCE;
	wire MARCE;
	wire MDRCE;
	wire [1:0] S1SEL;
	wire [1:0] S2SEL;
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
	wire [1:0] BNN_SEL;
	wire ACC_UPDATE;
	wire [4:0] DLX_STATE;

	// Instantiate the Unit Under Test (UUT)
	BNN_control uut (
		.clk(clk), 
		.reset(reset), 
		.step_en(step_en), 
		.busy(busy), 
		.AEQZ(AEQZ), 
		.IR(IR), 
		.IRCE(IRCE), 
		.PCCE(PCCE), 
		.ACE(ACE), 
		.BCE(BCE), 
		.CCE(CCE), 
		.MARCE(MARCE), 
		.MDRCE(MDRCE), 
		.S1SEL(S1SEL), 
		.S2SEL(S2SEL), 
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
		.BNN_SEL(BNN_SEL), 
		.ACC_UPDATE(ACC_UPDATE), 
		.DLX_STATE(DLX_STATE)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		step_en = 0;
		busy = 0;
		AEQZ = 0;
		IR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

