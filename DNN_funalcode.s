pc = 0x0

main: addi R28 R0 fpmul
    addi R29 R0 fpadd
    addi R21 R0 0x300
    addi R25 R0 0x800
    addi R22 R0 32

h_lp: addi R23 R0 0
    addi R20 R0 0x200
    addi R24 R0 32

in_lp: lw R1 R20 0
    lw R2 R21 0
    jalr R28
    add R1 R23 R0
    add R2 R3 R0
    jalr R29
    add R23 R3 R0
    addi R20 R20 1
    addi R21 R21 1
    addi R24 R24 -1
    bnez R24 in_lp
    lw R4 R0 m_sign
    and R5 R23 R4
    beqz R5 h_pos
    addi R23 R0 0

h_pos: sw R23 R25 0
    addi R25 R25 1
    addi R22 R22 -1
    bnez R22 h_lp
    addi R23 R0 0
    addi R25 R0 0x800
    addi R26 R0 0x850
    addi R24 R0 32

f_lp: lw R1 R25 0
    lw R2 R26 0
    jalr R28
    add R1 R23 R0
    add R2 R3 R0
    jalr R29
    add R23 R3 R0
    addi R25 R25 1
    addi R26 R26 1
    addi R24 R24 -1
    bnez R24 f_lp
    lw R4 R0 m_sign
    and R5 R23 R4
    addi R27 R0 1
    beqz R5 s_fin
    addi R27 R0 0

s_fin: sw R27 R0 out_val
    halt

* ========================================================
* פונקציית כפל נקודה צפה מוגנת (FP32 Multiplication)
* ========================================================
fpmul: beqz R1 m_zero   * הגנה: אם קלט א' הוא אפס, דלג לסיום
    beqz R2 m_zero      * הגנה: אם קלט ב' הוא אפס, דלג לסיום
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

* ========================================================
* פונקציית חיבור נקודה צפה (FP32 Addition)
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

pc = 0x100
m_sign: dc 0x80000000
m_exp:  dc 0x7F800000
m_mant: dc 0x007FFFFF
impl_1: dc 0x00800000
bias_s: dc 0x3F800000
m_b24:  dc 0x01000000

