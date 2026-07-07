`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:04:44 06/16/2026
// Design Name:   BNN_extention
// Module Name:   C:/Users/administrator.CLS-210-PC/Desktop/C8/extended_DLX/extented_DLX/BNN_extention_tb.v
// Project Name:  extented_DLX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BNN_extention
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BNN_extention_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] data_A;
	reg [31:0] data_B;
	reg [31:0] orig_datapath_in;
	reg ACC_UPDATE;
	reg [1:0] BNN_SEL;

	// Outputs
	wire [31:0] to_reg_C;

	// Instantiate the Unit Under Test (UUT)
	BNN_extention uut (
		.clk(clk), 
		.reset(reset), 
		.data_A(data_A), 
		.data_B(data_B), 
		.orig_datapath_in(orig_datapath_in), 
		.ACC_UPDATE(ACC_UPDATE), 
		.BNN_SEL(BNN_SEL), 
		.to_reg_C(to_reg_C)
	);
	
	// Clock generation (100MHz)
    always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		data_A = 0;
		data_B = 0;
		orig_datapath_in = 32'hAAAA_BBBB;
		ACC_UPDATE = 0;
		BNN_SEL = 2'b00;

		// Wait 20 ns for global reset to finish
        #20;
        reset = 0;
        #10;
        
        // =====================================================================
        // TEST 1: Check Default Path (BNN_SEL = 00)
        // =====================================================================
        // to_reg_C should output orig_datapath_in (32'hAAAA_BBBB)
        #10;

        // =====================================================================
        // TEST 2: Accumulator Operations (ACC Instruction)
        // =====================================================================
        ACC_UPDATE = 1;
        data_A = 32'd5;                  // Input value = 5
        data_B = 32'b1111_1111_1111_1111_0000_0000_0000_0000; // Half +1, Half -1
        #10;                             // Wait 1 clock cycle
        
        data_A = 32'd10;                 // Input value = 10
        #10;                             // Wait another clock cycle
        ACC_UPDATE = 0;                  // Stop accumulation
        
        // At this point: 
        // Accumulators 15:0  should be: 0 - 5 - 10 = -15
        // Accumulators 31:16 should be: 0 + 5 + 10 = +15

        // =====================================================================
        // TEST 3: Binarization Layer Extraction (BIN_LAY Instruction)
        // =====================================================================
        BNN_SEL = 2'b10;                 // Select binarized layer output
        #10;
        // to_reg_C should be 32'hFFFF_0000 (1 for positive accumulators, 0 for negative)

        // =====================================================================
        // TEST 4: XNOR & Popcount (XP Instruction)
        // =====================================================================
        BNN_SEL = 2'b01;                 // Select XP output
        data_A = 32'hFFFF_0000;          // Input from hidden layer
        data_B = 32'hFFFF_0000;          // Match weights perfectly (XNOR will be all 1s)
        #10;
        // popcount should be 32, which is >= 16 -> to_reg_C should be 32'h0000_0001
        
        data_B = 32'h0000_FFFF;          // Invert weights (XNOR will be all 0s)
        #10;
        // popcount should be 0, which is < 16 -> to_reg_C should be 32'h0000_0000

        // Finish simulation
        $finish;
    

	end
      
endmodule

