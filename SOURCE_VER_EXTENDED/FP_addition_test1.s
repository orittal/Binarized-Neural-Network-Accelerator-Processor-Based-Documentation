pc = 0x0

main: addi R29 R0 fpadd
    addi R25 R0 0x800     * תוצאות הבדיקה יישמרו בבטחה ב-0x800 ומעלה

    * --- בדיקה 1: חיבור סטנדרטי (סימנים זהים) ---
    lw R1 R0 a1_t1
    lw R2 R0 a2_t1
    jalr R29
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 2: חיסור סטנדרטי (סימנים הפוכים, תוצאה חיובית) ---
    lw R1 R0 a1_t2
    lw R2 R0 a2_t2
    jalr R29
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 3: חיבור עם נשיאה במנטיסה (נרמול ימינה) ---
    lw R1 R0 a1_t3
    lw R2 R0 a2_t3
    jalr R29
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 4: חיסור עם ביטול מנטיסות זמני (נרמול שמאלה קשה) ---
    lw R1 R0 a1_t4
    lw R2 R0 a2_t4
    jalr R29
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 5: חיבור עם אפס מוחלט (מעקף זהות) ---
    lw R1 R0 a1_t5
    lw R2 R0 a2_t5
    jalr R29
    sw R3 R25 0
    halt

* ========================================================
* פונקציית חיבור נקודה צפה (FP32 Addition / Subtraction)
* ========================================================
fpadd: beqz R1 r2_rt
    beqz R2 r1_rt
    lw R4 R0 m_mant
    lw R5 R0 m_exp
    or R4 R4 R5
    and R7 R1 R4
    and R8 R2 R4
    sub R9 R7 R8
    lw R4 R0 m_sign
    and R5 R9 R4
    beqz R5 no_swp
    add R4 R1 R0
    add R1 R2 R0
    add R2 R4 R0

no_swp: lw R4 R0 m_exp
    and R7 R1 R4
    and R8 R2 R4
    lw R4 R0 m_sign
    and R5 R1 R4
    and R6 R2 R4
    lw R4 R0 m_mant
    and R11 R1 R4
    and R12 R2 R4
    lw R4 R0 impl_1
    or R11 R11 R4
    or R12 R12 R4
    sub R9 R7 R8

al_lp: beqz R9 al_dn
    srli R12 R12
    lw R4 R0 impl_1
    sub R9 R9 R4
    beqz R0 al_lp

al_dn: xor R4 R5 R6
    lw R10 R0 m_sign
    and R4 R4 R10
    bnez R4 sb_mnt
    add R13 R11 R12
    add R3 R5 R0
    add R9 R7 R0
    lw R4 R0 m_b24
    and R15 R13 R4
    beqz R15 pk_ad
    srli R13 R13
    lw R4 R0 impl_1
    add R9 R9 R4
    beqz R0 pk_ad

sb_mnt: sub R13 R11 R12
    add R3 R5 R0
    add R9 R7 R0
    beqz R13 rt_zr

nm_sb: lw R4 R0 impl_1
    and R15 R13 R4
    bnez R15 pk_ad
    slli R13 R13
    lw R4 R0 impl_1
    sub R9 R9 R4
    bnez R9 nm_sb

pk_ad: lw R4 R0 m_mant
    and R13 R13 R4
    or R3 R3 R9
    or R3 R3 R13
    jr R31

r2_rt: add R3 R2 R0
    jr R31

r1_rt: add R3 R1 R0
    jr R31

rt_zr: addi R3 R0 0
    jr R31

* --- ערכי כניסה מוגדרים מראש עבור 5 הבדיקות ---
a1_t1:  dc 0x3F800000  * 1.0
a2_t1:  dc 0x3FC00000  * 1.5

a1_t2:  dc 0x40200000  * 2.5
a2_t2:  dc 0xBF800000  * -1.0

a1_t3:  dc 0x3FC00000  * 1.5
a2_t3:  dc 0x3FC00000  * 1.5

a1_t4:  dc 0x3FA00000  * 1.25
a2_t4:  dc 0xBF800000  * -1.0

a1_t5:  dc 0x3FC00000  * 1.5
a2_t5:  dc 0x00000000  * 0.0

pc = 0x100
m_sign: dc 0x80000000
m_exp:  dc 0x7F800000
m_mant: dc 0x007FFFFF
impl_1: dc 0x00800000
bias_s: dc 0x3F800000
m_b24:  dc 0x01000000

pc = 0x800
ds 5                   * הקצאת 5 תאים לקבלת התוצאות בזיכרון בבטחה