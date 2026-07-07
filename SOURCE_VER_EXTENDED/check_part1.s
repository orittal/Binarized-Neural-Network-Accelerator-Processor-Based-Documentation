pc = 0x0

addi r2 r0 100
addi r3 r0 200

lw r4 r2 0
lw r5 r3 0

pc = 0x64
dc 0xa

pc = 0xc8
dc 0x1