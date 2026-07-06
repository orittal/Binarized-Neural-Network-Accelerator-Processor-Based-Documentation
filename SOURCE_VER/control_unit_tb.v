// Verilog test fixture created from schematic E:\adlx\C8\DLX2\control_unit.sch - Mon Jan 12 11:48:24 2026

`timescale 1ns / 1ps

module control_unit_control_unit_sch_tb();

// Inputs
   reg clk;
   reg reset;
   reg step_en;
   reg aeqz;
   reg [31:0] ir;
   reg ack_n;

// Output
   wire busy;
   wire IRce;
   wire PCce;
   wire Ace;
   wire Bce;
   wire Cce;
   wire MARce;
   wire MDRce;
   wire DINce;
   wire MDRsel;
   wire Asel;
   wire add;
   wire test;
   wire shift;
   wire right;
   wire Itype;
   wire jlink;
   wire GPRwe;
   wire init;
   wire halt;
   wire [1:0] s1sel;
   wire [1:0] s2sel;
   wire [2:0] ALUf;
   wire [4:0] DLX_STATE;
   wire wr_n;
   wire [1:0] MAC_STATE;
   wire stop_n;
   wire as_n;

// Bidirs

// Instantiate the UUT
   control_unit UUT (
		.clk(clk), 
		.reset(reset), 
		.step_en(step_en), 
		.busy(busy), 
		.aeqz(aeqz), 
		.ir(ir), 
		.IRce(IRce), 
		.PCce(PCce), 
		.Ace(Ace), 
		.Bce(Bce), 
		.Cce(Cce), 
		.MARce(MARce), 
		.MDRce(MDRce), 
		.DINce(DINce), 
		.MDRsel(MDRsel), 
		.Asel(Asel), 
		.add(add), 
		.test(test), 
		.shift(shift), 
		.right(right), 
		.Itype(Itype), 
		.jlink(jlink), 
		.GPRwe(GPRwe), 
		.init(init), 
		.halt(halt), 
		.s1sel(s1sel), 
		.s2sel(s2sel), 
		.ALUf(ALUf), 
		.DLX_STATE(DLX_STATE), 
		.ack_n(ack_n), 
		.wr_n(wr_n), 
		.MAC_STATE(MAC_STATE), 
		.stop_n(stop_n), 
		.as_n(as_n)
   );	

	initial begin
    clk = 1;
    reset = 1;
    step_en = 0;
    aeqz = 0;
    ir = 32'h1f000000; // change for every instruction
    ack_n = 1;
    
    #11 reset = 0;
    step_en = 1;
    #10 step_en = 0;
    
    // In CC5, the Excel shows ack_n goes to 0
    #30 ack_n = 0; 
    #10 ack_n = 1;
	 // if necessary:
	 //#50 ack_n = 0;
	 //#10 ack_n =1;
	 
	 end
	 
	 always #5 clk = 1-clk;
			
endmodule
