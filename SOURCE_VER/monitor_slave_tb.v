// Verilog test fixture created from schematic E:\adlx\C8\SOURCE_VER\monitor_slave.sch - Thu Dec 04 11:45:06 2025

`timescale 1ns / 1ps

module monitor_slave_monitor_slave_sch_tb();

// Inputs
   reg IN_INIT;
   reg STEP_EN;
   reg STOP_N;
   reg [31:0] D_IN;
   reg clk;
   reg [31:0] A_IN;
   reg [31:0] B_IN;
   reg Cardsel;
   reg WR_N;
   reg [9:0] AI;

// Output
   wire SACK_N;
   wire [31:0] SDO;
   wire [4:0] reg_adr;

// Bidirs

// Instantiate the UUT
   monitor_slave UUT (
		.IN_INIT(IN_INIT), 
		.STEP_EN(STEP_EN), 
		.STOP_N(STOP_N), 
		.D_IN(D_IN), 
		.clk(clk), 
		.A_IN(A_IN), 
		.B_IN(B_IN), 
		.Cardsel(Cardsel), 
		.WR_N(WR_N), 
		.SACK_N(SACK_N), 
		.SDO(SDO), 
		.reg_adr(reg_adr), 
		.AI(AI)
   );
// Initialize Inputs
      initial begin
			IN_INIT = 1;
			STEP_EN = 0;
			STOP_N = 1;
			D_IN = 32'h80000048;
			clk = 1;
			A_IN = 0;
			B_IN = 0;
			Cardsel = 0;
			WR_N = 0;
			AI = 0;
			
			
			#22;
			D_IN = 32'hC0000048;
			STEP_EN =1;
			#20;
			D_IN = 32'h00000048;
			STEP_EN=0;
			IN_INIT=0;
			#100;
			D_IN = 32'h80000048;
			IN_INIT=1;
			#100;
			D_IN = 32'hC000001D;
			STEP_EN=1;
			#20;
			D_IN = 32'h0000001D;
			STEP_EN=0;
			IN_INIT=0;
			#100;
			STOP_N = 0;
			#40;
			STOP_N = 1;
			#100;
			D_IN = 32'h8000001D;
			IN_INIT=1;
			#20; 
			
		end 
	
		always #10 clk = 1-clk;
		

endmodule
