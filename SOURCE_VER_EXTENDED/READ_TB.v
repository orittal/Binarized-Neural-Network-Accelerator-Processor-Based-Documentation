// Verilog test fixture created from schematic E:\adlx\C8\Write_Read_master\read_machine.sch - Thu Dec 11 15:51:56 2025

`timescale 1ns / 1ps

module read_machine_read_machine_sch_tb();

// Inputs
   reg STEP_EN;
   reg ACK_N;
   reg [31:0] DI;
   reg clk;
   reg RESET;

// Output
   wire [31:0] RDO;
   wire IN_INIT;
   wire AS_N;
   wire STOP_N;
   wire WR_N;
   wire [31:0] AO;

// Bidirs

// Instantiate the UUT
   read_machine UUT (
		.RDO(RDO), 
		.IN_INIT(IN_INIT), 
		.AS_N(AS_N), 
		.STOP_N(STOP_N), 
		.STEP_EN(STEP_EN), 
		.ACK_N(ACK_N), 
		.WR_N(WR_N), 
		.DI(DI), 
		.AO(AO), 
		.clk(clk), 
		.RESET(RESET)
   );
// Initialize Inputs
    initial begin
		STEP_EN = 0;
		ACK_N = 1;
		DI = 32'hc8;
		clk = 1;
		RESET = 1;
	
		#21;
		RESET = 0;
		#40;
		STEP_EN = 1;
		#20;
		STEP_EN = 0;
		#60;
		ACK_N = 0;
		#20;
		ACK_N = 1;
		
		#50;
	
	end
	
	always #10 clk = 1-clk;
	
endmodule
