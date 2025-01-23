.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800133E0
/* 3BE0 800133E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3BE4 800133E4 21488000 */  addu       $t1, $a0, $zero
/* 3BE8 800133E8 0000228D */  lw         $v0, 0x0($t1)
/* 3BEC 800133EC 00000000 */  nop
/* 3BF0 800133F0 0E004104 */  bgez       $v0, .L8001342C
/* 3BF4 800133F4 21402001 */   addu      $t0, $t1, $zero
/* 3BF8 800133F8 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
/* 3BFC 800133FC FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
/* 3C00 80013400 24102201 */  and        $v0, $t1, $v0
/* 3C04 80013404 0400238D */  lw         $v1, 0x4($t1)
/* 3C08 80013408 0C00248D */  lw         $a0, 0xC($t1)
/* 3C0C 8001340C 21186900 */  addu       $v1, $v1, $t1
/* 3C10 80013410 040023AD */  sw         $v1, 0x4($t1)
/* 3C14 80013414 0800238D */  lw         $v1, 0x8($t1)
/* 3C18 80013418 21208900 */  addu       $a0, $a0, $t1
/* 3C1C 8001341C 0C0024AD */  sw         $a0, 0xC($t1)
/* 3C20 80013420 21186900 */  addu       $v1, $v1, $t1
/* 3C24 80013424 904D0008 */  j          .L80013640
/* 3C28 80013428 080023AD */   sw        $v1, 0x8($t1)
.L8001342C:
/* 3C2C 8001342C 21580000 */  addu       $t3, $zero, $zero
/* 3C30 80013430 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
/* 3C34 80013434 FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
/* 3C38 80013438 24202201 */  and        $a0, $t1, $v0
/* 3C3C 8001343C 21182001 */  addu       $v1, $t1, $zero
.L80013440:
/* 3C40 80013440 1400628C */  lw         $v0, 0x14($v1)
/* 3C44 80013444 00000000 */  nop
/* 3C48 80013448 02004010 */  beqz       $v0, .L80013454
/* 3C4C 8001344C 21108200 */   addu      $v0, $a0, $v0
/* 3C50 80013450 140062AC */  sw         $v0, 0x14($v1)
.L80013454:
/* 3C54 80013454 01006B25 */  addiu      $t3, $t3, 0x1
/* 3C58 80013458 08006229 */  slti       $v0, $t3, 0x8
/* 3C5C 8001345C F8FF4014 */  bnez       $v0, .L80013440
/* 3C60 80013460 04006324 */   addiu     $v1, $v1, 0x4
/* 3C64 80013464 3400028D */  lw         $v0, 0x34($t0)
/* 3C68 80013468 21580000 */  addu       $t3, $zero, $zero
/* 3C6C 8001346C 0000038D */  lw         $v1, 0x0($t0)
/* 3C70 80013470 21102201 */  addu       $v0, $t1, $v0
/* 3C74 80013474 71006018 */  blez       $v1, .L8001363C
/* 3C78 80013478 340002AD */   sw        $v0, 0x34($t0)
/* 3C7C 8001347C 1F000C3C */  lui        $t4, (0x1FFFFF >> 16)
/* 3C80 80013480 FFFF8C35 */  ori        $t4, $t4, (0x1FFFFF & 0xFFFF)
/* 3C84 80013484 E0FF0D3C */  lui        $t5, (0xFFE00000 >> 16)
/* 3C88 80013488 21380001 */  addu       $a3, $t0, $zero
.L8001348C:
/* 3C8C 8001348C 3800E38C */  lw         $v1, 0x38($a3)
/* 3C90 80013490 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3C94 80013494 64006210 */  beq        $v1, $v0, .L80013628
/* 3C98 80013498 00000000 */   nop
/* 3C9C 8001349C 21202301 */  addu       $a0, $t1, $v1
/* 3CA0 800134A0 3800E4AC */  sw         $a0, 0x38($a3)
/* 3CA4 800134A4 3400028D */  lw         $v0, 0x34($t0)
/* 3CA8 800134A8 1400838C */  lw         $v1, 0x14($a0)
/* 3CAC 800134AC 00000000 */  nop
/* 3CB0 800134B0 21104300 */  addu       $v0, $v0, $v1
/* 3CB4 800134B4 140082AC */  sw         $v0, 0x14($a0)
/* 3CB8 800134B8 3800E48C */  lw         $a0, 0x38($a3)
/* 3CBC 800134BC 3400028D */  lw         $v0, 0x34($t0)
/* 3CC0 800134C0 1800838C */  lw         $v1, 0x18($a0)
/* 3CC4 800134C4 00000000 */  nop
/* 3CC8 800134C8 21104300 */  addu       $v0, $v0, $v1
/* 3CCC 800134CC 180082AC */  sw         $v0, 0x18($a0)
/* 3CD0 800134D0 3800E48C */  lw         $a0, 0x38($a3)
/* 3CD4 800134D4 00000000 */  nop
/* 3CD8 800134D8 1C00838C */  lw         $v1, 0x1C($a0)
/* 3CDC 800134DC 00000000 */  nop
/* 3CE0 800134E0 0C006010 */  beqz       $v1, .L80013514
/* 3CE4 800134E4 00000000 */   nop
/* 3CE8 800134E8 3400028D */  lw         $v0, 0x34($t0)
/* 3CEC 800134EC 00000000 */  nop
/* 3CF0 800134F0 21104300 */  addu       $v0, $v0, $v1
/* 3CF4 800134F4 1C0082AC */  sw         $v0, 0x1C($a0)
/* 3CF8 800134F8 3800E48C */  lw         $a0, 0x38($a3)
/* 3CFC 800134FC 3400028D */  lw         $v0, 0x34($t0)
/* 3D00 80013500 2000838C */  lw         $v1, 0x20($a0)
/* 3D04 80013504 00000000 */  nop
/* 3D08 80013508 21104300 */  addu       $v0, $v0, $v1
/* 3D0C 8001350C 200082AC */  sw         $v0, 0x20($a0)
/* 3D10 80013510 3800E48C */  lw         $a0, 0x38($a3)
.L80013514:
/* 3D14 80013514 00000000 */  nop
/* 3D18 80013518 04008290 */  lbu        $v0, 0x4($a0)
/* 3D1C 8001351C 00000000 */  nop
/* 3D20 80013520 21004010 */  beqz       $v0, .L800135A8
/* 3D24 80013524 00000000 */   nop
/* 3D28 80013528 3400028D */  lw         $v0, 0x34($t0)
/* 3D2C 8001352C 1000838C */  lw         $v1, 0x10($a0)
/* 3D30 80013530 00000000 */  nop
/* 3D34 80013534 21104300 */  addu       $v0, $v0, $v1
/* 3D38 80013538 100082AC */  sw         $v0, 0x10($a0)
/* 3D3C 8001353C 3800E28C */  lw         $v0, 0x38($a3)
/* 3D40 80013540 21300000 */  addu       $a2, $zero, $zero
/* 3D44 80013544 00004384 */  lh         $v1, 0x0($v0)
/* 3D48 80013548 00000000 */  nop
/* 3D4C 8001354C 36006018 */  blez       $v1, .L80013628
/* 3D50 80013550 24004524 */   addiu     $a1, $v0, 0x24
/* 3D54 80013554 2150E000 */  addu       $t2, $a3, $zero
.L80013558:
/* 3D58 80013558 0000A38C */  lw         $v1, 0x0($a1)
/* 3D5C 8001355C 00000000 */  nop
/* 3D60 80013560 24206D00 */  and        $a0, $v1, $t5
/* 3D64 80013564 0000A4AC */  sw         $a0, 0x0($a1)
/* 3D68 80013568 3400028D */  lw         $v0, 0x34($t0)
/* 3D6C 8001356C 24186C00 */  and        $v1, $v1, $t4
/* 3D70 80013570 21106200 */  addu       $v0, $v1, $v0
/* 3D74 80013574 43100200 */  sra        $v0, $v0, 1
/* 3D78 80013578 24184C00 */  and        $v1, $v0, $t4
/* 3D7C 8001357C 21208300 */  addu       $a0, $a0, $v1
/* 3D80 80013580 0000A4AC */  sw         $a0, 0x0($a1)
/* 3D84 80013584 3800428D */  lw         $v0, 0x38($t2)
/* 3D88 80013588 0100C624 */  addiu      $a2, $a2, 0x1
/* 3D8C 8001358C 00004284 */  lh         $v0, 0x0($v0)
/* 3D90 80013590 00000000 */  nop
/* 3D94 80013594 2A10C200 */  slt        $v0, $a2, $v0
/* 3D98 80013598 EFFF4014 */  bnez       $v0, .L80013558
/* 3D9C 8001359C 0400A524 */   addiu     $a1, $a1, 0x4
/* 3DA0 800135A0 8A4D0008 */  j          .L80013628
/* 3DA4 800135A4 00000000 */   nop
.L800135A8:
/* 3DA8 800135A8 24008524 */  addiu      $a1, $a0, 0x24
/* 3DAC 800135AC 00008284 */  lh         $v0, 0x0($a0)
/* 3DB0 800135B0 00000000 */  nop
/* 3DB4 800135B4 1C004018 */  blez       $v0, .L80013628
/* 3DB8 800135B8 21300000 */   addu      $a2, $zero, $zero
/* 3DBC 800135BC 2120E000 */  addu       $a0, $a3, $zero
.L800135C0:
/* 3DC0 800135C0 3400028D */  lw         $v0, 0x34($t0)
/* 3DC4 800135C4 0000A38C */  lw         $v1, 0x0($a1)
/* 3DC8 800135C8 24104C00 */  and        $v0, $v0, $t4
/* 3DCC 800135CC 21186200 */  addu       $v1, $v1, $v0
/* 3DD0 800135D0 0000A3AC */  sw         $v1, 0x0($a1)
/* 3DD4 800135D4 0400A524 */  addiu      $a1, $a1, 0x4
/* 3DD8 800135D8 0000A38C */  lw         $v1, 0x0($a1)
/* 3DDC 800135DC 00000000 */  nop
/* 3DE0 800135E0 FFFF6230 */  andi       $v0, $v1, 0xFFFF
/* 3DE4 800135E4 09004010 */  beqz       $v0, .L8001360C
/* 3DE8 800135E8 00000000 */   nop
/* 3DEC 800135EC 3400028D */  lw         $v0, 0x34($t0)
/* 3DF0 800135F0 00000000 */  nop
/* 3DF4 800135F4 23104500 */  subu       $v0, $v0, $a1
/* 3DF8 800135F8 04004224 */  addiu      $v0, $v0, 0x4
/* 3DFC 800135FC 83100200 */  sra        $v0, $v0, 2
/* 3E00 80013600 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 3E04 80013604 21106200 */  addu       $v0, $v1, $v0
/* 3E08 80013608 0000A2AC */  sw         $v0, 0x0($a1)
.L8001360C:
/* 3E0C 8001360C 3800828C */  lw         $v0, 0x38($a0)
/* 3E10 80013610 0100C624 */  addiu      $a2, $a2, 0x1
/* 3E14 80013614 00004284 */  lh         $v0, 0x0($v0)
/* 3E18 80013618 00000000 */  nop
/* 3E1C 8001361C 2A10C200 */  slt        $v0, $a2, $v0
/* 3E20 80013620 E7FF4014 */  bnez       $v0, .L800135C0
/* 3E24 80013624 0400A524 */   addiu     $a1, $a1, 0x4
.L80013628:
/* 3E28 80013628 0000028D */  lw         $v0, 0x0($t0)
/* 3E2C 8001362C 01006B25 */  addiu      $t3, $t3, 0x1
/* 3E30 80013630 2A106201 */  slt        $v0, $t3, $v0
/* 3E34 80013634 95FF4014 */  bnez       $v0, .L8001348C
/* 3E38 80013638 0400E724 */   addiu     $a3, $a3, 0x4
.L8001363C:
/* 3E3C 8001363C 21102001 */  addu       $v0, $t1, $zero
.L80013640:
/* 3E40 80013640 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3E44 80013644 0800E003 */  jr         $ra
/* 3E48 80013648 00000000 */   nop
.size func_800133E0, . - func_800133E0
