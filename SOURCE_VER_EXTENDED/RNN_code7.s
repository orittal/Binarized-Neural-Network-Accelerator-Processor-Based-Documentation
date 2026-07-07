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
* פונקציית כפל נקודה צפה (FP32 Multiplication)
* ========================================================
fpmul: xor R6 R1 R2
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
pc = 0x200                  * --- וקטור הקלט המעודכן: 32 אינפוטים מנורמלים ---
dc 0x3EC92F38
dc 0xBEDAFE4A
dc 0xBF0BDA21
dc 0x3DD22F6F
dc 0x3EE0BC7A
dc 0xBECE1EBB
dc 0xBF7CD2E1
dc 0x3F301463
dc 0xBF009A8F
dc 0x3EC3DBDF
dc 0x3EE3C0DF
dc 0x3F3A4BC8
dc 0xBF53F57D
dc 0xBF1AA6B7
dc 0xbe05bcee
dc 0x3F3CA3E0
dc 0xBE285BD3
dc 0x3ECE1A42
dc 0xBF416B99
dc 0x3ED5EFBB
dc 0xBD928802
dc 0xBF4F0CD2
dc 0x3F3A4B8F
dc 0xBECE39A5
dc 0xBE08EAD3
dc 0xBF49FAEC
dc 0xBD965D10
dc 0x3F4CD6C9
dc 0x3EAEFE16
dc 0x3EEAAFCE
dc 0x3EE5BC48
dc 0xBF1EBC4A
* ==========================================================
pc = 0x300                  * --- משקולות השכבה הראשונה: 32 נוירונים * 32 משקולות ---
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
dc 0x3DBBBAA7
dc 0xBE45DDA6
dc 0xBE2ECB58
dc 0xBE0972B5
dc 0x3F05256D
dc 0xBE8EE041
dc 0x3EB3D333
dc 0x3FD0C72C
dc 0xBD63F9AA
dc 0x3EB4CDD2
dc 0xBDD26CA4
dc 0x3EAA5BD2
dc 0xBECE39A1
dc 0x3EC3DC6F
dc 0xBEAA4E5C
dc 0xBDD1ADE3
dc 0xBEB7A2BE
* --- Neuron 3 Weights ---
dc 0xBF1D5D94
dc 0xBF99DC18
dc 0xBF371174
dc 0xBEBF7FF2
dc 0x3E590EFA
dc 0x3DB37886
dc 0x3E0B8864
dc 0xBF3E769F
dc 0xBF0C755C
dc 0xBE9B0D7D
dc 0x3D097A1C
dc 0xBFD94BC8
dc 0xBF5D7AA5
dc 0xBE15FEEA
dc 0x3D88DCEA
dc 0x3DA99ACE
dc 0xBE4CDDA5
dc 0xBE3C4E3D
dc 0xBE086BD9
dc 0x3F08EAD3
dc 0xBE9A4ED5
dc 0x3EA4CCEE
dc 0x3FD23AC4
dc 0xBD54A3DA
dc 0x3EB16BB5
dc 0xBDDAA4DA
dc 0x3EA7A2B6
dc 0xBECE1EBB
dc 0x3EBFE5C6
dc 0xBEA116EE
dc 0xBDC1E1CE
dc 0xBEB577E3
* --- Neuron 4 Weights ---
dc 0xBE0FB9E6
dc 0xBE3B90B9
dc 0x3E1AD3FA
dc 0xBE1FC3C0
dc 0x3F5FAA7C
dc 0x3F57B6CD
dc 0xBE1CDAA3
dc 0xBE0C53C7
dc 0xBE181ED3
dc 0xBE74D83B
dc 0xBE3CFE3A
dc 0xBE0221E5
dc 0xBE285BD0
dc 0x3F4AD26C
dc 0xBDFFE3DA
dc 0x3F34F5DF
dc 0x3F3F5AD4
dc 0x3F0FBAA5
dc 0x3F5FAA7C
dc 0xBDC61BDB
dc 0xBE3C3F8A
dc 0xBE1E04B2
dc 0xBE3981DA
dc 0x3F2AA863
dc 0xBE4CD8EA
dc 0x3F2BA1D1
dc 0xBE4D7A52
dc 0xBE1F17E3
dc 0x3F3EE4FA
dc 0x3F4D2BA2
dc 0xBDF82BAE
dc 0xBE1A5F58
* --- Neuron 5 Weights ---
dc 0x3F1A4BC2
dc 0x3FAF5BD2
dc 0x3EB8EE04
dc 0x3F5CE35E
dc 0xBD2EE4DB
dc 0xBCE4CE2E
dc 0x3DE8CE5B
dc 0x3F45FAA8
dc 0x3EBA4EE1
dc 0x3E0A3D73
dc 0x3EA3D6F5
dc 0x3FD1CD8E
dc 0x3F1FAEB4
dc 0x3EAEFE23
dc 0xBDACCDAA
dc 0x3E04ECB2
dc 0xBB6CE5BF
dc 0x3DC5BD5A
dc 0x3E23EDCE
dc 0x3E54A3DA
dc 0x3E3EE5B4
dc 0x3D1F16AC
dc 0x3DD5EEBB
dc 0x3E8EAAF4
dc 0xBD04ED4E
dc 0x3F19FAEC
dc 0x3CA3CE65
dc 0x3EA3B3B0
dc 0x3F1CE5BC
dc 0xBF297A52
dc 0x3F19FAEC
dc 0xBE9ADCE7
* --- Neuron 6 Weights ---
dc 0xBE0A7CDA
dc 0xBE3CEF6B
dc 0x3DFDE44E
dc 0xBE1FC3CE
dc 0x3F59ACFA
dc 0x3F54F96E
dc 0xBE1AF1D9
dc 0xBDFAF87F
dc 0xBE126CDC
dc 0xBE747CE1
dc 0xBE37078C
dc 0xBDFF586E
dc 0xBE285BCE
dc 0x3F4CE2AA
dc 0xBDFA0B33
dc 0x3F387DAF
dc 0x3F3EEB93
dc 0x3F0CBCE4
dc 0x3F5DE2D6
dc 0xBDC462D6
dc 0xBE3CDDFA
dc 0xBE1E0C4F
dc 0xBE3C4E3D
dc 0x3F2B1ACC
dc 0xBE4E0AA5
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1DF04F
dc 0x3F3F5AD4
dc 0x3F4FC9B4
dc 0xBDFAA7AF
dc 0xBE1C6CE6
* --- Neuron 7 Weights ---
dc 0x3EE09D94
dc 0x3F88EF2D
dc 0x3EA3B38A
dc 0x3F4AE3DB
dc 0xBD40A9A3
dc 0xBCFFD4E9
dc 0x3DDAA4B5
dc 0x3F34B3D4
dc 0x3EA9F8AA
dc 0x3DEF7AE4
dc 0x3E8CE4DB
dc 0x3FBC12F7
dc 0x3F10CDAA
dc 0xBE3B0DCF
dc 0x3E6FBBDB
dc 0xBE8EE5C0
dc 0xBE80CD35
dc 0xBECE4DCB
dc 0xBE326CAC
dc 0x3E54A3DA
dc 0x3EDCE457
dc 0x3EE6C5BC
dc 0x3EAAF5B2
dc 0xBD63C7EE
dc 0x3EACCE3A
dc 0xBE9ADCE7
dc 0x3EA5BBDE
dc 0x3EDE1A4B
dc 0xBEA67CD0
dc 0xBDDECFF4
dc 0x3F026CDC
dc 0x3EE09D43
* --- Neuron 8 Weights ---
dc 0xBE0F3A22
dc 0xBE4071BD
dc 0x3DEC26AC
dc 0xBE1FC3C0
dc 0x3F5A4D1A
dc 0x3F54AD54
dc 0xBE1D5BD2
dc 0xBDFAF87F
dc 0xBE126CDC
dc 0xBE763D40
dc 0xBE3BE3D9
dc 0xBDFAF0DF
dc 0xBE285BD0
dc 0x3F4CD6CE
dc 0xBDFA4F0C
dc 0x3F38A7E0
dc 0x3F3CD3FF
dc 0x3F0FBAA5
dc 0x3F5BEE35
dc 0xBDC6CD3E
dc 0xBE3EA47B
dc 0xBE1E0C4F
dc 0xBE3AA4DA
dc 0x3F2B67AE
dc 0xBE4E08B4
dc 0x3F2BA1CD
dc 0xBE4D7A52
dc 0xBE1DF04F
dc 0x3F3F5AD4
dc 0x3F4CD7EF
dc 0xBDFA5A62
dc 0xBE19AC5A
* --- Neuron 9 Weights ---
dc 0xBE08A9E4
dc 0xBE3FEA74
dc 0x3DFBBDA5
dc 0xBE1FAEE8
dc 0x3F5A0CD2
dc 0x3F567A32
dc 0xBE1DA3C7
dc 0xBE06BC7A
dc 0xBE15FBB8
dc 0xBE752B33
dc 0xBE3DF054
dc 0xBE01DA65
dc 0xBE28CD35
dc 0x3F4CD6C4
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE307
dc 0x3F5FAA5D
dc 0xBDCE1AAF
dc 0xBE3CDDFA
dc 0xBE1E04E5
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D4E3A
dc 0xBE4EE6CB
dc 0xBE1F0CF0
dc 0x3F3EF4DA
dc 0x3F4FE3DF
dc 0xBDFAA7E3
dc 0xBE1C4EEA
* --- Neuron 10 Weights ---
dc 0xBE0E7CBE
dc 0xBE3DCEAA
dc 0x3DFBCDEE
dc 0xBE1FA3D8
dc 0x3F597CD3
dc 0x3F55BDFA
dc 0xBE1DCE4B
dc 0xBDFAE396
dc 0xBE169BDB
dc 0xBE756BC3
dc 0xBE3DCE3E
dc 0xBDFAF57E
dc 0xBE28CD46
dc 0x3F4CDB97
dc 0xBDFFE3E0
dc 0x3F37CE35
dc 0x3F3EDE35
dc 0x3F0FA4DD
dc 0x3F5F6BD0
dc 0xBDC6A6BE
dc 0xBE3D5B99
dc 0xBE1E5BD4
dc 0xBE3CE3AF
dc 0x3F2B6CD0
dc 0xBE4CDCA3
dc 0x3F2BA4DD
dc 0xBE4EAAF0
dc 0xBE1E0C63
dc 0x3F3EEEB8
dc 0x3F4E0CE2
dc 0xBDFAA6BD
dc 0xBE1A3C2A
* --- Neuron 11 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* --- Neuron 12 Weights ---
dc 0xBE0A7CDA
dc 0xBE3FCEAA
dc 0x3E1C5AE2
dc 0xBE1FC3CE
dc 0x3F59A4DE
dc 0x3F56C9AD
dc 0xBE1D5BDE
dc 0xBE086BD9
dc 0xBE156BE3
dc 0xBE756BC4
dc 0xBE3DCD75
dc 0xBE01EE9B
dc 0xBE285BCE
dc 0x3F4CCE35
dc 0xBDFFDFAC
dc 0x3F3A0CE2
dc 0x3F3EDFA8
dc 0x3F0CCE23
dc 0x3F5FAA56
dc 0xBDCE6CDC
dc 0xBE3CD7EF
dc 0xBE1E3A4B
dc 0xBE3CE5AC
dc 0x3F2B6CD2
dc 0xBE4CDCA3
dc 0x3F2D5BD0
dc 0xBE4EEA95
dc 0xBE1EEA9C
dc 0x3F3EFAED
dc 0x3F4FC9B6
dc 0xBDFAA7AF
dc 0xBE1C2BC4
* --- Neuron 13 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* --- Neuron 14 Weights ---
dc 0xBE0A7CDA
dc 0xBE3FCEAA
dc 0x3E1C5AE2
dc 0xBE1FC3CE
dc 0x3F59A4DE
dc 0x3F56C9AD
dc 0xBE1D5BDE
dc 0xBE086BD9
dc 0xBE156BE3
dc 0xBE756BC4
dc 0xBE3DCD75
dc 0xBE01EE9B
dc 0xBE285BCE
dc 0x3F4CCE35
dc 0xBDFFDFAC
dc 0x3F3A0CE2
dc 0x3F3EDFA8
dc 0x3F0CCE23
dc 0x3F5FAA56
dc 0xBDCE6CDC
dc 0xBE3CD7EF
dc 0xBE1E3A4B
dc 0xBE3CE5AC
dc 0x3F2B6CD2
dc 0xBE4CDCA3
dc 0x3F2D5BD0
dc 0xBE4EEA95
dc 0xBE1EEA9C
dc 0x3F3EFAED
dc 0x3F4FC9B6
dc 0xBDFAA7AF
dc 0xBE1C2BC4
* --- Neuron 15 Weights ---
dc 0xBE08A9E4
dc 0xBE3E4DC5
dc 0x3E1AD3FA
dc 0xBE1F04AC
dc 0x3F5A0CD2
dc 0x3F54F96E
dc 0xBE1DA3C7
dc 0xBE0C53C7
dc 0xBE181ED3
dc 0xBE74D83B
dc 0xBE3DF07D
dc 0xBE0221E5
dc 0xBE28BD27
dc 0x3F4E0867
dc 0xBDFFE3DA
dc 0x3F387DAF
dc 0x3F3F5AD4
dc 0x3F0CBCE4
dc 0x3F5FAA7C
dc 0xBDCA1AD2
dc 0xBE3CEF6B
dc 0xBE1E0C4F
dc 0xBE3B89BE
dc 0x3F2B6CAD
dc 0xBE4CD8EA
dc 0x3F2E08BD
dc 0xBE4E08C6
dc 0xBE1F17E3
dc 0x3F3EE4FA
dc 0x3F50DF7D
dc 0xBDFA0695
dc 0xBE1C2A54
* --- Neuron 16 Weights ---
dc 0xBE08CE41
dc 0xBE3C6FA5
dc 0x3DFDE44E
dc 0xBE1DC40A
dc 0x3F5B0CDC
dc 0x3F57B6C5
dc 0xBE1AF1D9
dc 0xBDFF057B
dc 0xBE1424E6
dc 0xBE747CDF
dc 0xBE37078C
dc 0xBDFF586E
dc 0xBE27CB36
dc 0x3F4AD266
dc 0xBDFA0B33
dc 0x3F34F5DC
dc 0x3F3A0CD4
dc 0x3F0BB6C9
dc 0x3F5DAFC4
dc 0xBDC462D6
dc 0xBE3C3F85
dc 0xBE1DF07C
dc 0xBE3981DA
dc 0x3F2AA863
dc 0xBE4EFE6B
dc 0x3F2BA1CD
dc 0xBE4B64EC
dc 0xBE1E0D1B
dc 0x3F3F72B3
dc 0x3F4D2B9F
dc 0xBDFA2E3E
dc 0xBE1A5F58
* --- Neuron 17 Weights ---
dc 0xBE08CE41
dc 0xBE3C6FA5
dc 0x3DFDE44E
dc 0xBE1DC40A
dc 0x3F5B0CDC
dc 0x3F57B6C5
dc 0xBE1AF1D9
dc 0xBDFF057B
dc 0xBE1424E6
dc 0xBE747CDF
dc 0xBE37078C
dc 0xBDFF586E
dc 0xBE27CB36
dc 0x3F4AD266
dc 0xBDFA0B33
dc 0x3F34F5DC
dc 0x3F3A0CD4
dc 0x3F0BB6C9
dc 0x3F5DAFC4
dc 0xBDC462D6
dc 0xBE3C3F85
dc 0xBE1DF07C
dc 0xBE3981DA
dc 0x3F2AA863
dc 0xBE4EFE6B
dc 0x3F2BA1CD
dc 0xBE4B64EC
dc 0xBE1E0D1B
dc 0x3F3F72B3
dc 0x3F4D2B9F
dc 0xBDFA2E3E
dc 0xBE1A5F58
* --- Neuron 18 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* --- Neuron 19 Weights ---
dc 0xBE08A9E4
dc 0xBE3E4DC5
dc 0x3E1AD3FA
dc 0xBE1F04AC
dc 0x3F5A0CD2
dc 0x3F54F96E
dc 0xBE1DA3C7
dc 0xBE0C53C7
dc 0xBE181ED3
dc 0xBE74D83B
dc 0xBE3DF07D
dc 0xBE0221E5
dc 0xBE28BD27
dc 0x3F4E0867
dc 0xBDFFE3DA
dc 0x3F387DAF
dc 0x3F3F5AD4
dc 0x3F0CBCE4
dc 0x3F5FAA7C
dc 0xBDCA1AD2
dc 0xBE3CEF6B
dc 0xBE1E0C4F
dc 0xBE3B89BE
dc 0x3F2B6CAD
dc 0xBE4CD8EA
dc 0x3F2E08BD
dc 0xBE4E08C6
dc 0xBE1F17E3
dc 0x3F3EE4FA
dc 0x3F50DF7D
dc 0xBDFA0695
dc 0xBE1C2A54
* --- Neuron 20 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* --- Neuron 21 Weights ---
dc 0xBE0A7CDA
dc 0xBE3FCEAA
dc 0x3E1C5AE2
dc 0xBE1FC3CE
dc 0x3F59A4DE
dc 0x3F56C9AD
dc 0xBE1D5BDE
dc 0xBE086BD9
dc 0xBE156BE3
dc 0xBE756BC4
dc 0xBE3DCD75
dc 0xBE01EE9B
dc 0xBE285BCE
dc 0x3F4CCE35
dc 0xBDFFDFAC
dc 0x3F3A0CE2
dc 0x3F3EDFA8
dc 0x3F0CCE23
dc 0x3F5FAA56
dc 0xBDCE6CDC
dc 0xBE3CD7EF
dc 0xBE1E3A4B
dc 0xBE3CE5AC
dc 0x3F2B6CD2
dc 0xBE4CDCA3
dc 0x3F2D5BD0
dc 0xBE4EEA95
dc 0xBE1EEA9C
dc 0x3F3EFAED
dc 0x3F4FC9B6
dc 0xBDFAA7AF
dc 0xBE1C2BC4
* --- Neuron 22 Weights ---
dc 0xBE0A7CDA
dc 0xBE3FCEAA
dc 0x3E1C5AE2
dc 0xBE1FC3CE
dc 0x3F59A4DE
dc 0x3F56C9AD
dc 0xBE1D5BDE
dc 0xBE086BD9
dc 0xBE156BE3
dc 0xBE756BC4
dc 0xBE3DCD75
dc 0xBE01EE9B
dc 0xBE285BCE
dc 0x3F4CCE35
dc 0xBDFFDFAC
dc 0x3F3A0CE2
dc 0x3F3EDFA8
dc 0x3F0CCE23
dc 0x3F5FAA56
dc 0xBDCE6CDC
dc 0xBE3CD7EF
dc 0xBE1E3A4B
dc 0xBE3CE5AC
dc 0x3F2B6CD2
dc 0xBE4CDCA3
dc 0x3F2D5BD0
dc 0xBE4EEA95
dc 0xBE1EEA9C
dc 0x3F3EFAED
dc 0x3F4FC9B6
dc 0xBDFAA7AF
dc 0xBE1C2BC4
* --- Neuron 23 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* --- Neuron 24 Weights ---
dc 0xBE08A9E4
dc 0xBE3E4DC5
dc 0x3E1AD3FA
dc 0xBE1F04AC
dc 0x3F5A0CD2
dc 0x3F54F96E
dc 0xBE1DA3C7
dc 0xBE0C53C7
dc 0xBE181ED3
dc 0xBE74D83B
dc 0xBE3DF07D
dc 0xBE0221E5
dc 0xBE28BD27
dc 0x3F4E0867
dc 0xBDFFE3DA
dc 0x3F387DAF
dc 0x3F3F5AD4
dc 0x3F0CBCE4
dc 0x3F5FAA7C
dc 0xBDCA1AD2
dc 0xBE3CEF6B
dc 0xBE1E0C4F
dc 0xBE3B89BE
dc 0x3F2B6CAD
dc 0xBE4CD8EA
dc 0x3F2E08BD
dc 0xBE4E08C6
dc 0xBE1F17E3
dc 0x3F3EE4FA
dc 0x3F50DF7D
dc 0xBDFA0695
dc 0xBE1C2A54
* --- Neuron 25 Weights ---
dc 0xBE08CE41
dc 0xBE3C6FA5
dc 0x3DFDE44E
dc 0xBE1DC40A
dc 0x3F5B0CDC
dc 0x3F57B6C5
dc 0xBE1AF1D9
dc 0xBDFF057B
dc 0xBE1424E6
dc 0xBE747CDF
dc 0xBE37078C
dc 0xBDFF586E
dc 0xBE27CB36
dc 0x3F4AD266
dc 0xBDFA0B33
dc 0x3F34F5DC
dc 0x3F3A0CD4
dc 0x3F0BB6C9
dc 0x3F5DAFC4
dc 0xBDC462D6
dc 0xBE3C3F85
dc 0xBE1DF07C
dc 0xBE3981DA
dc 0x3F2AA863
dc 0xBE4EFE6B
dc 0x3F2BA1CD
dc 0xBE4B64EC
dc 0xBE1E0D1B
dc 0x3F3F72B3
dc 0x3F4D2B9F
dc 0xBDFA2E3E
dc 0xBE1A5F58
* --- Neuron 26 Weights ---
dc 0x3EC23EE3
dc 0x3F16C502
dc 0x3EA6653E
dc 0x3D4AC9BE
dc 0x3D69655D
dc 0x3D2A3C4D
dc 0x3D8A1E2B
dc 0x3E2DEBAC
dc 0x3DF95BFE
dc 0x3DB2D3AA
dc 0x3E3A56AF
dc 0x3D69D2BD
dc 0x3D97CE5F
dc 0x3D99D8CE
dc 0x3E14DBCD
dc 0x3E8A56FA
dc 0x3D4C0A62
dc 0x3E140409
dc 0x3E4BE15F
dc 0x3CC739D6
dc 0x3E1E3ECE
dc 0x3CC225B5
dc 0xBDACCE34
dc 0xBF19525C
dc 0xBE6CDE3B
dc 0xBE30CD1E
dc 0x3B85A3ED
dc 0xBC33941F
dc 0xBB7C4A5A
dc 0xBEBB9AD9
dc 0xBE3AFA4B
dc 0xBE82A36B
* --- Neuron 27 Weights ---
dc 0xBE08CE41
dc 0xBE3C6FA5
dc 0x3DFDE44E
dc 0xBE1DC40A
dc 0x3F5B0CDC
dc 0x3F57B6C5
dc 0xBE1AF1D9
dc 0xBDFF057B
dc 0xBE1424E6
dc 0xBE747CDF
dc 0xBE37078C
dc 0xBDFF586E
dc 0xBE27CB36
dc 0x3F4AD266
dc 0xBDFA0B33
dc 0x3F34F5DC
dc 0x3F3A0CD4
dc 0x3F0BB6C9
dc 0x3F5DAFC4
dc 0xBDC462D6
dc 0xBE3C3F85
dc 0xBE1DF07C
dc 0xBE3981DA
dc 0x3F2AA863
dc 0xBE4EFE6B
dc 0x3F2BA1CD
dc 0xBE4B64EC
dc 0xBE1E0D1B
dc 0x3F3F72B3
dc 0x3F4D2B9F
dc 0xBDFA2E3E
dc 0xBE1A5F58
* --- Neuron 28 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* --- Neuron 29 Weights ---
dc 0xBE08A9E4
dc 0xBE3E4DC5
dc 0x3E1AD3FA
dc 0xBE1F04AC
dc 0x3F5A0CD2
dc 0x3F54F96E
dc 0xBE1DA3C7
dc 0xBE0C53C7
dc 0xBE181ED3
dc 0xBE74D83B
dc 0xBE3DF07D
dc 0xBE0221E5
dc 0xBE28BD27
dc 0x3F4E0867
dc 0xBDFFE3DA
dc 0x3F387DAF
dc 0x3F3F5AD4
dc 0x3F0CBCE4
dc 0x3F5FAA7C
dc 0xBDCA1AD2
dc 0xBE3CEF6B
dc 0xBE1E0C4F
dc 0xBE3B89BE
dc 0x3F2B6CAD
dc 0xBE4CD8EA
dc 0x3F2E08BD
dc 0xBE4E08C6
dc 0xBE1F17E3
dc 0x3F3EE4FA
dc 0x3F50DF7D
dc 0xBDFA0695
dc 0xBE1C2A54
* --- Neuron 30 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* --- Neuron 31 Weights ---
dc 0xBE0A7CDA
dc 0xBE3FCEAA
dc 0x3E1C5AE2
dc 0xBE1FC3CE
dc 0x3F59A4DE
dc 0x3F56C9AD
dc 0xBE1D5BDE
dc 0xBE086BD9
dc 0xBE156BE3
dc 0xBE756BC4
dc 0xBE3DCD75
dc 0xBE01EE9B
dc 0xBE285BCE
dc 0x3F4CCE35
dc 0xBDFFDFAC
dc 0x3F3A0CE2
dc 0x3F3EDFA8
dc 0x3F0CCE23
dc 0x3F5FAA56
dc 0xBDCE6CDC
dc 0xBE3CD7EF
dc 0xBE1E3A4B
dc 0xBE3CE5AC
dc 0x3F2B6CD2
dc 0xBE4CDCA3
dc 0x3F2D5BD0
dc 0xBE4EEA95
dc 0xBE1EEA9C
dc 0x3F3EFAED
dc 0x3F4FC9B6
dc 0xBDFAA7AF
dc 0xBE1C2BC4
* --- Neuron 32 Weights ---
dc 0xBE0EE7CE
dc 0xBE3F87AF
dc 0x3E13EC4F
dc 0xBE1FAEEA
dc 0x3F59ACFA
dc 0x3F56E7E4
dc 0xBE1DE456
dc 0xBE05BBCC
dc 0xBE15FBB8
dc 0xBE74FAEF
dc 0xBE3DF054
dc 0xBE01CE24
dc 0xBE28CD35
dc 0x3F4D2BC8
dc 0xBDFFE3E0
dc 0x3F3A0CD4
dc 0x3F3EEB93
dc 0x3F0CE354
dc 0x3F5FAA5D
dc 0xBDCE3958
dc 0xBE3CDDFA
dc 0xBE1E04B2
dc 0xBE3C4E3D
dc 0x3F2B5BDE
dc 0xBE4CD4F4
dc 0x3F2D6F59
dc 0xBE4EE6CB
dc 0xBE1F0860
dc 0x3F3EF4DA
dc 0x3F4FE47B
dc 0xBDFAA7E3
dc 0xBE1C6CE6
* =======================================================
pc = 0x850                  * --- משקולות השכבה השנייה (חבויה -> פלט): 32 משקולות ---
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