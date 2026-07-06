// Verilog test fixture created from schematic E:\adlx\C8\SOURCE_VER\LA.sch - Thu Dec 04 11:24:41 2025

`timescale 1ns / 1ps

module LA_LA_sch_tb();

// Inputs
   reg in_init;
   reg step_en;
   reg [4:0] ai;
   reg stop_n;
   reg [31:0] monitor_signals;
   reg clk;

// Output
   wire [31:0] DOUT;
   wire [4:0] STATUS;

// Bidirs

// Instantiate the UUT
   LA UUT (
		.in_init(in_init), 
		.step_en(step_en), 
		.ai(ai), 
		.stop_n(stop_n), 
		.monitor_signals(monitor_signals), 
		.clk(clk), 
		.DOUT(DOUT), 
		.STATUS(STATUS)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		in_init = 0;
		step_en = 0;
		ai = 0;
		stop_n = 0;
		monitor_signals = 0;
		clk = 0;
   `endif
endmodule
