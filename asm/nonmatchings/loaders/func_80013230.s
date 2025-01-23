.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80013230
/* 3A30 80013230 F8FFBD27 */  addiu      $sp, $sp, -0x8
/* 3A34 80013234 21308000 */  addu       $a2, $a0, $zero
/* 3A38 80013238 21200000 */  addu       $a0, $zero, $zero
/* 3A3C 8001323C 0880083C */  lui        $t0, %hi(D_800785FC)
/* 3A40 80013240 FC850825 */  addiu      $t0, $t0, %lo(D_800785FC)
/* 3A44 80013244 FFFF0724 */  addiu      $a3, $zero, -0x1
.L80013248:
/* 3A48 80013248 0780033C */  lui        $v1, %hi(D_80076378)
/* 3A4C 8001324C 7863638C */  lw         $v1, %lo(D_80076378)($v1)
/* 3A50 80013250 80100400 */  sll        $v0, $a0, 2
/* 3A54 80013254 21284300 */  addu       $a1, $v0, $v1
/* 3A58 80013258 3800A38C */  lw         $v1, 0x38($a1)
/* 3A5C 8001325C 0000028D */  lw         $v0, 0x0($t0)
/* 3A60 80013260 00000000 */  nop
/* 3A64 80013264 2B106200 */  sltu       $v0, $v1, $v0
/* 3A68 80013268 03004014 */  bnez       $v0, .L80013278
/* 3A6C 8001326C 00000000 */   nop
/* 3A70 80013270 02006714 */  bne        $v1, $a3, .L8001327C
/* 3A74 80013274 00000000 */   nop
.L80013278:
/* 3A78 80013278 3800A0AC */  sw         $zero, 0x38($a1)
.L8001327C:
/* 3A7C 8001327C 01008424 */  addiu      $a0, $a0, 0x1
/* 3A80 80013280 2E008228 */  slti       $v0, $a0, 0x2E
/* 3A84 80013284 F0FF4014 */  bnez       $v0, .L80013248
/* 3A88 80013288 00000000 */   nop
/* 3A8C 8001328C 0000C38C */  lw         $v1, 0x0($a2)
/* 3A90 80013290 00000000 */  nop
/* 3A94 80013294 4F006004 */  bltz       $v1, .L800133D4
/* 3A98 80013298 1F00093C */   lui       $t1, (0x1FFFFF >> 16)
/* 3A9C 8001329C FFFF2935 */  ori        $t1, $t1, (0x1FFFFF & 0xFFFF)
/* 3AA0 800132A0 E0FF0B3C */  lui        $t3, (0xFFE00000 >> 16)
/* 3AA4 800132A4 0400C624 */  addiu      $a2, $a2, 0x4
.L800132A8:
/* 3AA8 800132A8 0000CA8C */  lw         $t2, 0x0($a2)
/* 3AAC 800132AC 0400C624 */  addiu      $a2, $a2, 0x4
/* 3AB0 800132B0 0780023C */  lui        $v0, %hi(D_80076378)
/* 3AB4 800132B4 7863428C */  lw         $v0, %lo(D_80076378)($v0)
/* 3AB8 800132B8 80380300 */  sll        $a3, $v1, 2
/* 3ABC 800132BC 2110E200 */  addu       $v0, $a3, $v0
/* 3AC0 800132C0 380046AC */  sw         $a2, 0x38($v0)
/* 3AC4 800132C4 0780033C */  lui        $v1, %hi(D_80076378)
/* 3AC8 800132C8 7863638C */  lw         $v1, %lo(D_80076378)($v1)
/* 3ACC 800132CC 00000000 */  nop
/* 3AD0 800132D0 2110E300 */  addu       $v0, $a3, $v1
/* 3AD4 800132D4 3800448C */  lw         $a0, 0x38($v0)
/* 3AD8 800132D8 3400628C */  lw         $v0, 0x34($v1)
/* 3ADC 800132DC 1400838C */  lw         $v1, 0x14($a0)
/* 3AE0 800132E0 00000000 */  nop
/* 3AE4 800132E4 21104300 */  addu       $v0, $v0, $v1
/* 3AE8 800132E8 140082AC */  sw         $v0, 0x14($a0)
/* 3AEC 800132EC 0780033C */  lui        $v1, %hi(D_80076378)
/* 3AF0 800132F0 7863638C */  lw         $v1, %lo(D_80076378)($v1)
/* 3AF4 800132F4 00000000 */  nop
/* 3AF8 800132F8 2110E300 */  addu       $v0, $a3, $v1
/* 3AFC 800132FC 3800448C */  lw         $a0, 0x38($v0)
/* 3B00 80013300 3400628C */  lw         $v0, 0x34($v1)
/* 3B04 80013304 1800838C */  lw         $v1, 0x18($a0)
/* 3B08 80013308 00000000 */  nop
/* 3B0C 8001330C 21104300 */  addu       $v0, $v0, $v1
/* 3B10 80013310 180082AC */  sw         $v0, 0x18($a0)
/* 3B14 80013314 0780023C */  lui        $v0, %hi(D_80076378)
/* 3B18 80013318 7863428C */  lw         $v0, %lo(D_80076378)($v0)
/* 3B1C 8001331C 00000000 */  nop
/* 3B20 80013320 2110E200 */  addu       $v0, $a3, $v0
/* 3B24 80013324 3800448C */  lw         $a0, 0x38($v0)
/* 3B28 80013328 00000000 */  nop
/* 3B2C 8001332C 00008284 */  lh         $v0, 0x0($a0)
/* 3B30 80013330 1000838C */  lw         $v1, 0x10($a0)
/* 3B34 80013334 80100200 */  sll        $v0, $v0, 2
/* 3B38 80013338 24004224 */  addiu      $v0, $v0, 0x24
/* 3B3C 8001333C 2140C200 */  addu       $t0, $a2, $v0
/* 3B40 80013340 21180301 */  addu       $v1, $t0, $v1
/* 3B44 80013344 100083AC */  sw         $v1, 0x10($a0)
/* 3B48 80013348 0780023C */  lui        $v0, %hi(D_80076378)
/* 3B4C 8001334C 7863428C */  lw         $v0, %lo(D_80076378)($v0)
/* 3B50 80013350 00000000 */  nop
/* 3B54 80013354 2110E200 */  addu       $v0, $a3, $v0
/* 3B58 80013358 3800428C */  lw         $v0, 0x38($v0)
/* 3B5C 8001335C 21200000 */  addu       $a0, $zero, $zero
/* 3B60 80013360 00004384 */  lh         $v1, 0x0($v0)
/* 3B64 80013364 00000000 */  nop
/* 3B68 80013368 15006018 */  blez       $v1, .L800133C0
/* 3B6C 8001336C 24004524 */   addiu     $a1, $v0, 0x24
.L80013370:
/* 3B70 80013370 0000A38C */  lw         $v1, 0x0($a1)
/* 3B74 80013374 00000000 */  nop
/* 3B78 80013378 24106900 */  and        $v0, $v1, $t1
/* 3B7C 8001337C 21104800 */  addu       $v0, $v0, $t0
/* 3B80 80013380 43100200 */  sra        $v0, $v0, 1
/* 3B84 80013384 24104900 */  and        $v0, $v0, $t1
/* 3B88 80013388 24186B00 */  and        $v1, $v1, $t3
/* 3B8C 8001338C 21186200 */  addu       $v1, $v1, $v0
/* 3B90 80013390 0000A3AC */  sw         $v1, 0x0($a1)
/* 3B94 80013394 0780023C */  lui        $v0, %hi(D_80076378)
/* 3B98 80013398 7863428C */  lw         $v0, %lo(D_80076378)($v0)
/* 3B9C 8001339C 00000000 */  nop
/* 3BA0 800133A0 2110E200 */  addu       $v0, $a3, $v0
/* 3BA4 800133A4 3800428C */  lw         $v0, 0x38($v0)
/* 3BA8 800133A8 01008424 */  addiu      $a0, $a0, 0x1
/* 3BAC 800133AC 00004284 */  lh         $v0, 0x0($v0)
/* 3BB0 800133B0 00000000 */  nop
/* 3BB4 800133B4 2A108200 */  slt        $v0, $a0, $v0
/* 3BB8 800133B8 EDFF4014 */  bnez       $v0, .L80013370
/* 3BBC 800133BC 0400A524 */   addiu     $a1, $a1, 0x4
.L800133C0:
/* 3BC0 800133C0 2130CA00 */  addu       $a2, $a2, $t2
/* 3BC4 800133C4 0000C38C */  lw         $v1, 0x0($a2)
/* 3BC8 800133C8 00000000 */  nop
/* 3BCC 800133CC B6FF6104 */  bgez       $v1, .L800132A8
/* 3BD0 800133D0 0400C624 */   addiu     $a2, $a2, 0x4
.L800133D4:
/* 3BD4 800133D4 0800BD27 */  addiu      $sp, $sp, 0x8
/* 3BD8 800133D8 0800E003 */  jr         $ra
/* 3BDC 800133DC 00000000 */   nop
.size func_80013230, . - func_80013230
