`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:30:09 06/24/2026 
// Design Name: 
// Module Name:    FP_Adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FP_Adder (
    input  [31:0] A,
    input  [31:0] B,
    input        sub, // 0 = Add, 1 = Subtract
    output reg [31:0] Sum
);

    // --- שלב 1: פירוק השדות והטריק של ביט הסימן ---
    wire        sign_A = A[31];
    wire [7:0]  exp_A  = A[30:23];
    wire [23:0] mat_A  = {1'b1, A[22:0]};

    // אם sub=1, שער ה-XOR יהפוך את ביט הסימן המקורי של B ויגרום לחיסור
    wire        sign_B = B[31] ^ sub; 
    wire [7:0]  exp_B  = B[30:23];
    wire [23:0] mat_B  = {1'b1, B[22:0]};

    // רגיסטרים פנימיים למיוון
    reg         sign_large, sign_small;
    reg  [7:0]  exp_large;
    reg  [23:0] mat_large, mat_small;
    reg  [7:0]  exp_diff;

    // --- שלב 2: השוואת חזקות ומציאת המספר הגדול ---
    always @(*) begin
        if (exp_A > exp_B || (exp_A == exp_B && mat_A >= mat_B)) begin
            sign_large = sign_A;
            exp_large  = exp_A;
            mat_large  = mat_A;
            sign_small = sign_B;
            mat_small  = mat_B;
            exp_diff   = exp_A - exp_B;
        end else begin
            sign_large = sign_B;
            exp_large  = exp_B;
            mat_large  = mat_B;
            sign_small = sign_A;
            mat_small  = mat_A;
            exp_diff   = exp_B - exp_A;
        end
    end

    // --- שלב 3: יישור מנטיסות ---
    wire [23:0] mat_small_aligned = mat_small >> exp_diff;

    // --- שלב 4: חיבור או חיסור מנטיסות ---
    reg [24:0] mat_sum;

    always @(*) begin
        if (sign_large == sign_small) begin
            mat_sum = mat_large + mat_small_aligned;
        end else begin
            mat_sum = mat_large - mat_small_aligned;
        end
    end

    // --- שלב 5: נרמול ואריזה מחדש ---
    reg [7:0]  exp_final;
    reg [22:0] mat_final;
    reg        sign_final;

    always @(*) begin
        sign_final = sign_large;
        
        if (mat_sum == 25'b0) begin
            exp_final  = 8'b0;
            mat_final  = 23'b0;
            sign_final = 1'b0;
        end 
        else if (mat_sum[24]) begin
            mat_final = mat_sum[23:1];
            exp_final = exp_large + 1'b1;
        end 
        else begin
            if (mat_sum[23]) begin
                mat_final = mat_sum[22:0];
                exp_final = exp_large;
            end else if (mat_sum[22]) begin
                mat_final = {mat_sum[21:0], 1'b0};
                exp_final = exp_large - 1;
            end else if (mat_sum[21]) begin
                mat_final = {mat_sum[20:0], 2'b0};
                exp_final = exp_large - 2;
            end else if (mat_sum[20]) begin
                mat_final = {mat_sum[19:0], 3'b0};
                exp_final = exp_large - 3;
            end else if (mat_sum[19]) begin
                mat_final = {mat_sum[18:0], 4'b0};
                exp_final = exp_large - 4;
            end else if (mat_sum[18]) begin
                mat_final = {mat_sum[17:0], 5'b0};
                exp_final = exp_large - 5;
            end else begin
                mat_final = mat_sum[22:0];
                exp_final = exp_large;
            end
        end

        Sum = {sign_final, exp_final, mat_final};
    end

endmodule
