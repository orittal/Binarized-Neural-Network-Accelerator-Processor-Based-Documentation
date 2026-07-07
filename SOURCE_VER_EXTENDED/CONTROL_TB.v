// Verilog test fixture created from schematic E:\adlx\C8\load_store\control.sch - Mon Dec 15 11:30:01 2025

`timescale 1ns / 1ps

module control_control_sch_tb();

// Inputs
   reg clk;
   reg RESET;
   reg ACK_N;
   reg STEP_EN;
   reg [5:0] OPCODE;

// Output
   wire AS_N;
   wire MW;
   wire WR_N;
   wire IN_INIT;
   wire MR;
   wire EN_B;
   wire EN_C;
   wire EN_PC;
   wire EN_IR;
   wire EN_GPR;
   wire MUX_SEL;

// Bidirs

// Instantiate the UUT
   control UUT (
		.clk(clk), 
		.RESET(RESET), 
		.AS_N(AS_N), 
		.ACK_N(ACK_N), 
		.MW(MW), 
		.WR_N(WR_N), 
		.STEP_EN(STEP_EN), 
		.IN_INIT(IN_INIT), 
		.MR(MR), 
		.EN_B(EN_B), 
		.EN_C(EN_C), 
		.EN_PC(EN_PC), 
		.EN_IR(EN_IR), 
		.EN_GPR(EN_GPR), 
		.OPCODE(OPCODE), 
		.MUX_SEL(MUX_SEL)
   );
// Initialize Inputs
      initial begin
			clk = 1;
			RESET = 1;
			STEP_EN = 0;
			ACK_N = 1;
			OPCODE = 6'b100011; //load
			//OPCODE = 6'b101011; //store
			//OPCODE = 6'b111111; //HALT

			#21;
			STEP_EN = 1;
			RESET = 0;
			#20
			STEP_EN = 0;
			#60;
			ACK_N = 0;
			#20;
			ACK_N = 1;
			#80;
			ACK_N = 0;
			#20;
			ACK_N = 1;
			#20;
			RESET=1;
			#20;
			RESET=0;

		end
		
		always #10 clk = 1-clk;
		
endmodule
