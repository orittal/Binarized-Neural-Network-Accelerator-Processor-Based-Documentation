`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:35:34 06/24/2026
// Design Name:   FP_Adder
// Module Name:   C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/fp_adder_tb.v
// Project Name:  SOURCE_VER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FP_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fp_adder_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	FP_Adder uut (
		.A(A), 
		.B(B), 
		.Sum(Sum)
	);

	initial begin
		// אתחול כניסות
        A = 32'b0;
        B = 32'b0;

        // נחכה 100 ננו-שניות להתייצבות הסימולטור
        #100;
        
        // --- טסט 1: חיבור פשוט (1.0 + 1.0 = 2.0) ---
        // 1.0 ב-Float32 מיוצג כ-0x3F800000
        // 2.0 ב-Float32 מיוצג כ-0x40000000
        A = 32'h3F800000; B = 32'h3F800000;
        #20;
        $display("Test 1 [1.0 + 1.0]: Result = %h (Expected: 40000000)", Sum);

        // --- טסט 2: חיבור עם חזקות שונות (2.0 + 1.0 = 3.0) ---
        // 3.0 ב-Float32 מיוצג כ-0x40400000
        A = 32'h40000000; B = 32'h3F800000;
        #20;
        $display("Test 2 [2.0 + 1.0]: Result = %h (Expected: 40400000)", Sum);

        // --- טסט 3: חיבור מספר חיובי ושלילי (5.5 + (-2.5) = 3.0) ---
        // 5.5 = 0x40B00000
        // -2.5 = 0xC0200000 (ביט הסימן השמאלי הוא 1)
        A = 32'h40B00000; B = 32'hC0200000;
        #20;
        $display("Test 3 [5.5 + (-2.5)]: Result = %h (Expected: 40400000)", Sum);

        // --- טסט 4: חיסור שמביא לאפס מוחלט (1.0 - 1.0 = 0.0) ---
        // -1.0 = 0xBF800000
        A = 32'h3F800000; B = 32'hBF800000;
        #20;
        $display("Test 4 [1.0 + (-1.0)]: Result = %h (Expected: 00000000)", Sum);

        $display("--- Testing Finished ---");
        $finish;
    end
      
endmodule

