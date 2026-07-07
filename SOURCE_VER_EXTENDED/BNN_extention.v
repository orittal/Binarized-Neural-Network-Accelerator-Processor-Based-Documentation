`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    BNN_extention 
// Description:    BNN Accelerator Extension for DLX supporting Floating-Point Layer 1
//////////////////////////////////////////////////////////////////////////////////
module BNN_extention(
    input clk,
    input reset,
    input [31:0] data_A,            // From Register A (Floating-Point Input Neuron)
    input [31:0] data_B,            // From Register B (Binary Weights Vector)
    input [31:0] orig_datapath_in,  // Original DLX path to Register C
    input ACC_UPDATE,               // Control signal for ACC instruction
    input [1:0] BNN_SEL,            // Control signal for Output MUX
    output reg [31:0] to_reg_C      // Output directly connected to Register C input
    );
     
    // =========================================================================
    // 1. Layer 1: Accumulators (ACC & BIN_LAY Instructions) - FLOATING POINT
    // =========================================================================
    reg [31:0] accumulators [0:31];      // 32 רגיסטרים השומרים ערכי נקודה צפה
    wire [31:0] next_accumulators [0:31]; // המוצאים הקומבינטוריים של המקשרים
    wire [31:0] binarized_layer;
    integer idx;

    // instantiating 32 Floating-Point Adder/Subtractor Units
    generate
        genvar g_idx;
        for (g_idx = 0; g_idx < 32; g_idx = g_idx + 1) begin : fp_adder_block
            
            // יחידת החיבור/חיסור הממשית לכל אקומולטור
            FP_Adder u_fp_add_sub (
                .A(accumulators[g_idx]),
                .B(data_A),
                .sub(~data_B[g_idx]), // אם משקולת=1 מבצעים חיבור (sub=0), אם משקולת=0 מבצעים חיסור (sub=1)
                .Sum(next_accumulators[g_idx])
            );
            
            // שכבת האקטיבציה: בנקודה צפה, ביט 31 הוא ביט הסימן (0 = חיובי/אפס, 1 = שלילי)
            assign binarized_layer[g_idx] = ~accumulators[g_idx][31];
        end
    endgenerate

    // עדכון רגיסטרים סינכרוני בשעון
    always @(posedge clk) begin
        if (reset) begin
            for (idx = 0; idx < 32; idx = idx + 1) begin
                accumulators[idx] <= 32'h00000000; // בתקן IEEE-754, כולו אפסים זה בדיוק 0.0 מוחלט
            end
        end 
        else if (ACC_UPDATE) begin
            for (idx = 0; idx < 32; idx = idx + 1) begin
                accumulators[idx] <= next_accumulators[idx]; // דגימת ערך ה-FP הבא שחושב
            end
        end
    end


    // =========================================================================
    // 2. Layer 2: XNOR & Behavioral Popcount (XP Instruction)
    // =========================================================================
    wire [31:0] xnor_result;
    reg [5:0] pop_count_out;
    wire xp_out_bit;
    wire [31:0] xp_final_word;
    integer i;

    // Bitwise XNOR (פעולה דיגיטלית טהורה - לא אכפת לה אם הנתון הוא שלם או פלואוט)
    assign xnor_result = ~(data_A ^ data_B);

    // Behavioral Popcount loop
    always @(*) begin
        pop_count_out = 6'd0;
        for (i = 0; i < 32; i = i + 1) begin
            if (xnor_result[i]) begin
                pop_count_out = pop_count_out + 1'b1;
            end
        end
    end

    // Threshold classification and padding
    assign xp_out_bit = (pop_count_out >= 6'd16) ? 1'b1 : 1'b0;
    assign xp_final_word = {31'b0, xp_out_bit};


    // =========================================================================
    // 3. Output Multiplexer (Override MUX)
    // =========================================================================
    always @(*) begin
        case (BNN_SEL)
            2'b01:   to_reg_C = xp_final_word;     // Select XP result
            2'b10:   to_reg_C = binarized_layer;   // Select BIN_LAY result
            default: to_reg_C = orig_datapath_in;  // Select original DLX result
        endcase
    end

endmodule
