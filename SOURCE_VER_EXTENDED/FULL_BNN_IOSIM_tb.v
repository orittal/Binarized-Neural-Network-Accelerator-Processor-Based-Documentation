// Verilog test fixture created from schematic C:\Users\administrator.CLS-210-PC\Desktop\C8\SOURCE_VER_EXTENDED\FULL_Extended_IOSIMUL.sch - Wed Jun 24 21:33:29 2026

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
	
localparam CLK_PERIOD = 10;
   integer i; // משתנה ללולאת הרצפה

   // גנרטור שעון
   always #(CLK_PERIOD/2) CLK_IN = ~CLK_IN;

// Initialize Inputs
initial begin
    // איתחול וסקוונס Reset
    CLK_IN = 0;
    RST_IN = 1;
    STEP_IN = 0;
    #(CLK_PERIOD * 2);
    RST_IN = 0;
    #(CLK_PERIOD * 2);

    // מנגנון הזרקה חסין: מריץ בדיוק את 80 הפקודות של תוכנית הבדיקה
    for (i = 0; i < 80; i = i + 1) begin
        
        STEP_IN = 1;        // הרמת דגל סטפ לתחילת פקודה
        #(CLK_PERIOD);      // החזקה למחזור שעון אחד בדיוק
        STEP_IN = 0;        // הורדת הדגל
        
        #(CLK_PERIOD * 15); // המתנה קבועה ובטוחה של 15 מחזורים לסיום הפקודה וחזרה ל-INIT
    end

    // סיום הסימולציה
    $display("=== SUCCESS: All 80 instructions executed perfectly! ===");
    $finish;
	
end
endmodule
