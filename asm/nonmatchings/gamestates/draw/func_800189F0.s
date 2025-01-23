.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800189F0
/* 91F0 800189F0 0780023C */  lui        $v0, %hi(D_80075684)
/* 91F4 800189F4 8456428C */  lw         $v0, %lo(D_80075684)($v0)
/* 91F8 800189F8 10FFBD27 */  addiu      $sp, $sp, -0xF0
/* 91FC 800189FC EC00BFAF */  sw         $ra, 0xEC($sp)
/* 9200 80018A00 E800BEAF */  sw         $fp, 0xE8($sp)
/* 9204 80018A04 E400B7AF */  sw         $s7, 0xE4($sp)
/* 9208 80018A08 E000B6AF */  sw         $s6, 0xE0($sp)
/* 920C 80018A0C DC00B5AF */  sw         $s5, 0xDC($sp)
/* 9210 80018A10 D800B4AF */  sw         $s4, 0xD8($sp)
/* 9214 80018A14 D400B3AF */  sw         $s3, 0xD4($sp)
/* 9218 80018A18 D000B2AF */  sw         $s2, 0xD0($sp)
/* 921C 80018A1C CC00B1AF */  sw         $s1, 0xCC($sp)
/* 9220 80018A20 C800B0AF */  sw         $s0, 0xC8($sp)
/* 9224 80018A24 7000A0AF */  sw         $zero, 0x70($sp)
/* 9228 80018A28 32014018 */  blez       $v0, .L80018EF4
/* 922C 80018A2C 2800A0AF */   sw        $zero, 0x28($sp)
/* 9230 80018A30 B000A0AF */  sw         $zero, 0xB0($sp)
/* 9234 80018A34 0780093C */  lui        $t1, %hi(D_800772C8)
/* 9238 80018A38 C8722925 */  addiu      $t1, $t1, %lo(D_800772C8)
/* 923C 80018A3C B800A9AF */  sw         $t1, 0xB8($sp)
.L80018A40:
/* 9240 80018A40 B800AA8F */  lw         $t2, 0xB8($sp)
/* 9244 80018A44 B000A98F */  lw         $t1, 0xB0($sp)
/* 9248 80018A48 0000428D */  lw         $v0, 0x0($t2)
/* 924C 80018A4C 0880013C */  lui        $at, %hi(D_80078658)
/* 9250 80018A50 21082900 */  addu       $at, $at, $t1
/* 9254 80018A54 5886298C */  lw         $t1, %lo(D_80078658)($at)
/* 9258 80018A58 21B00000 */  addu       $s6, $zero, $zero
/* 925C 80018A5C 0F004018 */  blez       $v0, .L80018A9C
/* 9260 80018A60 7800A9AF */   sw        $t1, 0x78($sp)
/* 9264 80018A64 0780023C */  lui        $v0, %hi(D_800772C8)
/* 9268 80018A68 C8724224 */  addiu      $v0, $v0, %lo(D_800772C8)
/* 926C 80018A6C B000AA8F */  lw         $t2, 0xB0($sp)
/* 9270 80018A70 7800B08F */  lw         $s0, 0x78($sp)
/* 9274 80018A74 21884201 */  addu       $s1, $t2, $v0
.L80018A78:
/* 9278 80018A78 0C000426 */  addiu      $a0, $s0, 0xC
/* 927C 80018A7C 21280002 */  addu       $a1, $s0, $zero
/* 9280 80018A80 D25E000C */  jal        func_80017B48
/* 9284 80018A84 01000624 */   addiu     $a2, $zero, 0x1
/* 9288 80018A88 0000228E */  lw         $v0, 0x0($s1)
/* 928C 80018A8C 0100D626 */  addiu      $s6, $s6, 0x1
/* 9290 80018A90 2A10C202 */  slt        $v0, $s6, $v0
/* 9294 80018A94 F8FF4014 */  bnez       $v0, .L80018A78
/* 9298 80018A98 1C001026 */   addiu     $s0, $s0, 0x1C
.L80018A9C:
/* 929C 80018A9C B800A98F */  lw         $t1, 0xB8($sp)
/* 92A0 80018AA0 0780033C */  lui        $v1, %hi(D_800772C8)
/* 92A4 80018AA4 C8726324 */  addiu      $v1, $v1, %lo(D_800772C8)
/* 92A8 80018AA8 0000228D */  lw         $v0, 0x0($t1)
/* 92AC 80018AAC 00000000 */  nop
/* 92B0 80018AB0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 92B4 80018AB4 02014018 */  blez       $v0, .L80018EC0
/* 92B8 80018AB8 21B00000 */   addu      $s6, $zero, $zero
/* 92BC 80018ABC 7800B58F */  lw         $s5, 0x78($sp)
/* 92C0 80018AC0 A000A0AF */  sw         $zero, 0xA0($sp)
/* 92C4 80018AC4 A800A0AF */  sw         $zero, 0xA8($sp)
.L80018AC8:
/* 92C8 80018AC8 B000AA8F */  lw         $t2, 0xB0($sp)
/* 92CC 80018ACC 0100103C */  lui        $s0, (0x11170 >> 16)
/* 92D0 80018AD0 21104301 */  addu       $v0, $t2, $v1
/* 92D4 80018AD4 0000428C */  lw         $v0, 0x0($v0)
/* 92D8 80018AD8 70111036 */  ori        $s0, $s0, (0x11170 & 0xFFFF)
/* 92DC 80018ADC FEFF4224 */  addiu      $v0, $v0, -0x2
/* 92E0 80018AE0 2610C202 */  xor        $v0, $s6, $v0
/* 92E4 80018AE4 2B100200 */  sltu       $v0, $zero, $v0
/* 92E8 80018AE8 23100200 */  negu       $v0, $v0
/* 92EC 80018AEC 24805000 */  and        $s0, $v0, $s0
/* 92F0 80018AF0 0300C22A */  slti       $v0, $s6, 0x3
/* 92F4 80018AF4 04004010 */  beqz       $v0, .L80018B08
/* 92F8 80018AF8 00000000 */   nop
/* 92FC 80018AFC A800A98F */  lw         $t1, 0xA8($sp)
/* 9300 80018B00 00000000 */  nop
/* 9304 80018B04 40810900 */  sll        $s0, $t1, 5
.L80018B08:
/* 9308 80018B08 0780033C */  lui        $v1, %hi(g_LevelId)
/* 930C 80018B0C 6C59638C */  lw         $v1, %lo(g_LevelId)($v1)
/* 9310 80018B10 3F000224 */  addiu      $v0, $zero, 0x3F
/* 9314 80018B14 02006214 */  bne        $v1, $v0, .L80018B20
/* 9318 80018B18 00000000 */   nop
/* 931C 80018B1C 83801000 */  sra        $s0, $s0, 2
.L80018B20:
/* 9320 80018B20 1800A28E */  lw         $v0, 0x18($s5)
/* 9324 80018B24 00000000 */  nop
/* 9328 80018B28 51004228 */  slti       $v0, $v0, 0x51
/* 932C 80018B2C D2004010 */  beqz       $v0, .L80018E78
/* 9330 80018B30 1800A427 */   addiu     $a0, $sp, 0x18
/* 9334 80018B34 A000AA8F */  lw         $t2, 0xA0($sp)
/* 9338 80018B38 7800A98F */  lw         $t1, 0x78($sp)
/* 933C 80018B3C 0C00A526 */  addiu      $a1, $s5, 0xC
/* 9340 80018B40 21304901 */  addu       $a2, $t2, $t1
/* 9344 80018B44 E35D000C */  jal        VecSub
/* 9348 80018B48 2800C624 */   addiu     $a2, $a2, 0x28
/* 934C 80018B4C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 9350 80018B50 00000000 */  nop
/* 9354 80018B54 18006300 */  mult       $v1, $v1
/* 9358 80018B58 1800A28F */  lw         $v0, 0x18($sp)
/* 935C 80018B5C 12200000 */  mflo       $a0
/* 9360 80018B60 23100200 */  negu       $v0, $v0
/* 9364 80018B64 00000000 */  nop
/* 9368 80018B68 18004200 */  mult       $v0, $v0
/* 936C 80018B6C 7000A98F */  lw         $t1, 0x70($sp)
/* 9370 80018B70 00000000 */  nop
/* 9374 80018B74 01002925 */  addiu      $t1, $t1, 0x1
/* 9378 80018B78 7000A9AF */  sw         $t1, 0x70($sp)
/* 937C 80018B7C 1800A3AF */  sw         $v1, 0x18($sp)
/* 9380 80018B80 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 9384 80018B84 12400000 */  mflo       $t0
/* 9388 80018B88 8E5E000C */  jal        func_80017A38
/* 938C 80018B8C 21208800 */   addu      $a0, $a0, $t0
/* 9390 80018B90 21204000 */  addu       $a0, $v0, $zero
/* 9394 80018B94 05008010 */  beqz       $a0, .L80018BAC
/* 9398 80018B98 00000000 */   nop
/* 939C 80018B9C 1400A58E */  lw         $a1, 0x14($s5)
/* 93A0 80018BA0 00000000 */  nop
/* 93A4 80018BA4 0400A014 */  bnez       $a1, .L80018BB8
/* 93A8 80018BA8 00000000 */   nop
.L80018BAC:
/* 93AC 80018BAC 1800A0AF */  sw         $zero, 0x18($sp)
/* 93B0 80018BB0 1B630008 */  j          .L80018C6C
/* 93B4 80018BB4 1C00A0AF */   sw        $zero, 0x1C($sp)
.L80018BB8:
/* 93B8 80018BB8 1800A28F */  lw         $v0, 0x18($sp)
/* 93BC 80018BBC 00000000 */  nop
/* 93C0 80018BC0 18005000 */  mult       $v0, $s0
/* 93C4 80018BC4 12180000 */  mflo       $v1
/* 93C8 80018BC8 00000000 */  nop
/* 93CC 80018BCC 00000000 */  nop
/* 93D0 80018BD0 1800A400 */  mult       $a1, $a0
/* 93D4 80018BD4 12100000 */  mflo       $v0
/* 93D8 80018BD8 00000000 */  nop
/* 93DC 80018BDC 00000000 */  nop
/* 93E0 80018BE0 1A006200 */  div        $zero, $v1, $v0
/* 93E4 80018BE4 02004014 */  bnez       $v0, .L80018BF0
/* 93E8 80018BE8 00000000 */   nop
/* 93EC 80018BEC 0D000700 */  break      7
.L80018BF0:
/* 93F0 80018BF0 FFFF0124 */  addiu      $at, $zero, -0x1
/* 93F4 80018BF4 04004114 */  bne        $v0, $at, .L80018C08
/* 93F8 80018BF8 0080013C */   lui       $at, (0x80000000 >> 16)
/* 93FC 80018BFC 02006114 */  bne        $v1, $at, .L80018C08
/* 9400 80018C00 00000000 */   nop
/* 9404 80018C04 0D000600 */  break      6
.L80018C08:
/* 9408 80018C08 12180000 */  mflo       $v1
/* 940C 80018C0C 1C00A28F */  lw         $v0, 0x1C($sp)
/* 9410 80018C10 00000000 */  nop
/* 9414 80018C14 18005000 */  mult       $v0, $s0
/* 9418 80018C18 12280000 */  mflo       $a1
/* 941C 80018C1C 1800A3AF */  sw         $v1, 0x18($sp)
/* 9420 80018C20 1400A28E */  lw         $v0, 0x14($s5)
/* 9424 80018C24 00000000 */  nop
/* 9428 80018C28 18004400 */  mult       $v0, $a0
/* 942C 80018C2C 12100000 */  mflo       $v0
/* 9430 80018C30 00000000 */  nop
/* 9434 80018C34 00000000 */  nop
/* 9438 80018C38 1A00A200 */  div        $zero, $a1, $v0
/* 943C 80018C3C 02004014 */  bnez       $v0, .L80018C48
/* 9440 80018C40 00000000 */   nop
/* 9444 80018C44 0D000700 */  break      7
.L80018C48:
/* 9448 80018C48 FFFF0124 */  addiu      $at, $zero, -0x1
/* 944C 80018C4C 04004114 */  bne        $v0, $at, .L80018C60
/* 9450 80018C50 0080013C */   lui       $at, (0x80000000 >> 16)
/* 9454 80018C54 0200A114 */  bne        $a1, $at, .L80018C60
/* 9458 80018C58 00000000 */   nop
/* 945C 80018C5C 0D000600 */  break      6
.L80018C60:
/* 9460 80018C60 12100000 */  mflo       $v0
/* 9464 80018C64 00000000 */  nop
/* 9468 80018C68 1C00A2AF */  sw         $v0, 0x1C($sp)
.L80018C6C:
/* 946C 80018C6C 0C00A58E */  lw         $a1, 0xC($s5)
/* 9470 80018C70 1800A38F */  lw         $v1, 0x18($sp)
/* 9474 80018C74 1C00A28F */  lw         $v0, 0x1C($sp)
/* 9478 80018C78 2148A300 */  addu       $t1, $a1, $v1
/* 947C 80018C7C 3000A9AF */  sw         $t1, 0x30($sp)
/* 9480 80018C80 1000A48E */  lw         $a0, 0x10($s5)
/* 9484 80018C84 7000A98F */  lw         $t1, 0x70($sp)
/* 9488 80018C88 2328A300 */  subu       $a1, $a1, $v1
/* 948C 80018C8C 3800A5AF */  sw         $a1, 0x38($sp)
/* 9490 80018C90 21508200 */  addu       $t2, $a0, $v0
/* 9494 80018C94 23208200 */  subu       $a0, $a0, $v0
/* 9498 80018C98 02002229 */  slti       $v0, $t1, 0x2
/* 949C 80018C9C 4000AAAF */  sw         $t2, 0x40($sp)
/* 94A0 80018CA0 6D004014 */  bnez       $v0, .L80018E58
/* 94A4 80018CA4 4800A4AF */   sw        $a0, 0x48($sp)
/* 94A8 80018CA8 1400A28E */  lw         $v0, 0x14($s5)
/* 94AC 80018CAC 00000000 */  nop
/* 94B0 80018CB0 C3410200 */  sra        $t0, $v0, 7
/* 94B4 80018CB4 D007022D */  sltiu      $v0, $t0, 0x7D0
/* 94B8 80018CB8 67004010 */  beqz       $v0, .L80018E58
/* 94BC 80018CBC 96000A24 */   addiu     $t2, $zero, 0x96
/* 94C0 80018CC0 1800A38E */  lw         $v1, 0x18($s5)
/* 94C4 80018CC4 00000000 */  nop
/* 94C8 80018CC8 40100300 */  sll        $v0, $v1, 1
/* 94CC 80018CCC 23A04201 */  subu       $s4, $t2, $v0
/* 94D0 80018CD0 80100300 */  sll        $v0, $v1, 2
/* 94D4 80018CD4 23984201 */  subu       $s3, $t2, $v0
/* 94D8 80018CD8 21104300 */  addu       $v0, $v0, $v1
/* 94DC 80018CDC 40100200 */  sll        $v0, $v0, 1
/* 94E0 80018CE0 FCFFA38E */  lw         $v1, -0x4($s5)
/* 94E4 80018CE4 23F04201 */  subu       $fp, $t2, $v0
/* 94E8 80018CE8 40100300 */  sll        $v0, $v1, 1
/* 94EC 80018CEC 23904201 */  subu       $s2, $t2, $v0
/* 94F0 80018CF0 80100300 */  sll        $v0, $v1, 2
/* 94F4 80018CF4 23884201 */  subu       $s1, $t2, $v0
/* 94F8 80018CF8 21104300 */  addu       $v0, $v0, $v1
/* 94FC 80018CFC 40100200 */  sll        $v0, $v0, 1
/* 9500 80018D00 02008106 */  bgez       $s4, .L80018D0C
/* 9504 80018D04 23B84201 */   subu      $s7, $t2, $v0
/* 9508 80018D08 21A00000 */  addu       $s4, $zero, $zero
.L80018D0C:
/* 950C 80018D0C 02006106 */  bgez       $s3, .L80018D18
/* 9510 80018D10 00000000 */   nop
/* 9514 80018D14 21980000 */  addu       $s3, $zero, $zero
.L80018D18:
/* 9518 80018D18 0200C107 */  bgez       $fp, .L80018D24
/* 951C 80018D1C 00000000 */   nop
/* 9520 80018D20 21F00000 */  addu       $fp, $zero, $zero
.L80018D24:
/* 9524 80018D24 02004106 */  bgez       $s2, .L80018D30
/* 9528 80018D28 00000000 */   nop
/* 952C 80018D2C 21900000 */  addu       $s2, $zero, $zero
.L80018D30:
/* 9530 80018D30 02002106 */  bgez       $s1, .L80018D3C
/* 9534 80018D34 00000000 */   nop
/* 9538 80018D38 21880000 */  addu       $s1, $zero, $zero
.L80018D3C:
/* 953C 80018D3C 0200E106 */  bgez       $s7, .L80018D48
/* 9540 80018D40 00000000 */   nop
/* 9544 80018D44 21B80000 */  addu       $s7, $zero, $zero
.L80018D48:
/* 9548 80018D48 0780033C */  lui        $v1, %hi(g_LevelId)
/* 954C 80018D4C 6C59638C */  lw         $v1, %lo(g_LevelId)($v1)
/* 9550 80018D50 3F000224 */  addiu      $v0, $zero, 0x3F
/* 9554 80018D54 06006214 */  bne        $v1, $v0, .L80018D70
/* 9558 80018D58 21108002 */   addu      $v0, $s4, $zero
/* 955C 80018D5C 21A06002 */  addu       $s4, $s3, $zero
/* 9560 80018D60 21984000 */  addu       $s3, $v0, $zero
/* 9564 80018D64 21104002 */  addu       $v0, $s2, $zero
/* 9568 80018D68 21902002 */  addu       $s2, $s1, $zero
/* 956C 80018D6C 21884000 */  addu       $s1, $v0, $zero
.L80018D70:
/* 9570 80018D70 01000524 */  addiu      $a1, $zero, 0x1
/* 9574 80018D74 21300000 */  addu       $a2, $zero, $zero
/* 9578 80018D78 0780103C */  lui        $s0, %hi(D_800757B0)
/* 957C 80018D7C B057108E */  lw         $s0, %lo(D_800757B0)($s0)
/* 9580 80018D80 20000724 */  addiu      $a3, $zero, 0x20
/* 9584 80018D84 1000A0AF */  sw         $zero, 0x10($sp)
/* 9588 80018D88 C000A8AF */  sw         $t0, 0xC0($sp)
/* 958C 80018D8C 9C81010C */  jal        SetDrawMode
/* 9590 80018D90 21200002 */   addu      $a0, $s0, $zero
/* 9594 80018D94 C000A88F */  lw         $t0, 0xC0($sp)
/* 9598 80018D98 21200002 */  addu       $a0, $s0, $zero
/* 959C 80018D9C 285A000C */  jal        func_800168A0
/* 95A0 80018DA0 21280001 */   addu      $a1, $t0, $zero
/* 95A4 80018DA4 0C000426 */  addiu      $a0, $s0, 0xC
/* 95A8 80018DA8 C000A88F */  lw         $t0, 0xC0($sp)
/* 95AC 80018DAC 0008023C */  lui        $v0, (0x8000000 >> 16)
/* 95B0 80018DB0 0C0002AE */  sw         $v0, 0xC($s0)
/* 95B4 80018DB4 3A000224 */  addiu      $v0, $zero, 0x3A
/* 95B8 80018DB8 130002A2 */  sb         $v0, 0x13($s0)
/* 95BC 80018DBC 3000A997 */  lhu        $t1, 0x30($sp)
/* 95C0 80018DC0 21280001 */  addu       $a1, $t0, $zero
/* 95C4 80018DC4 140009A6 */  sh         $t1, 0x14($s0)
/* 95C8 80018DC8 3800AA97 */  lhu        $t2, 0x38($sp)
/* 95CC 80018DCC 00000000 */  nop
/* 95D0 80018DD0 1C000AA6 */  sh         $t2, 0x1C($s0)
/* 95D4 80018DD4 5000A997 */  lhu        $t1, 0x50($sp)
/* 95D8 80018DD8 00000000 */  nop
/* 95DC 80018DDC 240009A6 */  sh         $t1, 0x24($s0)
/* 95E0 80018DE0 5800AA97 */  lhu        $t2, 0x58($sp)
/* 95E4 80018DE4 00000000 */  nop
/* 95E8 80018DE8 2C000AA6 */  sh         $t2, 0x2C($s0)
/* 95EC 80018DEC 4000A997 */  lhu        $t1, 0x40($sp)
/* 95F0 80018DF0 00000000 */  nop
/* 95F4 80018DF4 160009A6 */  sh         $t1, 0x16($s0)
/* 95F8 80018DF8 4800AA97 */  lhu        $t2, 0x48($sp)
/* 95FC 80018DFC 00000000 */  nop
/* 9600 80018E00 1E000AA6 */  sh         $t2, 0x1E($s0)
/* 9604 80018E04 6000A997 */  lhu        $t1, 0x60($sp)
/* 9608 80018E08 00000000 */  nop
/* 960C 80018E0C 260009A6 */  sh         $t1, 0x26($s0)
/* 9610 80018E10 6800AA97 */  lhu        $t2, 0x68($sp)
/* 9614 80018E14 100014A2 */  sb         $s4, 0x10($s0)
/* 9618 80018E18 110013A2 */  sb         $s3, 0x11($s0)
/* 961C 80018E1C 2E000AA6 */  sh         $t2, 0x2E($s0)
/* 9620 80018E20 12001EA2 */  sb         $fp, 0x12($s0)
/* 9624 80018E24 180014A2 */  sb         $s4, 0x18($s0)
/* 9628 80018E28 190013A2 */  sb         $s3, 0x19($s0)
/* 962C 80018E2C 1A001EA2 */  sb         $fp, 0x1A($s0)
/* 9630 80018E30 200012A2 */  sb         $s2, 0x20($s0)
/* 9634 80018E34 210011A2 */  sb         $s1, 0x21($s0)
/* 9638 80018E38 220017A2 */  sb         $s7, 0x22($s0)
/* 963C 80018E3C 280012A2 */  sb         $s2, 0x28($s0)
/* 9640 80018E40 290011A2 */  sb         $s1, 0x29($s0)
/* 9644 80018E44 285A000C */  jal        func_800168A0
/* 9648 80018E48 2A0017A2 */   sb        $s7, 0x2A($s0)
/* 964C 80018E4C 30001026 */  addiu      $s0, $s0, 0x30
/* 9650 80018E50 0780013C */  lui        $at, %hi(D_800757B0)
/* 9654 80018E54 B05730AC */  sw         $s0, %lo(D_800757B0)($at)
.L80018E58:
/* 9658 80018E58 3000A98F */  lw         $t1, 0x30($sp)
/* 965C 80018E5C 3800AA8F */  lw         $t2, 0x38($sp)
/* 9660 80018E60 5000A9AF */  sw         $t1, 0x50($sp)
/* 9664 80018E64 4000A98F */  lw         $t1, 0x40($sp)
/* 9668 80018E68 5800AAAF */  sw         $t2, 0x58($sp)
/* 966C 80018E6C 4800AA8F */  lw         $t2, 0x48($sp)
/* 9670 80018E70 6000A9AF */  sw         $t1, 0x60($sp)
/* 9674 80018E74 6800AAAF */  sw         $t2, 0x68($sp)
.L80018E78:
/* 9678 80018E78 0100D626 */  addiu      $s6, $s6, 0x1
/* 967C 80018E7C A000A98F */  lw         $t1, 0xA0($sp)
/* 9680 80018E80 A800AA8F */  lw         $t2, 0xA8($sp)
/* 9684 80018E84 1C002925 */  addiu      $t1, $t1, 0x1C
/* 9688 80018E88 A000A9AF */  sw         $t1, 0xA0($sp)
/* 968C 80018E8C 2800A98F */  lw         $t1, 0x28($sp)
/* 9690 80018E90 71024A25 */  addiu      $t2, $t2, 0x271
/* 9694 80018E94 A800AAAF */  sw         $t2, 0xA8($sp)
/* 9698 80018E98 80100900 */  sll        $v0, $t1, 2
/* 969C 80018E9C 0780013C */  lui        $at, %hi(D_800772C8)
/* 96A0 80018EA0 21082200 */  addu       $at, $at, $v0
/* 96A4 80018EA4 C872228C */  lw         $v0, %lo(D_800772C8)($at)
/* 96A8 80018EA8 0780033C */  lui        $v1, %hi(D_800772C8)
/* 96AC 80018EAC C8726324 */  addiu      $v1, $v1, %lo(D_800772C8)
/* 96B0 80018EB0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 96B4 80018EB4 2A10C202 */  slt        $v0, $s6, $v0
/* 96B8 80018EB8 03FF4014 */  bnez       $v0, .L80018AC8
/* 96BC 80018EBC 1C00B526 */   addiu     $s5, $s5, 0x1C
.L80018EC0:
/* 96C0 80018EC0 B000AA8F */  lw         $t2, 0xB0($sp)
/* 96C4 80018EC4 B800A98F */  lw         $t1, 0xB8($sp)
/* 96C8 80018EC8 0780023C */  lui        $v0, %hi(D_80075684)
/* 96CC 80018ECC 8456428C */  lw         $v0, %lo(D_80075684)($v0)
/* 96D0 80018ED0 04004A25 */  addiu      $t2, $t2, 0x4
/* 96D4 80018ED4 B000AAAF */  sw         $t2, 0xB0($sp)
/* 96D8 80018ED8 2800AA8F */  lw         $t2, 0x28($sp)
/* 96DC 80018EDC 04002925 */  addiu      $t1, $t1, 0x4
/* 96E0 80018EE0 B800A9AF */  sw         $t1, 0xB8($sp)
/* 96E4 80018EE4 01004A25 */  addiu      $t2, $t2, 0x1
/* 96E8 80018EE8 2A104201 */  slt        $v0, $t2, $v0
/* 96EC 80018EEC D4FE4014 */  bnez       $v0, .L80018A40
/* 96F0 80018EF0 2800AAAF */   sw        $t2, 0x28($sp)
.L80018EF4:
/* 96F4 80018EF4 0780013C */  lui        $at, %hi(D_80075684)
/* 96F8 80018EF8 845620AC */  sw         $zero, %lo(D_80075684)($at)
/* 96FC 80018EFC EC00BF8F */  lw         $ra, 0xEC($sp)
/* 9700 80018F00 E800BE8F */  lw         $fp, 0xE8($sp)
/* 9704 80018F04 E400B78F */  lw         $s7, 0xE4($sp)
/* 9708 80018F08 E000B68F */  lw         $s6, 0xE0($sp)
/* 970C 80018F0C DC00B58F */  lw         $s5, 0xDC($sp)
/* 9710 80018F10 D800B48F */  lw         $s4, 0xD8($sp)
/* 9714 80018F14 D400B38F */  lw         $s3, 0xD4($sp)
/* 9718 80018F18 D000B28F */  lw         $s2, 0xD0($sp)
/* 971C 80018F1C CC00B18F */  lw         $s1, 0xCC($sp)
/* 9720 80018F20 C800B08F */  lw         $s0, 0xC8($sp)
/* 9724 80018F24 F000BD27 */  addiu      $sp, $sp, 0xF0
/* 9728 80018F28 0800E003 */  jr         $ra
/* 972C 80018F2C 00000000 */   nop
.size func_800189F0, . - func_800189F0
