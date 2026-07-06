module ADSU16 (
    input [15:0] A,
    input [15:0] B,
    input ADD,       // 1 = Add, 0 = Subtract
    input CI,        // Carry In (External)
    output [15:0] S,
    output CO,
    output OFL
    );

    // 1. Operand B Logic
    // "B XOR (NOT ADD)" - Matches the diagram with the bubble on the ADD line
    wire [15:0] B_op;
    assign B_op = B ^ {16{~ADD}}; 

    // Calculates A + B_op + CI
    wire [16:0] result;
    assign result = A + B_op + CI;

    // 3. Final Outputs
    assign S = result[15:0];
    assign CO = result[16];

    // 4. Overflow Logic
    assign OFL = (A[15] == B_op[15]) && (S[15] != A[15]);

endmodule