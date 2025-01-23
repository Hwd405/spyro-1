.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80032A20
/* 23220 80032A20 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23224 80032A24 01000424 */  addiu      $a0, $zero, 0x1
/* 23228 80032A28 1000B0AF */  sw         $s0, 0x10($sp)
/* 2322C 80032A2C 0880103C */  lui        $s0, %hi(D_80078DB8)
/* 23230 80032A30 B88D1026 */  addiu      $s0, $s0, %lo(D_80078DB8)
/* 23234 80032A34 21280002 */  addu       $a1, $s0, $zero
/* 23238 80032A38 1400BFAF */  sw         $ra, 0x14($sp)
/* 2323C 80032A3C 8A9D010C */  jal        MemCardSync
/* 23240 80032A40 04000626 */   addiu     $a2, $s0, 0x4
/* 23244 80032A44 21284000 */  addu       $a1, $v0, $zero
/* 23248 80032A48 1400A010 */  beqz       $a1, .L80032A9C
/* 2324C 80032A4C 01000224 */   addiu     $v0, $zero, 0x1
/* 23250 80032A50 0E00A214 */  bne        $a1, $v0, .L80032A8C
/* 23254 80032A54 00000000 */   nop
/* 23258 80032A58 F0FF0426 */  addiu      $a0, $s0, -0x10
/* 2325C 80032A5C 0880023C */  lui        $v0, %hi(D_80078DA4)
/* 23260 80032A60 A48D428C */  lw         $v0, %lo(D_80078DA4)($v0)
/* 23264 80032A64 0400038E */  lw         $v1, 0x4($s0)
/* 23268 80032A68 80100200 */  sll        $v0, $v0, 2
/* 2326C 80032A6C 21104400 */  addu       $v0, $v0, $a0
/* 23270 80032A70 000043AC */  sw         $v1, 0x0($v0)
/* 23274 80032A74 0880023C */  lui        $v0, %hi(D_80078DA4)
/* 23278 80032A78 A48D428C */  lw         $v0, %lo(D_80078DA4)($v0)
/* 2327C 80032A7C 00000000 */  nop
/* 23280 80032A80 2310A200 */  subu       $v0, $a1, $v0
/* 23284 80032A84 0880013C */  lui        $at, %hi(D_80078DA4)
/* 23288 80032A88 A48D22AC */  sw         $v0, %lo(D_80078DA4)($at)
.L80032A8C:
/* 2328C 80032A8C 0880043C */  lui        $a0, %hi(D_80078DA4)
/* 23290 80032A90 A48D848C */  lw         $a0, %lo(D_80078DA4)($a0)
/* 23294 80032A94 D798010C */  jal        MemCardExist
/* 23298 80032A98 00210400 */   sll       $a0, $a0, 4
.L80032A9C:
/* 2329C 80032A9C 1400BF8F */  lw         $ra, 0x14($sp)
/* 232A0 80032AA0 1000B08F */  lw         $s0, 0x10($sp)
/* 232A4 80032AA4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 232A8 80032AA8 0800E003 */  jr         $ra
/* 232AC 80032AAC 00000000 */   nop
.size func_80032A20, . - func_80032A20
