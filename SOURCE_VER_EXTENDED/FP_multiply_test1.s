pc = 0x0

main: addi R28 R0 fpmul
    addi R25 R0 0x800     * תוצאות הבדיקה יישמרו בבטחה ב-0x800 ומעלה

    * --- בדיקה 1: כפל ב-1.0 ---
    lw R1 R0 f1_t1
    lw R2 R0 f2_t1
    jalr R28
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 2: נשיאה במנטיסה ונרמול ימינה ---
    lw R1 R0 f1_t2
    lw R2 R0 f2_t2
    jalr R28
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 3: סימנים הפוכים (חיובי כפול שלילי) ---
    lw R1 R0 f1_t3
    lw R2 R0 f2_t3
    jalr R28
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 4: שלילי כפול שלילי ---
    lw R1 R0 f1_t4
    lw R2 R0 f2_t4
    jalr R28
    sw R3 R25 0
    addi R25 R25 1

    * --- בדיקה 5: הכפלה ב-0.0 ---
    lw R1 R0 f1_t5
    lw R2 R0 f2_t5
    jalr R28
    sw R3 R25 0
    halt

* ========================================================
* פונקציית כפל נקודה צפה מוגנת (FP32 Multiplication)
* ========================================================
fpmul: beqz R1 m_zero   * הגנה חיונית: אם קלט א' הוא אפס, דלג לסיום
    beqz R2 m_zero      * הגנה חיונית: אם קלט ב' הוא אפס, דלג לסיום
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
    jr R31

m_zero: addi R3 R0 0    * שגרת טיפול באפס: החזרת 0 מוחלט ל-R3
    jr R31

* --- ערכי כניסה מוגדרים מראש עבור 5 הבדיקות ---
f1_t1:  dc 0x3FC00000  * 1.5
f2_t1:  dc 0x3F800000  * 1.0

f1_t2:  dc 0x3FC00000  * 1.5
f2_t2:  dc 0x3FC00000  * 1.5

f1_t3:  dc 0x3FC00000  * 1.5
f2_t3:  dc 0xBFC00000  * -1.5

f1_t4:  dc 0xBFC00000  * -1.5
f2_t4:  dc 0xBFC00000  * -1.5

f1_t5:  dc 0x40200000  * 2.5
f2_t5:  dc 0x00000000  * 0.0

pc = 0x100
m_sign: dc 0x80000000
m_exp:  dc 0x7F800000
m_mant: dc 0x007FFFFF
impl_1: dc 0x00800000
bias_s: dc 0x3F800000
m_b24:  dc 0x01000000

pc = 0x800
ds 5                   * כעת אזור הזיכרון פנוי ונקי לחלוטין לקבלת דאטא בלבד!