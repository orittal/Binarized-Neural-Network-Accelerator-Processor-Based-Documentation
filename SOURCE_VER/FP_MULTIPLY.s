pc = 0x0

start: lw R1 R0 val1
    lw R2 R0 val2
    xor R6 R1 R2
    lw R4 R0 m_sign
    and R6 R6 R4

    lw R4 R0 m_exp
    and R7 R1 R4
    and R8 R2 R4
    add R9 R7 R8
    lw R5 R0 bias_s
    sub R9 R9 R5

    lw R4 R0 m_mant
    and R11 R1 R4
    and R12 R2 R4
    lw R5 R0 impl_1
    or R11 R11 R5
    or R12 R12 R5

    addi R13 R0 0
    addi R14 R0 24
    addi R10 R0 1

l_mul: and R15 R12 R10
    beqz R15 s_prod
    add R13 R13 R11

s_prod: addi R14 R14 -1
    beqz R14 m_norm
    srli R13 R13
    srli R12 R12
    bnez R14 l_mul

m_norm: lw R4 R0 m_b24
    and R15 R13 R4
    beqz R15 pack_r

    srli R13 R13
    lw R4 R0 impl_1
    add R9 R9 R4

pack_r: lw R4 R0 m_mant
    and R13 R13 R4
    or R3 R13 R9
    or R3 R3 R6
    sw R3 R0 res_val

    halt

m_sign: dc 0x80000000
m_exp: dc 0x7F800000
m_mant: dc 0x007FFFFF
impl_1: dc 0x00800000
bias_s: dc 0x3F800000
m_b24: dc 0x01000000
val1: dc 0x3fa8f5c3
val2: dc 0x40000000
res_val: ds 1