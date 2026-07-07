`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:15:44 06/25/2026
// Design Name:   BNN_extention
// Module Name:   C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/BNN_ext_tb.v
// Project Name:  SOURCE_VER
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

module BNN_ext_tb;

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

localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk = ~clk;
	 
	 
initial begin
        // --- מחזור 0: אתחול ראשוני תחת Reset ---
        clk    = 0;
        reset  = 1;
        data_A = 32'h0;
        data_B = 32'h0;
        
        #15; // החזקת הסטטוס קצת מעבר למחזור הראשון
        reset  = 0; // הורדת ה-Reset והתחלת הזרקת הנתונים

        // --- מחזור 1: התאמה מושלמת (Perfect Match) ---
        // כל הביטים זהים לחלוטין. צפוי בגרף: Popcount = 32, Result = 1
        @(posedge clk);
        data_A = 32'hFFFFFFFF;
        data_B = 32'hFFFFFFFF;

        // --- מחזור 2: אי-התאמה מוחלטת (Perfect Mismatch) ---
        // אין אף ביט זהה. צפוי בגרף: Popcount = 0, Result = 0
        @(posedge clk);
        data_A = 32'hFFFFFFFF;
        data_B = 32'h00000000;

        // --- מחזור 3: מקרה קצה - בדיוק על סף הקבלה ---
        // בדיוק 16 ביטים זהים. צפוי בגרף: Popcount = 16, Result = 1
        @(posedge clk);
        data_A = 32'hFFFF0000;
        data_B = 32'hFFFFFFFF;

        // --- מחזור 4: מקרה קצה - ביט אחד מתחת לסף ---
        // רק 15 ביטים זהים. צפוי בגרף: Popcount = 15, Result = 0
        @(posedge clk);
        data_A = 32'h7FFF0000;
        data_B = 32'hFFFFFFFF;

        // --- מחזור 5: הבדיקה הריאלית של הרשת שלך ---
        // הערכים האמיתיים שרצו אצלך. צפוי בגרף: Popcount = 11, Result = 0
        @(posedge clk);
        data_A = 32'hBD864741; // ערך ה-R7 שקיבלת
        data_B = 32'hE259E2E7; // משקולות שכבה 2 מהתמונה

        // --- מחזור 6: ניקוי קווים וסיום ---
        @(posedge clk);
        data_A = 32'h0;
        data_B = 32'h0;

        #20;
    end

endmodule

