.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040F68
/* 31768 80040F68 0780033C */  lui        $v1, %hi(D_800758B4)
/* 3176C 80040F6C B458638C */  lw         $v1, %lo(D_800758B4)($v1)
/* 31770 80040F70 0780023C */  lui        $v0, %hi(g_LevelId)
/* 31774 80040F74 6C59428C */  lw         $v0, %lo(g_LevelId)($v0)
/* 31778 80040F78 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3177C 80040F7C 1000B0AF */  sw         $s0, 0x10($sp)
/* 31780 80040F80 21800000 */  addu       $s0, $zero, $zero
/* 31784 80040F84 1800BFAF */  sw         $ra, 0x18($sp)
/* 31788 80040F88 03006210 */  beq        $v1, $v0, .L80040F98
/* 3178C 80040F8C 1400B1AF */   sw        $s1, 0x14($sp)
/* 31790 80040F90 96040108 */  j          .L80041258
/* 31794 80040F94 21100000 */   addu      $v0, $zero, $zero
.L80040F98:
/* 31798 80040F98 0880023C */  lui        $v0, %hi(g_Spyro + 0x160)
/* 3179C 80040F9C B88B428C */  lw         $v0, %lo(g_Spyro + 0x160)($v0)
/* 317A0 80040FA0 00000000 */  nop
/* 317A4 80040FA4 08004010 */  beqz       $v0, .L80040FC8
/* 317A8 80040FA8 0EFE0224 */   addiu     $v0, $zero, -0x1F2
/* 317AC 80040FAC 0880033C */  lui        $v1, %hi(g_Spyro + 0x114)
/* 317B0 80040FB0 6C8B638C */  lw         $v1, %lo(g_Spyro + 0x114)($v1)
/* 317B4 80040FB4 00000000 */  nop
/* 317B8 80040FB8 03006018 */  blez       $v1, .L80040FC8
/* 317BC 80040FBC 24208200 */   and       $a0, $a0, $v0
/* 317C0 80040FC0 FFFB0224 */  addiu      $v0, $zero, -0x401
/* 317C4 80040FC4 24208200 */  and        $a0, $a0, $v0
.L80040FC8:
/* 317C8 80040FC8 0880073C */  lui        $a3, %hi(g_Spyro + 0x2C)
/* 317CC 80040FCC 848AE724 */  addiu      $a3, $a3, %lo(g_Spyro + 0x2C)
/* 317D0 80040FD0 0000E28C */  lw         $v0, 0x0($a3)
/* 317D4 80040FD4 00000000 */  nop
/* 317D8 80040FD8 24208200 */  and        $a0, $a0, $v0
/* 317DC 80040FDC F1058230 */  andi       $v0, $a0, 0x5F1
/* 317E0 80040FE0 4F004010 */  beqz       $v0, .L80041120
/* 317E4 80040FE4 00000000 */   nop
/* 317E8 80040FE8 0880033C */  lui        $v1, %hi(g_Spyro + 0x164)
/* 317EC 80040FEC BC8B638C */  lw         $v1, %lo(g_Spyro + 0x164)($v1)
/* 317F0 80040FF0 00000000 */  nop
/* 317F4 80040FF4 4B006004 */  bltz       $v1, .L80041124
/* 317F8 80040FF8 00048230 */   andi      $v0, $a0, 0x400
/* 317FC 80040FFC 0780023C */  lui        $v0, %hi(D_800756A0)
/* 31800 80041000 A056428C */  lw         $v0, %lo(D_800756A0)($v0)
/* 31804 80041004 00000000 */  nop
/* 31808 80041008 05004014 */  bnez       $v0, .L80041020
/* 3180C 8004100C 10008230 */   andi      $v0, $a0, 0x10
/* 31810 80041010 FFFF6224 */  addiu      $v0, $v1, -0x1
/* 31814 80041014 0880013C */  lui        $at, %hi(g_Spyro + 0x164)
/* 31818 80041018 BC8B22AC */  sw         $v0, %lo(g_Spyro + 0x164)($at)
/* 3181C 8004101C 10008230 */  andi       $v0, $a0, 0x10
.L80041020:
/* 31820 80041020 08004010 */  beqz       $v0, .L80041044
/* 31824 80041024 20008230 */   andi      $v0, $a0, 0x20
/* 31828 80041028 0880023C */  lui        $v0, %hi(g_Spyro + 0x164)
/* 3182C 8004102C BC8B428C */  lw         $v0, %lo(g_Spyro + 0x164)($v0)
/* 31830 80041030 00000000 */  nop
/* 31834 80041034 2E004104 */  bgez       $v0, .L800410F0
/* 31838 80041038 19000424 */   addiu     $a0, $zero, 0x19
/* 3183C 8004103C 3C040108 */  j          .L800410F0
/* 31840 80041040 1F000424 */   addiu     $a0, $zero, 0x1F
.L80041044:
/* 31844 80041044 09004010 */  beqz       $v0, .L8004106C
/* 31848 80041048 D4FFE524 */   addiu     $a1, $a3, -0x2C
/* 3184C 8004104C 0780023C */  lui        $v0, %hi(g_Spu + 0x2CC)
/* 31850 80041050 D461428C */  lw         $v0, %lo(g_Spu + 0x2CC)($v0)
/* 31854 80041054 04000624 */  addiu      $a2, $zero, 0x4
/* 31858 80041058 1F004490 */  lbu        $a0, 0x1F($v0)
/* 3185C 8004105C 9E56010C */  jal        PlaySound
/* 31860 80041060 7402E724 */   addiu     $a3, $a3, 0x274
/* 31864 80041064 3C040108 */  j          .L800410F0
/* 31868 80041068 07000424 */   addiu     $a0, $zero, 0x7
.L8004106C:
/* 3186C 8004106C 40008230 */  andi       $v0, $a0, 0x40
/* 31870 80041070 03004010 */  beqz       $v0, .L80041080
/* 31874 80041074 80008230 */   andi      $v0, $a0, 0x80
/* 31878 80041078 3C040108 */  j          .L800410F0
/* 3187C 8004107C 1B000424 */   addiu     $a0, $zero, 0x1B
.L80041080:
/* 31880 80041080 03004010 */  beqz       $v0, .L80041090
/* 31884 80041084 00018230 */   andi      $v0, $a0, 0x100
/* 31888 80041088 3C040108 */  j          .L800410F0
/* 3188C 8004108C 1C000424 */   addiu     $a0, $zero, 0x1C
.L80041090:
/* 31890 80041090 03004010 */  beqz       $v0, .L800410A0
/* 31894 80041094 00048230 */   andi      $v0, $a0, 0x400
/* 31898 80041098 3C040108 */  j          .L800410F0
/* 3189C 8004109C 16000424 */   addiu     $a0, $zero, 0x16
.L800410A0:
/* 318A0 800410A0 13004010 */  beqz       $v0, .L800410F0
/* 318A4 800410A4 0E000424 */   addiu     $a0, $zero, 0xE
/* 318A8 800410A8 9AFA000C */  jal        func_8003EA68
/* 318AC 800410AC 1D000424 */   addiu     $a0, $zero, 0x1D
/* 318B0 800410B0 0880023C */  lui        $v0, %hi(g_Spyro + 0x29C)
/* 318B4 800410B4 F48C428C */  lw         $v0, %lo(g_Spyro + 0x29C)($v0)
/* 318B8 800410B8 00000000 */  nop
/* 318BC 800410BC 0000428C */  lw         $v0, 0x0($v0)
/* 318C0 800410C0 00000000 */  nop
/* 318C4 800410C4 0C004010 */  beqz       $v0, .L800410F8
/* 318C8 800410C8 00000000 */   nop
/* 318CC 800410CC 0780023C */  lui        $v0, %hi(D_800756A0)
/* 318D0 800410D0 A056428C */  lw         $v0, %lo(D_800756A0)($v0)
/* 318D4 800410D4 00000000 */  nop
/* 318D8 800410D8 07004014 */  bnez       $v0, .L800410F8
/* 318DC 800410DC FFFF0224 */   addiu     $v0, $zero, -0x1
/* 318E0 800410E0 0880013C */  lui        $at, %hi(g_Spyro + 0x164)
/* 318E4 800410E4 BC8B22AC */  sw         $v0, %lo(g_Spyro + 0x164)($at)
/* 318E8 800410E8 3E040108 */  j          .L800410F8
/* 318EC 800410EC 00000000 */   nop
.L800410F0:
/* 318F0 800410F0 9AFA000C */  jal        func_8003EA68
/* 318F4 800410F4 00000000 */   nop
.L800410F8:
/* 318F8 800410F8 0880033C */  lui        $v1, %hi(g_Spyro + 0x160)
/* 318FC 800410FC B88B6324 */  addiu      $v1, $v1, %lo(g_Spyro + 0x160)
/* 31900 80041100 0000628C */  lw         $v0, 0x0($v1)
/* 31904 80041104 00000000 */  nop
/* 31908 80041108 5A004228 */  slti       $v0, $v0, 0x5A
/* 3190C 8004110C 02004010 */  beqz       $v0, .L80041118
/* 31910 80041110 5A000224 */   addiu     $v0, $zero, 0x5A
/* 31914 80041114 000062AC */  sw         $v0, 0x0($v1)
.L80041118:
/* 31918 80041118 96040108 */  j          .L80041258
/* 3191C 8004111C 01000224 */   addiu     $v0, $zero, 0x1
.L80041120:
/* 31920 80041120 00048230 */  andi       $v0, $a0, 0x400
.L80041124:
/* 31924 80041124 1D004010 */  beqz       $v0, .L8004119C
/* 31928 80041128 00FC9130 */   andi      $s1, $a0, 0xFC00
/* 3192C 8004112C 0880103C */  lui        $s0, %hi(g_Spyro + 0x164)
/* 31930 80041130 BC8B1026 */  addiu      $s0, $s0, %lo(g_Spyro + 0x164)
/* 31934 80041134 0000028E */  lw         $v0, 0x0($s0)
/* 31938 80041138 00000000 */  nop
/* 3193C 8004113C 16004004 */  bltz       $v0, .L80041198
/* 31940 80041140 00000000 */   nop
/* 31944 80041144 E9F7000C */  jal        func_8003DFA4
/* 31948 80041148 00000000 */   nop
/* 3194C 8004114C 0780023C */  lui        $v0, %hi(D_800756A0)
/* 31950 80041150 A056428C */  lw         $v0, %lo(D_800756A0)($v0)
/* 31954 80041154 00000000 */  nop
/* 31958 80041158 05004014 */  bnez       $v0, .L80041170
/* 3195C 8004115C 00000000 */   nop
/* 31960 80041160 0000028E */  lw         $v0, 0x0($s0)
/* 31964 80041164 00000000 */  nop
/* 31968 80041168 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3196C 8004116C 000002AE */  sw         $v0, 0x0($s0)
.L80041170:
/* 31970 80041170 0880023C */  lui        $v0, %hi(g_Spyro + 0x160)
/* 31974 80041174 B88B428C */  lw         $v0, %lo(g_Spyro + 0x160)($v0)
/* 31978 80041178 00000000 */  nop
/* 3197C 8004117C 5A004228 */  slti       $v0, $v0, 0x5A
/* 31980 80041180 03004010 */  beqz       $v0, .L80041190
/* 31984 80041184 5A000224 */   addiu     $v0, $zero, 0x5A
/* 31988 80041188 0880013C */  lui        $at, %hi(g_Spyro + 0x160)
/* 3198C 8004118C B88B22AC */  sw         $v0, %lo(g_Spyro + 0x160)($at)
.L80041190:
/* 31990 80041190 9AFA000C */  jal        func_8003EA68
/* 31994 80041194 1D000424 */   addiu     $a0, $zero, 0x1D
.L80041198:
/* 31998 80041198 01001024 */  addiu      $s0, $zero, 0x1
.L8004119C:
/* 3199C 8004119C 00802232 */  andi       $v0, $s1, 0x8000
/* 319A0 800411A0 0D004010 */  beqz       $v0, .L800411D8
/* 319A4 800411A4 00082232 */   andi      $v0, $s1, 0x800
/* 319A8 800411A8 9AFA000C */  jal        func_8003EA68
/* 319AC 800411AC 0C000424 */   addiu     $a0, $zero, 0xC
/* 319B0 800411B0 0880103C */  lui        $s0, %hi(g_Spyro + 0x188)
/* 319B4 800411B4 E08B1026 */  addiu      $s0, $s0, %lo(g_Spyro + 0x188)
/* 319B8 800411B8 21200002 */  addu       $a0, $s0, $zero
/* 319BC 800411BC CC5C000C */  jal        func_80017330
/* 319C0 800411C0 00080524 */   addiu     $a1, $zero, 0x800
/* 319C4 800411C4 6CFF0426 */  addiu      $a0, $s0, -0x94
/* 319C8 800411C8 C05D000C */  jal        VecCopy
/* 319CC 800411CC 21280002 */   addu      $a1, $s0, $zero
/* 319D0 800411D0 01001024 */  addiu      $s0, $zero, 0x1
/* 319D4 800411D4 00082232 */  andi       $v0, $s1, 0x800
.L800411D8:
/* 319D8 800411D8 0A004010 */  beqz       $v0, .L80041204
/* 319DC 800411DC 11000224 */   addiu     $v0, $zero, 0x11
/* 319E0 800411E0 0880033C */  lui        $v1, %hi(g_Spyro + 0x78)
/* 319E4 800411E4 D08A638C */  lw         $v1, %lo(g_Spyro + 0x78)($v1)
/* 319E8 800411E8 00000000 */  nop
/* 319EC 800411EC 0F006210 */  beq        $v1, $v0, .L8004122C
/* 319F0 800411F0 2C000224 */   addiu     $v0, $zero, 0x2C
/* 319F4 800411F4 9AFA000C */  jal        func_8003EA68
/* 319F8 800411F8 11000424 */   addiu     $a0, $zero, 0x11
/* 319FC 800411FC 88040108 */  j          .L80041220
/* 31A00 80041200 01001024 */   addiu     $s0, $zero, 0x1
.L80041204:
/* 31A04 80041204 0880033C */  lui        $v1, %hi(g_Spyro + 0x78)
/* 31A08 80041208 D08A638C */  lw         $v1, %lo(g_Spyro + 0x78)($v1)
/* 31A0C 8004120C 00000000 */  nop
/* 31A10 80041210 06006214 */  bne        $v1, $v0, .L8004122C
/* 31A14 80041214 2C000224 */   addiu     $v0, $zero, 0x2C
/* 31A18 80041218 9AFA000C */  jal        func_8003EA68
/* 31A1C 8004121C 0F000424 */   addiu     $a0, $zero, 0xF
.L80041220:
/* 31A20 80041220 0880033C */  lui        $v1, %hi(g_Spyro + 0x78)
/* 31A24 80041224 D08A638C */  lw         $v1, %lo(g_Spyro + 0x78)($v1)
/* 31A28 80041228 2C000224 */  addiu      $v0, $zero, 0x2C
.L8004122C:
/* 31A2C 8004122C 09006210 */  beq        $v1, $v0, .L80041254
/* 31A30 80041230 00202232 */   andi      $v0, $s1, 0x2000
/* 31A34 80041234 05004010 */  beqz       $v0, .L8004124C
/* 31A38 80041238 01000224 */   addiu     $v0, $zero, 0x1
/* 31A3C 8004123C 0880013C */  lui        $at, %hi(g_Spyro + 0x250)
/* 31A40 80041240 A88C22AC */  sw         $v0, %lo(g_Spyro + 0x250)($at)
/* 31A44 80041244 96040108 */  j          .L80041258
/* 31A48 80041248 21100002 */   addu      $v0, $s0, $zero
.L8004124C:
/* 31A4C 8004124C 0880013C */  lui        $at, %hi(g_Spyro + 0x250)
/* 31A50 80041250 A88C20AC */  sw         $zero, %lo(g_Spyro + 0x250)($at)
.L80041254:
/* 31A54 80041254 21100002 */  addu       $v0, $s0, $zero
.L80041258:
/* 31A58 80041258 1800BF8F */  lw         $ra, 0x18($sp)
/* 31A5C 8004125C 1400B18F */  lw         $s1, 0x14($sp)
/* 31A60 80041260 1000B08F */  lw         $s0, 0x10($sp)
/* 31A64 80041264 2000BD27 */  addiu      $sp, $sp, 0x20
/* 31A68 80041268 0800E003 */  jr         $ra
/* 31A6C 8004126C 00000000 */   nop
.size func_80040F68, . - func_80040F68
