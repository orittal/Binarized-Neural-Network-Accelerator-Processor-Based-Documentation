// Verilog test fixture created from schematic C:\Users\administrator.CLS-210-PC\Desktop\C8\extended_DLX\extented_DLX\FULL_Extended_IOSIMUL.sch - Tue Jun 23 11:34:15 2026

`timescale 1ns / 1ps

module FULL_Extended_IOSIMUL_FULL_Extended_IOSIMUL_sch_tb();

// Inputs
   reg CLK_IN;
   reg RST_IN;
   reg STEP_IN;

// Output

// Bidirs

// Instantiate the UUT
   FULL_Extended_IOSIMUL UUT (
		.CLK_IN(CLK_IN), 
		.RST_IN(RST_IN), 
		.STEP_IN(STEP_IN)
   );
// Initialize Inputs
initial begin
		  RST_IN = 1;
        STEP_IN = 0;
		  CLK_IN = 1;
        
        #19;
        RST_IN = 0;
        #20;

        STEP_IN = 1;
        #10;
        STEP_IN = 0;
        #140;

        STEP_IN = 1;
        #10;
        STEP_IN = 0;
        #140;

        STEP_IN = 1;
        #10;
        STEP_IN = 0;
        #140;

        STEP_IN = 1;
        #10;
        STEP_IN = 0;
        #140;

        STEP_IN = 1;
        #10;
        STEP_IN = 0;
        #140;
end
		  
always #5 CLK_IN = ~CLK_IN;

endmodule