* ========================================================
pc = 0x200                  * --- וקטור קלט מגוון וחדש לחלוטין לדיבאג ---
dc 0x3EB510E5
dc 0xBEC51810
dc 0xBEFBBBD4
dc 0x3DBD2AB1
dc 0x3ECA433A
dc 0xBE0DBAED
dc 0x3F5D8941
dc 0x3EAA56CE
dc 0xBD0C95D5
dc 0xBE46D957
dc 0xBE9086F3
dc 0x3ED3179B
dc 0xBDE27281
dc 0xBF4AE682
dc 0xBE3BECC2
dc 0x3EDB5629
dc 0xBF124ECD
dc 0xBF158D45
dc 0x3D689F39
dc 0x3D6AA88F
dc 0x3E77BA54
dc 0x3F2104A7
dc 0x3ECEDBA8
dc 0x3E4CA377
dc 0x3ECD00FA
dc 0xBEA3293C
dc 0xBE7EC04B
dc 0xBEFA6EBF
dc 0xBEBE1CF6
dc 0x3E716A4A
dc 0xBF3BF542
dc 0xBDF4676C
* ==========================================================
pc = 0x300                 * --- משקולות השכבה הראשונה: 32 נוירונים * 32 משקולות ---
* --- Neuron 1 Weights ---
dc 0x3F02A6D8
dc 0x3FAE57E5
dc 0x3EB3D827
dc 0x3F58EF6A
dc 0xBD313F19
dc 0xBCFDCFF7
dc 0x3DC2E693
dc 0x3F429CE6
dc 0x3EB6A238
dc 0x3E04E374
dc 0x3E9970A3
dc 0x3FD0E363
dc 0x3F1B5F2A
dc 0x3EA1086B
dc 0xBDC01B80
dc 0x3DE6B574
dc 0xBB2BE92C
dc 0x3D82CA1A
dc 0x3E187AB5
dc 0x3E48BCFE
dc 0x3E29C3E3
dc 0x3D0CFEFA
dc 0x3DC7D328
dc 0x3E82557E
dc 0xBD07DB30
dc 0x3F12D4A7
dc 0x3C821C04
dc 0x3E9D099D
dc 0x3F16EA38
dc 0xBF2F27F2
dc 0x3F12A1C6
dc 0xBEAB696A
* --- Neuron 2 Weights ---
dc 0xBE69B40A
dc 0xBFB82DC5
dc 0xBF292861
dc 0xBECC84F9
dc 0x3DF13C41
dc 0x3E1A4B53
dc 0xBC375C83
dc 0xBF43E35F
dc 0xBF0D1500
dc 0xBF4F01A8
dc 0x3D0E5738
dc 0xBFD794B7
dc 0xBF5B792C
dc 0xBE0D2B55
dc 0x3D90E370
dc 0x3DBBCF4C
dc 0xBD983B2D
dc 0xBEDF2F01
dc 0xBEF2EBDD
dc 0xBD479BFD
dc 0xBF12E190
dc 0xBD9539F8
dc 0xBDCAA97A
dc 0x3BDC997C
dc 0xBED58034
dc 0xBF818CC6
dc 0x3E577BC1
dc 0xBEF88036
dc 0xBF0C546F
dc 0x3D89484C
dc 0xBEBE3241
dc 0xBDCAFC20
* --- Neuron 3 Weights ---
dc 0x3E630561
dc 0x3FB308E8
dc 0x3F30067F
dc 0x3DE81F0A
dc 0xBD62891A
dc 0xBDBF0B40
dc 0x3D0BCCDA
dc 0x3F6CF854
dc 0x3F12B936
dc 0x3ED2441D
dc 0xBDFB7AF1
dc 0x3FB121CD
dc 0x3EFFCBD8
dc 0x3E3EE4BE
dc 0x3CA3E99A
dc 0x3C2054BF
dc 0xBE3D36B8
dc 0x3E027828
dc 0x3EF6FA58
dc 0xBE168862
dc 0x3F13879C
dc 0xBDCFFC91
dc 0x3E92B895
dc 0x3E54E181
dc 0xBD613727
dc 0x3F3928D0
dc 0x3E8D5DB9
dc 0x3EB1070E
dc 0x3F0F0B13
dc 0x3E0DEEF9
dc 0x3E880662
dc 0xBE060702
* --- Neuron 4 Weights ---
dc 0x3E7C3D14
dc 0xBF9267F3
dc 0xBF03D92F
dc 0xBF4F7821
dc 0xBE689BE3
dc 0x3E9BD438
dc 0xBE8D2AB5
dc 0xBF3AD211
dc 0xBF0647BF
dc 0xBF3C95AB
dc 0x3DC79C46
dc 0xBFBE6E9A
dc 0xBF3590B1
dc 0xBE7B6DC5
dc 0x3DF28556
dc 0x3E1CD32E
dc 0xBCA0B8BA
dc 0xBED4F19F
dc 0xBEAC7110
dc 0xBE3BA73C
dc 0xBDA6290A
dc 0xBEB23442
dc 0xBE8A3088
dc 0xBEF93FE8
dc 0xBE933940
dc 0xBF107484
dc 0xBEA76A55
dc 0xBE8E9DF4
dc 0xBEE3469A
dc 0xBE81E057
dc 0xBF101A14
dc 0xBE4DB779
* --- Neuron 5 Weights ---
dc 0x3F116340
dc 0x3FC59799
dc 0x3F515831
dc 0x3EE60A9A
dc 0xBE161EBB
dc 0xBDAD867D
dc 0xBD7FDC77
dc 0x3F1CDBB8
dc 0x3E84B873
dc 0x3ECB6BAD
dc 0x3EB5A76D
dc 0x3FD669FF
dc 0x3F88F608
dc 0xBE82556F
dc 0x3F0114AD
dc 0xBDC3C6EC
dc 0xBE01B697
dc 0x3E93CC64
dc 0x3C5DA067
dc 0x3D0D2318
dc 0x3F0CE79C
dc 0xBD44C293
dc 0x3E8E4A63
dc 0x3E5F9953
dc 0x3F2C6DC2
dc 0x3EF8C5F0
dc 0x3ED5ABE5
dc 0x3DC54829
dc 0x3F245301
dc 0x3E656E0C
dc 0x3EAEC7C2
dc 0xBD20D70E
* --- Neuron 6 Weights ---
dc 0xBD8B064A
dc 0xBF87092E
dc 0xBED10A95
dc 0xBE9C893A
dc 0x3E260447
dc 0xBEA3A73F
dc 0xBE6279E1
dc 0xBF4A7879
dc 0xBEDD7BE5
dc 0xBF49C243
dc 0xBE205B7D
dc 0xBFC3FFE7
dc 0xBF2526C4
dc 0xBE153B16
dc 0xBE0C3BD6
dc 0xBEC38F2D
dc 0xBE78B027
dc 0xBE9DA85E
dc 0xBD20AF72
dc 0xBEB88B35
dc 0xBEDF33AF
dc 0x3D805E1E
dc 0xBE371888
dc 0xBF404068
dc 0xBE3DAD11
dc 0xBF06822E
dc 0xBC43CBE7
dc 0xBF174845
dc 0xBE7D59EC
dc 0xBD58115B
dc 0xBEF95B67
dc 0xBE0CE535
* --- Neuron 7 Weights ---
dc 0x3E935AFA
dc 0x3FB0528A
dc 0x3F269F8C
dc 0x3E9054E0
dc 0x3CA7E19D
dc 0x3D4ECFE3
dc 0x3E21B1CB
dc 0x3F4F65D9
dc 0x3E2190EB
dc 0x3F068472
dc 0xBD0B2D3D
dc 0x3FBADF9F
dc 0x3EDAD181
dc 0xBE3513C7
dc 0x3CEFD0A9
dc 0xBE9180E5
dc 0x3E1FC588
dc 0x3EBB5B29
dc 0x3EDC603F
dc 0x3E2279AA
dc 0x3E8F8B5F
dc 0xBE46B9C0
dc 0x3DFA420E
dc 0x3ED57B7B
dc 0x3E5E0687
dc 0x3F124E5C
dc 0xBD0A5C2D
dc 0x3EFD712A
dc 0x3E39FC39
dc 0x3DF50344
dc 0x3EC37810
dc 0xBD3C7E7C
* --- Neuron 8 Weights ---
dc 0xBEBB9A18
dc 0xBF8E58F7
dc 0xBED3FE19
dc 0xBF08CCA5
dc 0xBC99A4E8
dc 0xBE904FD6
dc 0xBC5B86FA
dc 0xBF6CB29E
dc 0xBE952B93
dc 0xBE2D1104
dc 0x3E7EF829
dc 0xBFCA848D
dc 0xBF33A38A
dc 0xBDD84349
dc 0xBE54C686
dc 0xBE061498
dc 0xBCDC0707
dc 0xBF1FC75B
dc 0xBF0A5B17
dc 0xBF16FB3F
dc 0xBED9A8C3
dc 0xBEC30012
dc 0xBA9CCD66
dc 0x3D1B4754
dc 0xBEBBE36B
dc 0xBF44B5DD
dc 0xBE7A1F50
dc 0xBF1442D5
dc 0xBEA00735
dc 0xBE021E16
dc 0xBEC17E6C
dc 0xBE82A86C
* --- Neuron 9 Weights ---
dc 0x3C0D56F6
dc 0xBFC52088
dc 0xBEBA358B
dc 0xBDDD761D
dc 0xBDD5AC3D
dc 0xBEE7CAD2
dc 0xBE81B8AB
dc 0xBF6A7F3A
dc 0xBE6F8F4F
dc 0xBE15AFAE
dc 0xBD3D08AE
dc 0xBFB25851
dc 0xBF6F4561
dc 0xBF2E3D27
dc 0xBB9E63DE
dc 0xBDCA2018
dc 0xBCEAFF04
dc 0xBDD38D5D
dc 0xBE902D66
dc 0xBE6F26B2
dc 0xBF298131
dc 0xBDAEE0E1
dc 0x3D47C533
dc 0xBF162535
dc 0xBC082AF3
dc 0xBF4C2292
dc 0x3D5CCE55
dc 0xBEFA417F
dc 0xBE34143A
dc 0xBDAD4552
dc 0xBED74853
dc 0xBD87703B
* --- Neuron 10 Weights ---
dc 0x3C5E638C
dc 0xBFA319BA
dc 0xBF0A5C86
dc 0xBEFD6822
dc 0xBDEC1773
dc 0xBE463ED5
dc 0x3E2DFD25
dc 0xBF767D8D
dc 0xBEBC7C03
dc 0xBEFE06F6
dc 0xBC125070
dc 0xBFB4DB77
dc 0xBF26F164
dc 0xBEAE07C1
dc 0xBEDFD64C
dc 0xBE44A22D
dc 0xBEED12B4
dc 0xBDBACCB1
dc 0xBDD8A691
dc 0x3E0A9E4D
dc 0xBE490347
dc 0xBE8E973B
dc 0x3EDA6C61
dc 0x3D0DD4CB
dc 0xBE603FF7
dc 0xBE9B9162
dc 0x3D7DBEE3
dc 0xBE109141
dc 0xBE33E5F9
dc 0x3F0F80BF
dc 0xBE89E62A
dc 0x3E034355
* --- Neuron 11 Weights ---
dc 0xBEB8AC4E
dc 0xBFA5D5BC
dc 0xBEA153A7
dc 0xBE3DA919
dc 0xBE9935BE
dc 0xBE062F44
dc 0xBD18585C
dc 0xBFB30348
dc 0xBEB570D4
dc 0xBF464B7E
dc 0x3E8B3F15
dc 0xBFB859F3
dc 0xBF440585
dc 0xBE9B46E7
dc 0x3E190396
dc 0xBEB60C9A
dc 0xBD91F389
dc 0xBE38E500
dc 0xBE6AA9DB
dc 0x3D89785B
dc 0xBE6263EC
dc 0xBE77D0EA
dc 0xBE3F3289
dc 0xBEE23CB8
dc 0xBEBB4178
dc 0xBF96B2C7
dc 0x3CBF1B38
dc 0xBECF49D6
dc 0xBED99CA8
dc 0x3E5AA314
dc 0xBEF3EA24
dc 0x3C4AE4FB
* --- Neuron 12 Weights ---
dc 0x3EB5E01D
dc 0x3F8C0864
dc 0x3EB0688C
dc 0x3EA961A8
dc 0x3E1C3994
dc 0x3D3543A3
dc 0xBE4CDF9C
dc 0x3F96F333
dc 0x3E5721A0
dc 0xBD9D2784
dc 0xBEDDE617
dc 0x3F9B9FF3
dc 0x3F464791
dc 0x3E2A456F
dc 0x3E989B7C
dc 0x3D60D1F4
dc 0x3E2787D9
dc 0x3ECE7BD4
dc 0x3EB6DCA2
dc 0x3E75DE99
dc 0x3E292977
dc 0xBDC3AC13
dc 0xBE494EA4
dc 0xBE5CAF0D
dc 0x3F001A3B
dc 0x3F407563
dc 0x3E04230C
dc 0x3E1A3B26
dc 0x3EF6F84F
dc 0x3C6F8C16
dc 0x3EB00DD7
dc 0x3E8E3438
* --- Neuron 13 Weights ---
dc 0x3C67A8B8
dc 0x3FCB49AC
dc 0x3E659A17
dc 0x3E91726A
dc 0x3F09B12F
dc 0xBC9FF252
dc 0xBED0F0A2
dc 0x3F21E12A
dc 0x3EFB7D48
dc 0x3F1665CD
dc 0x3E87EA8F
dc 0x3FA0C1B8
dc 0x3F1FEAA6
dc 0x3E5C3124
dc 0xBE943065
dc 0xBBA03069
dc 0x3EC0D63C
dc 0x3F0A92C0
dc 0x3E3A9186
dc 0xBD326E12
dc 0x3EDA1E18
dc 0xBCEF9572
dc 0xBD3BACA9
dc 0xBE04776E
dc 0x3D0E940E
dc 0x3F2661F1
dc 0x3DB08544
dc 0x3EA86A57
dc 0x3F37949C
dc 0xBD2C111F
dc 0x3EAD9216
dc 0x3D6E3699
* --- Neuron 14 Weights ---
dc 0xBF3F1292
dc 0xBF8FFDE5
dc 0xBF0CB10D
dc 0xBEEBD5B3
dc 0xBE2D514B
dc 0xBE92E93F
dc 0xBE598EC3
dc 0xBF38260D
dc 0xBEB3AF66
dc 0xBF44EF65
dc 0xBE3A1A49
dc 0xBFC6EB48
dc 0xBF4131D0
dc 0xBD6F5ADD
dc 0x3E4D67ED
dc 0x3D81E6D7
dc 0xBEA23D99
dc 0xBEB02FD5
dc 0xBF14BF44
dc 0x3D506B75
dc 0xBF060399
dc 0xBE088D92
dc 0xBDC1A456
dc 0xBEA2313F
dc 0xBE4ADD16
dc 0xBE84F9B2
dc 0xBEAC4D7D
dc 0x3E1C16D1
dc 0x3C36970E
dc 0xBE241510
dc 0xBEC745D9
dc 0x3E880BDB
* --- Neuron 15 Weights ---
dc 0xBE964336
dc 0xBFB4D447
dc 0xBEFAB930
dc 0xBF22F6C7
dc 0xBEAF28CD
dc 0xBDA7F1DB
dc 0x3DCAED4F
dc 0xBF92F03A
dc 0xBF04B381
dc 0xBD8D9DD1
dc 0x3D1770B3
dc 0xBFD96D49
dc 0xBF3115A6
dc 0x3DF249E1
dc 0x3CDC590F
dc 0xBE460025
dc 0xBE554496
dc 0xBF5C8184
dc 0xBEF7494D
dc 0xBDE0196F
dc 0xBC77BA2E
dc 0xBD59F408
dc 0xBE4D22EB
dc 0xBCFACB0C
dc 0xBC96CA62
dc 0xBF59D796
dc 0xBDB3329B
dc 0xBDF271CC
dc 0xBF21A0DA
dc 0xBE00DBCD
dc 0xBF2F16E0
dc 0xBDBA10A9
* --- Neuron 16 Weights ---
dc 0x3ECC3750
dc 0x3FAC5980
dc 0x3EA78B0F
dc 0x3E9C567F
dc 0x3DF0989E
dc 0xBE8A1151
dc 0xBD885C85
dc 0x3F8B7A05
dc 0x3EC1ED15
dc 0x3FA13535
dc 0x3E333A6E
dc 0x3FD725F6
dc 0x3F50E2CA
dc 0x3DC52B2F
dc 0xBE5A41B6
dc 0x3E12BF85
dc 0x3E8A7B1B
dc 0x3E91B80C
dc 0xBC9CF436
dc 0x3E325284
dc 0x3ECD1D9C
dc 0x3E870FE4
dc 0x3EBFFA4F
dc 0x3E5BF05F
dc 0x3F579A10
dc 0x3F155F6F
dc 0xBE02311A
dc 0x3E0F555A
dc 0x3EE6B031
dc 0x3B76CFD7
dc 0x3EFB4CAA
dc 0xBE8C925A
* --- Neuron 17 Weights ---
dc 0xBE912B26
dc 0xBFA47235
dc 0xBF5B1E27
dc 0xBEC156A7
dc 0xBB1587BB
dc 0x3D0395DE
dc 0x3E692384
dc 0xBF554372
dc 0xBEA8224F
dc 0xBD9CAFFA
dc 0x3CC37110
dc 0xBFAEA0D2
dc 0xBF0242FB
dc 0xBE9B0282
dc 0x3D1DC59F
dc 0x3E282710
dc 0xBD9C8595
dc 0xBE3CE026
dc 0xBD3A58D9
dc 0xBBDB0FB7
dc 0xBEA2BBA8
dc 0x3DDEDA3E
dc 0x3DFF1D8A
dc 0xBE0FCE93
dc 0xBEF5F094
dc 0xBF15DF6C
dc 0xBE8C67EE
dc 0xBDB50419
dc 0xBF2F81BD
dc 0xBE9B6C58
dc 0xBEAD7A7E
dc 0xBE6983FE
* --- Neuron 18 Weights ---
dc 0x3E54E4CE
dc 0x3F8D7E23
dc 0x3F12F79D
dc 0x3ECC1883
dc 0x3ED501BB
dc 0x3E2DE864
dc 0x3E3DEB35
dc 0x3F321BB6
dc 0x3EAABDB5
dc 0x3F5AB013
dc 0xBCFCAAD8
dc 0x3F9E6CD3
dc 0x3F386A12
dc 0x3E1BECAF
dc 0x3D943546
dc 0x3E9C8A6A
dc 0x3F0370B2
dc 0x3EF4C3C2
dc 0x3DDAF9FE
dc 0xBE820967
dc 0x3E888C3D
dc 0x3E28B42C
dc 0x3D0EA03E
dc 0x3D948E9D
dc 0x3E0B8449
dc 0x3EBF5D55
dc 0x3D92A8E0
dc 0x3E5E0FB4
dc 0x3E9C611C
dc 0x3DF3EC09
dc 0x3F31DD68
dc 0x3DF8E1BC
* --- Neuron 19 Weights ---
dc 0x3DE0254A
dc 0x3FA749F4
dc 0x3F068808
dc 0x3ED7109E
dc 0x3EC4D9A0
dc 0x3E5418C4
dc 0x3E00748A
dc 0x3F77C216
dc 0x3F2B0152
dc 0x3F3FA0C8
dc 0xBDA57F05
dc 0x3FC24C8A
dc 0x3F2CE984
dc 0x3E9CCB3B
dc 0x3EDCE9FB
dc 0x3EC8A2DA
dc 0xBD8A27E3
dc 0x3E508DCD
dc 0x3E604512
dc 0x3EC9258F
dc 0x3EB99C0A
dc 0xBE86642A
dc 0x3F0AA37B
dc 0x3EA7F325
dc 0x3E9600E5
dc 0x3F8F39D9
dc 0xBC860D0C
dc 0x3E88907E
dc 0x3D8E1731
dc 0xBEC79B47
dc 0x3D39FAEE
dc 0x3E450F1A
* --- Neuron 20 Weights ---
dc 0x3EDDBBE1
dc 0x3FA67C34
dc 0x3F46E889
dc 0x3D1AC0A3
dc 0xBC0824F0
dc 0x3EAF7A5C
dc 0x3E9355A6
dc 0x3F267B69
dc 0x3F3E6825
dc 0x3F2635AE
dc 0xBEB58E4D
dc 0x3FDBBEFE
dc 0x3F1865C2
dc 0x3E654A38
dc 0xBE843D0C
dc 0xBE80C3B2
dc 0x3E703376
dc 0x3E4D93EC
dc 0x3D9EBC2E
dc 0x3E043A15
dc 0x3E80C514
dc 0x3E37A90A
dc 0xBDF85249
dc 0x3E924CAF
dc 0x3EE05206
dc 0x3F2DEC74
dc 0x3E0B4B98
dc 0x3E8D95CB
dc 0x3EBD25A8
dc 0x3D814D7F
dc 0x3E5AC52C
dc 0x3E09C5F1
* --- Neuron 21 Weights ---
dc 0x3E777E01
dc 0xBFB1D80C
dc 0xBE841CBD
dc 0x3CD25777
dc 0xBEAB4DAE
dc 0xBCC8F1FF
dc 0x3EC8D50F
dc 0xBF6119C8
dc 0xBF0501B3
dc 0xBF2849DA
dc 0x3E55F610
dc 0xBFC98365
dc 0xBF055A50
dc 0x3E0C576A
dc 0x3E41AB85
dc 0x3E8201C0
dc 0x3DDF47AF
dc 0xBEB0BAB3
dc 0xBEA32BCB
dc 0xBDFFE633
dc 0xBF2BAF99
dc 0x3DF9A582
dc 0xBF07FCB5
dc 0xBD3098F8
dc 0xBE2C7A4D
dc 0xBF38497B
dc 0xBE9D1F5C
dc 0xBECCEF81
dc 0xBE38B546
dc 0xBD9D52F5
dc 0xBF08E3E6
dc 0xBB36D384
* --- Neuron 22 Weights ---
dc 0xBD552DD5
dc 0xBF71A83E
dc 0xBF7D4B50
dc 0xBEBECEC7
dc 0xBD9CAAF3
dc 0xBE273E05
dc 0xBE977C78
dc 0xBF86DF22
dc 0xBE9D4147
dc 0xBEAD23DE
dc 0xBE4F8D9F
dc 0xBFBEED5D
dc 0xBF9E921F
dc 0x3D887622
dc 0xBE980712
dc 0xBD9BE0A1
dc 0xBEBDA369
dc 0xBEE18D27
dc 0x3DF70FDB
dc 0xBE4E8D24
dc 0xBEB1D22C
dc 0x3DDD50EE
dc 0xBECAAF13
dc 0x3DA9FE38
dc 0x3DAA2BB8
dc 0xBF63ABFC
dc 0xBE7E69B4
dc 0xBDFA2B3B
dc 0xBE11947C
dc 0xBE361022
dc 0xBF01CCA9
dc 0xBE4F96CF
* --- Neuron 23 Weights ---
dc 0x3E12DB99
dc 0x3F6B6786
dc 0x3F450660
dc 0x3F63B781
dc 0xBD91567E
dc 0xBCA391B0
dc 0x3DA778CF
dc 0x3F48C1C4
dc 0x3EF7F966
dc 0x3F09E42F
dc 0x3E1C6495
dc 0x3FD5E98D
dc 0x3F840C38
dc 0xBD556AB5
dc 0xBD61F611
dc 0x3E171CDF
dc 0x3CD5356E
dc 0x3F28E07A
dc 0x3EB03C49
dc 0x3F3CA5C1
dc 0x3EFCEF6D
dc 0x3DB172D3
dc 0x3E9ADBE0
dc 0x3DF43FFD
dc 0x3DB2D48F
dc 0x3F203972
dc 0x3EA915B8
dc 0x3D8538E9
dc 0x3ECFF4B6
dc 0x3E68539B
dc 0x3EF5862F
dc 0x3EF75AED
* --- Neuron 24 Weights ---
dc 0xBE14386A
dc 0x3F8C9B5B
dc 0x3F4D6FAE
dc 0x3F0B3570
dc 0x3E8DF185
dc 0x3E1505AD
dc 0xBCD1D6E5
dc 0x3F61B2AC
dc 0x3EB7FBA7
dc 0x3F1C3D8C
dc 0x3E8A2483
dc 0x3FDB214C
dc 0x3F333B1A
dc 0x3E38C5E9
dc 0x3E63068D
dc 0x3E1AAEFD
dc 0x3E9C4CD6
dc 0x3E4728B0
dc 0x3EFE8821
dc 0x3DBE1DA8
dc 0x3F07454F
dc 0xBD541A10
dc 0x3DB48555
dc 0x3EB4D169
dc 0x3EF1091B
dc 0x3F355749
dc 0x3E202D68
dc 0x3EA13F65
dc 0x3DD7D942
dc 0x3DD90213
dc 0x3F1318C3
dc 0x3C166DD8
* --- Neuron 25 Weights ---
dc 0xBE1FCC36
dc 0x3FD01981
dc 0x3F5795A1
dc 0x3ED9AD3E
dc 0xBE42C01C
dc 0xBD139428
dc 0xBC8CEBCD
dc 0x3F28F108
dc 0x3D618FD9
dc 0x3F11207F
dc 0x3D430016
dc 0x3FD095EC
dc 0x3F901EE8
dc 0x3EB490C3
dc 0x3E4FDAF4
dc 0x3DB0E6C7
dc 0x3E9031EE
dc 0xBD2400D3
dc 0x3E4488E0
dc 0xBE52DD7B
dc 0x3EE0C96F
dc 0x3D52671B
dc 0xBE0099ED
dc 0x3D9DF107
dc 0x3E1C16F3
dc 0x3F03D87C
dc 0xBE1C3610
dc 0x3D89DE78
dc 0x3E76B9DF
dc 0xBE94615A
dc 0x3D441C10
dc 0x3E4AF86B
* --- Neuron 26 Weights ---
dc 0xBE0E99F2
dc 0xBFAD86DE
dc 0xBF7DAC5D
dc 0xBE3DFCF7
dc 0xBD27A359
dc 0x3D0307EA
dc 0xBDE6DCBD
dc 0xBF39D86E
dc 0xBE5FCDB1
dc 0xBF3212A5
dc 0xBE665D20
dc 0xBFB5A927
dc 0xBF3C835A
dc 0x3D48D04D
dc 0xBE6BF89C
dc 0xBEB2B3A9
dc 0x3D7BE964
dc 0xBE5F7DB5
dc 0xBF02A2C8
dc 0xBDB7C67E
dc 0xBEE6676E
dc 0xBE09FBAF
dc 0xBEB339CE
dc 0xBE6BA532
dc 0xBE37A3FC
dc 0xBEC29136
dc 0x3DB495B0
dc 0xBE83603A
dc 0xBEC48EAC
dc 0xBDE13D1B
dc 0xBEB1EC6B
dc 0xBE6B8D93
* --- Neuron 27 Weights ---
dc 0x3E62B146
dc 0x3F878467
dc 0x3E92CE2A
dc 0x3ED23853
dc 0xBE1DFF6E
dc 0x3DEB0AF3
dc 0x3C681206
dc 0x3F1C0582
dc 0x3EAFBF9D
dc 0x3EBC9108
dc 0xBEACD483
dc 0x3F9E5233
dc 0x3F4D474B
dc 0xBDA97EAC
dc 0xBDA71CD2
dc 0xBB876DF2
dc 0x3E8860BE
dc 0x3EA4EE8C
dc 0x3E6BBCA8
dc 0x3EF176BD
dc 0x3EB12E94
dc 0x3E7AE3E3
dc 0x3E58F198
dc 0x3E083085
dc 0x3EA12A79
dc 0x3F177D0C
dc 0x3EA31D54
dc 0x3F14D768
dc 0x3EDFBFC0
dc 0x3DF72019
dc 0x3EB6D73B
dc 0x3D4DE0CA
* --- Neuron 28 Weights ---
dc 0x3DBF666B
dc 0x3FBD214D
dc 0x3F1357D3
dc 0x3E0CDF22
dc 0x3D2D75B0
dc 0xBD4959ED
dc 0xBCE4D37B
dc 0x3F98B75B
dc 0x3F00AE79
dc 0x3F306AE6
dc 0x3CB04DA3
dc 0x3FC2381E
dc 0x3F447836
dc 0x3D8EDE19
dc 0x3F02BB75
dc 0x3E41C69A
dc 0x3E48DA0F
dc 0x3E998844
dc 0x3E362C85
dc 0x3E740295
dc 0x3F267AC5
dc 0x3E5B2997
dc 0x3E2A55CA
dc 0x3EB5AA42
dc 0xBB9B7057
dc 0x3F140FC7
dc 0xBDF7CA80
dc 0x3F4A33F2
dc 0x3E919931
dc 0x3C677005
dc 0x3ECC9AA2
dc 0x3EA24755
* --- Neuron 29 Weights ---
dc 0xBEF1D5D9
dc 0xBF99DC18
dc 0xBF371174
dc 0xBEBF7FF2
dc 0x3E590EFA
dc 0x3DB37886
dc 0x3E0B8864
dc 0xBF3E769F
dc 0xBF0C755C
dc 0xBE955E89
dc 0x3D3F9FD2
dc 0xBFAD45F9
dc 0xBF516518
dc 0x3DAC3535
dc 0xBE0A3C39
dc 0xBD10009C
dc 0xBB8D79ED
dc 0xBE0E5452
dc 0x3D9D5237
dc 0xBE815E0C
dc 0xBE81216F
dc 0xBE53BB09
dc 0xBECDB883
dc 0xBDC00FEC
dc 0xBF3026A4
dc 0xBF305AD7
dc 0xBE655D6D
dc 0xBD02FE3D
dc 0xBE73881F
dc 0xBD403F66
dc 0xBEB7CA3B
dc 0xBCD16068
* --- Neuron 30 Weights ---
dc 0xBE06E508
dc 0xBF8B949D
dc 0xBEC971AE
dc 0xBEC51972
dc 0x3E329972
dc 0xBE9FAFB8
dc 0xBDF0FBC0
dc 0xBF730267
dc 0xBF289510
dc 0xBED4E853
dc 0x3E2BDC95
dc 0xBFBC56F2
dc 0xBF4B88D8
dc 0x3DE3A69E
dc 0xBE0AAD2C
dc 0xBDCAB5AB
dc 0xBEAE881D
dc 0xBE83F1D9
dc 0xBEBE9820
dc 0xBD35CAD2
dc 0xBF171593
dc 0x3E34B6BF
dc 0xBE8EF409
dc 0xBE71ECE2
dc 0xBE267BD6
dc 0xBF21679B
dc 0xBDF574AA
dc 0xBEEE2DDD
dc 0xBF0C2F39
dc 0xBDEDE052
dc 0x3D4D948B
dc 0x3D6173CE
* --- Neuron 31 Weights ---
dc 0x3DEC900C
dc 0x3F91FB68
dc 0x3EA69D23
dc 0x3ECAEF1C
dc 0x3DB33883
dc 0x3EA7938E
dc 0x3EC57058
dc 0x3F1AE8F3
dc 0x3E821AC8
dc 0x3F0FD65F
dc 0x3D8E8C02
dc 0x3FA08A51
dc 0x3F3832D8
dc 0x3E90C74C
dc 0x3E00C83E
dc 0x3E7A5B0F
dc 0x3D651204
dc 0x3DE9DECE
dc 0x3EBF459D
dc 0x3DD18129
dc 0x3EFC7956
dc 0x3E820C89
dc 0x3EDD1180
dc 0x3F1AA99E
dc 0x3DF4B585
dc 0x3F0093B8
dc 0xBE8F1913
dc 0x3F01A989
dc 0x3F11C148
dc 0xBDAE289C
dc 0x3E936B74
dc 0x3E8294C6
* --- Neuron 32 Weights ---
dc 0xBE9683C8
dc 0xBFCA65DA
dc 0xBE877391
dc 0xBF0EBA1F
dc 0xBE2D973C
dc 0x3E65FD6C
dc 0x3E21BF6D
dc 0xBF6E40B6
dc 0xBE80F7D4
dc 0xBF555123
dc 0xBD870DFA
dc xBFA8393E
dc 0xBF886FB7
dc 0xBD5B6005
dc 0xBE8EE3C2
dc 0xBC3923AE
dc 0xBEC532D5
dc 0xBEF9DF50
dc 0xBB2009DB
dc 0xBEC3DE90
dc 0xBED04B16
dc 0xBD867CF1
dc 0xBE22305A
dc 0x3E0AE92C
dc 0xBEE12A82
dc 0xBF3066D6
dc 0x3DAC6222
dc 0xBEA0B005
dc 0xBF44EDE9
dc 0x3C19C623
dc 0xBF4DAE65
dc 0xBDF45163

* =======================================================
pc = 0x850                 * --- משקולות השכבה השנייה (חבויה -> פלט): 32 משקולות ---
dc 0x4025667D
dc 0xC05FA9A7
dc 0x40344587
dc 0xC00F6F40
dc 0x404139FB
dc 0xC04B4324
dc 0x402143C7
dc 0xC04C1A07
dc 0xC0241ADD
dc 0xC024B159
dc 0xC01DDDD7
dc 0x40278C13
dc 0x40301E11
dc 0xC027EA4C
dc 0xC028C7B8
dc 0x404483D0
dc 0xC0370661
dc 0x402BFF14
dc 0x4021018E
dc 0x4019D8A5
dc 0xC024DC18
dc 0xC041C1AC
dc 0x4030E3BF
dc 0x40498A12
dc 0x4031C4E1
dc 0xC0416965
dc 0x4040EA70
dc 0x4038F326
dc 0xC031829C
dc 0xC027C99F
dc 0x402BA864
dc 0xC016C26B

* =========================================================
pc = 0x800                  * --- כתובת 2048: תוצאות שכבה נסתרת (זמני) ---
ds 32
pc = 0x900                  * --- כתובת 2384: ביט היציאה (החלטת הרשת) ---
out_val: ds 1
* ========================================================