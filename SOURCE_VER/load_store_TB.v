// Verilog test fixture created from schematic E:\adlx\C8\load_store\load_store_simul.sch - Mon Dec 29 10:05:23 2025

`timescale 1ns / 1ps

module load_store_simul_load_store_simul_sch_tb();

// Inputs
   reg clk_in;
   reg RESET;
   reg step_in;

// Output

// Bidirs

// Instantiate the UUT
   load_store_simul UUT (
		.clk_in(clk_in), 
		.RESET(RESET), 
		.step_in(step_in)
   );
// Initialize Inputs
      initial begin
		clk_in = 0;
		RESET = 1;
		step_in = 0;
		#21;
		RESET = 0;
		
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
		#100;
		//instruction
		step_in = 1;
		#10;
		step_in = 0;
	end
	
	always #5 clk_in = 1 - clk_in;
	
endmodule
