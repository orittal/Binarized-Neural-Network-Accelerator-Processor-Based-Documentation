pc = 0x0
start: 	addi R1 R0 5
	addi R2 R0 5
	sub R3 R1 R2
	bnez R3 2
	addi R4 R0 10
	jalr R4
	halt 
	special-nop
	special-nop
	special-nop
	add R5 R1 R2
	xor R6 R5 R1
	jr R31