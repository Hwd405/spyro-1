.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800557CC
/* 45FCC 800557CC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 45FD0 800557D0 2000B2AF */  sw         $s2, 0x20($sp)
/* 45FD4 800557D4 21908000 */  addu       $s2, $a0, $zero
/* 45FD8 800557D8 3000B6AF */  sw         $s6, 0x30($sp)
/* 45FDC 800557DC 21B0A000 */  addu       $s6, $a1, $zero
/* 45FE0 800557E0 2400B3AF */  sw         $s3, 0x24($sp)
/* 45FE4 800557E4 01001324 */  addiu      $s3, $zero, 0x1
/* 45FE8 800557E8 1800B0AF */  sw         $s0, 0x18($sp)
/* 45FEC 800557EC 0780103C */  lui        $s0, %hi(g_Camera + 0x50)
/* 45FF0 800557F0 206E1026 */  addiu      $s0, $s0, %lo(g_Camera + 0x50)
/* 45FF4 800557F4 3400BFAF */  sw         $ra, 0x34($sp)
/* 45FF8 800557F8 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 45FFC 800557FC 2800B4AF */  sw         $s4, 0x28($sp)
/* 46000 80055800 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 46004 80055804 0C00D58E */  lw         $s5, 0xC($s6)
/* 46008 80055808 00000486 */  lh         $a0, 0x0($s0)
/* 4600C 8005580C 1000D48E */  lw         $s4, 0x10($s6)
/* 46010 80055810 2C5B000C */  jal        func_80016CB0
/* 46014 80055814 00FC8424 */   addiu     $a0, $a0, -0x400
/* 46018 80055818 00000486 */  lh         $a0, 0x0($s0)
/* 4601C 8005581C 03120200 */  sra        $v0, $v0, 8
/* 46020 80055820 1000A2A7 */  sh         $v0, 0x10($sp)
/* 46024 80055824 165B000C */  jal        func_80016C58
/* 46028 80055828 00FC8424 */   addiu     $a0, $a0, -0x400
/* 4602C 8005582C 03120200 */  sra        $v0, $v0, 8
/* 46030 80055830 1200A2A7 */  sh         $v0, 0x12($sp)
/* 46034 80055834 80000224 */  addiu      $v0, $zero, 0x80
/* 46038 80055838 3D004012 */  beqz       $s2, .L80055930
/* 4603C 8005583C 1400A2A7 */   sh        $v0, 0x14($sp)
.L80055840:
/* 46040 80055840 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 46044 80055844 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 46048 80055848 18004202 */  mult       $s2, $v0
/* 4604C 8005584C C3171200 */  sra        $v0, $s2, 31
/* 46050 80055850 21280000 */  addu       $a1, $zero, $zero
/* 46054 80055854 10300000 */  mfhi       $a2
/* 46058 80055858 83180600 */  sra        $v1, $a2, 2
/* 4605C 8005585C 23886200 */  subu       $s1, $v1, $v0
/* 46060 80055860 21802002 */  addu       $s0, $s1, $zero
/* 46064 80055864 80101000 */  sll        $v0, $s0, 2
/* 46068 80055868 21105000 */  addu       $v0, $v0, $s0
/* 4606C 8005586C 40100200 */  sll        $v0, $v0, 1
/* 46070 80055870 23884202 */  subu       $s1, $s2, $v0
/* 46074 80055874 0780023C */  lui        $v0, %hi(D_800758CC)
/* 46078 80055878 CC58428C */  lw         $v0, %lo(D_800758CC)($v0)
/* 4607C 8005587C 00000000 */  nop
/* 46080 80055880 09F84000 */  jalr       $v0
/* 46084 80055884 04012426 */   addiu     $a0, $s1, 0x104
/* 46088 80055888 0C0055AC */  sw         $s5, 0xC($v0)
/* 4608C 8005588C 100054AC */  sw         $s4, 0x10($v0)
/* 46090 80055890 1400C38E */  lw         $v1, 0x14($s6)
/* 46094 80055894 18003302 */  mult       $s1, $s3
/* 46098 80055898 440040A0 */  sb         $zero, 0x44($v0)
/* 4609C 8005589C 450040A0 */  sb         $zero, 0x45($v0)
/* 460A0 800558A0 140043AC */  sw         $v1, 0x14($v0)
/* 460A4 800558A4 0780033C */  lui        $v1, %hi(g_Camera + 0x50)
/* 460A8 800558A8 206E6394 */  lhu        $v1, %lo(g_Camera + 0x50)($v1)
/* 460AC 800558AC 0000448C */  lw         $a0, 0x0($v0)
/* 460B0 800558B0 02190300 */  srl        $v1, $v1, 4
/* 460B4 800558B4 460043A0 */  sb         $v1, 0x46($v0)
/* 460B8 800558B8 1000A387 */  lh         $v1, 0x10($sp)
/* 460BC 800558BC 00000000 */  nop
/* 460C0 800558C0 080083AC */  sw         $v1, 0x8($a0)
/* 460C4 800558C4 1200A387 */  lh         $v1, 0x12($sp)
/* 460C8 800558C8 00000000 */  nop
/* 460CC 800558CC 0C0083AC */  sw         $v1, 0xC($a0)
/* 460D0 800558D0 1400A387 */  lh         $v1, 0x14($sp)
/* 460D4 800558D4 21900002 */  addu       $s2, $s0, $zero
/* 460D8 800558D8 100083AC */  sw         $v1, 0x10($a0)
/* 460DC 800558DC 80181300 */  sll        $v1, $s3, 2
/* 460E0 800558E0 21187300 */  addu       $v1, $v1, $s3
/* 460E4 800558E4 40980300 */  sll        $s3, $v1, 1
/* 460E8 800558E8 12300000 */  mflo       $a2
/* 460EC 800558EC 040086AC */  sw         $a2, 0x4($a0)
/* 460F0 800558F0 46004490 */  lbu        $a0, 0x46($v0)
/* 460F4 800558F4 1400A297 */  lhu        $v0, 0x14($sp)
/* 460F8 800558F8 40200400 */  sll        $a0, $a0, 1
/* 460FC 800558FC 0780013C */  lui        $at, %hi(D_8006CBF8)
/* 46100 80055900 21082400 */  addu       $at, $at, $a0
/* 46104 80055904 F8CB2384 */  lh         $v1, %lo(D_8006CBF8)($at)
/* 46108 80055908 0780013C */  lui        $at, %hi(D_8006CC78)
/* 4610C 8005590C 21082400 */  addu       $at, $at, $a0
/* 46110 80055910 78CC2484 */  lh         $a0, %lo(D_8006CC78)($at)
/* 46114 80055914 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 46118 80055918 1400A2A7 */  sh         $v0, 0x14($sp)
/* 4611C 8005591C 03190300 */  sra        $v1, $v1, 4
/* 46120 80055920 23A8A302 */  subu       $s5, $s5, $v1
/* 46124 80055924 03210400 */  sra        $a0, $a0, 4
/* 46128 80055928 C5FF4016 */  bnez       $s2, .L80055840
/* 4612C 8005592C 21A08402 */   addu      $s4, $s4, $a0
.L80055930:
/* 46130 80055930 3400BF8F */  lw         $ra, 0x34($sp)
/* 46134 80055934 3000B68F */  lw         $s6, 0x30($sp)
/* 46138 80055938 2C00B58F */  lw         $s5, 0x2C($sp)
/* 4613C 8005593C 2800B48F */  lw         $s4, 0x28($sp)
/* 46140 80055940 2400B38F */  lw         $s3, 0x24($sp)
/* 46144 80055944 2000B28F */  lw         $s2, 0x20($sp)
/* 46148 80055948 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4614C 8005594C 1800B08F */  lw         $s0, 0x18($sp)
/* 46150 80055950 3800BD27 */  addiu      $sp, $sp, 0x38
/* 46154 80055954 0800E003 */  jr         $ra
/* 46158 80055958 00000000 */   nop
.size func_800557CC, . - func_800557CC
