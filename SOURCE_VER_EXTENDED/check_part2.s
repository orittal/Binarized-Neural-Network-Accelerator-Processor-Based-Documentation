pc = 0x0
addi r2 r0 100      
addi r3 r0 200      
addi r6 r0 32    

LOOP: lw   r4 r2 0        
lw   r5 r3 0                      

addi r2 r2 1      
addi r3 r3 1        
addi r6 r6 -1      
bnez r6 LOOP      

pc = 0x64
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1


pc = 0xC8
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1
dc 1