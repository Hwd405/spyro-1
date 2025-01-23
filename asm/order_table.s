.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.27.0 */

/* Handwritten function */
glabel func_80016784
/* 6F84 80016784 0780023C */  lui        $v0, %hi(D_80075820)
/* 6F88 80016788 20584224 */  addiu      $v0, $v0, %lo(D_80075820)
/* 6F8C 8001678C 0000428C */  lw         $v0, 0x0($v0)
/* 6F90 80016790 C0080400 */  sll        $at, $a0, 3
/* 6F94 80016794 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
.L80016798:
/* 6F98 80016798 2E002210 */  beq        $at, $v0, .L80016854
/* 6F9C 8001679C F8FF238C */   lw        $v1, -0x8($at)
/* 6FA0 800167A0 F8FF2120 */  addi       $at, $at, -0x8 /* handwritten instruction */
/* 6FA4 800167A4 FCFF6010 */  beqz       $v1, .L80016798
/* 6FA8 800167A8 00000000 */   nop
/* 6FAC 800167AC 0400268C */  lw         $a2, 0x4($at)
/* 6FB0 800167B0 000020AC */  sw         $zero, 0x0($at)
/* 6FB4 800167B4 0C002210 */  beq        $at, $v0, .L800167E8
/* 6FB8 800167B8 040020AC */   sw        $zero, 0x4($at)
.L800167BC:
/* 6FBC 800167BC 0A002210 */  beq        $at, $v0, .L800167E8
/* 6FC0 800167C0 FCFF248C */   lw        $a0, -0x4($at)
/* 6FC4 800167C4 F8FF2120 */  addi       $at, $at, -0x8 /* handwritten instruction */
/* 6FC8 800167C8 FCFF8010 */  beqz       $a0, .L800167BC
/* 6FCC 800167CC 022C0400 */   srl       $a1, $a0, 16
/* 6FD0 800167D0 000064A4 */  sh         $a0, 0x0($v1)
/* 6FD4 800167D4 020065A0 */  sb         $a1, 0x2($v1)
/* 6FD8 800167D8 0000238C */  lw         $v1, 0x0($at)
/* 6FDC 800167DC 040020AC */  sw         $zero, 0x4($at)
/* 6FE0 800167E0 EF590008 */  j          .L800167BC
/* 6FE4 800167E4 000020AC */   sw        $zero, 0x0($at)
.L800167E8:
/* 6FE8 800167E8 0780013C */  lui        $at, %hi(D_8007581C)
/* 6FEC 800167EC 1C582124 */  addiu      $at, $at, %lo(D_8007581C)
/* 6FF0 800167F0 0000218C */  lw         $at, 0x0($at)
/* 6FF4 800167F4 00000000 */  nop
/* 6FF8 800167F8 0400248C */  lw         $a0, 0x4($at)
/* 6FFC 800167FC 00000000 */  nop
/* 7000 80016800 0D008010 */  beqz       $a0, .L80016838
/* 7004 80016804 022C0400 */   srl       $a1, $a0, 16
/* 7008 80016808 000064A4 */  sh         $a0, 0x0($v1)
/* 700C 8001680C 020065A0 */  sb         $a1, 0x2($v1)
/* 7010 80016810 0000238C */  lw         $v1, 0x0($at)
/* 7014 80016814 040020AC */  sw         $zero, 0x4($at)
/* 7018 80016818 000020AC */  sw         $zero, 0x0($at)
/* 701C 8001681C 0780043C */  lui        $a0, %hi(D_8006BBE0)
/* 7020 80016820 E0BB8424 */  addiu      $a0, $a0, %lo(D_8006BBE0)
/* 7024 80016824 022C0400 */  srl        $a1, $a0, 16
/* 7028 80016828 000064A4 */  sh         $a0, 0x0($v1)
/* 702C 8001682C 020065A0 */  sb         $a1, 0x2($v1)
/* 7030 80016830 0800E003 */  jr         $ra
/* 7034 80016834 0000C220 */   addi      $v0, $a2, 0x0 /* handwritten instruction */
.L80016838:
/* 7038 80016838 0780043C */  lui        $a0, %hi(D_8006BBE0)
/* 703C 8001683C E0BB8424 */  addiu      $a0, $a0, %lo(D_8006BBE0)
/* 7040 80016840 022C0400 */  srl        $a1, $a0, 16
/* 7044 80016844 000064A4 */  sh         $a0, 0x0($v1)
/* 7048 80016848 020065A0 */  sb         $a1, 0x2($v1)
/* 704C 8001684C 0800E003 */  jr         $ra
/* 7050 80016850 0000C220 */   addi      $v0, $a2, 0x0 /* handwritten instruction */
.L80016854:
/* 7054 80016854 0780013C */  lui        $at, %hi(D_8007581C)
/* 7058 80016858 1C582124 */  addiu      $at, $at, %lo(D_8007581C)
/* 705C 8001685C 0000218C */  lw         $at, 0x0($at)
/* 7060 80016860 00000000 */  nop
/* 7064 80016864 0000238C */  lw         $v1, 0x0($at)
/* 7068 80016868 0400228C */  lw         $v0, 0x4($at)
/* 706C 8001686C 08006010 */  beqz       $v1, .L80016890
/* 7070 80016870 000020AC */   sw        $zero, 0x0($at)
/* 7074 80016874 040020AC */  sw         $zero, 0x4($at)
/* 7078 80016878 0780043C */  lui        $a0, %hi(D_8006BBE0)
/* 707C 8001687C E0BB8424 */  addiu      $a0, $a0, %lo(D_8006BBE0)
/* 7080 80016880 022C0400 */  srl        $a1, $a0, 16
/* 7084 80016884 000064A4 */  sh         $a0, 0x0($v1)
/* 7088 80016888 0800E003 */  jr         $ra
/* 708C 8001688C 020065A0 */   sb        $a1, 0x2($v1)
.L80016890:
/* 7090 80016890 0780023C */  lui        $v0, %hi(D_8006BBE0)
/* 7094 80016894 E0BB4224 */  addiu      $v0, $v0, %lo(D_8006BBE0)
/* 7098 80016898 0800E003 */  jr         $ra
/* 709C 8001689C 00000000 */   nop
.size func_80016784, . - func_80016784

/* Handwritten function */
glabel func_800168A0
/* 70A0 800168A0 0780063C */  lui        $a2, %hi(D_80075820)
/* 70A4 800168A4 2058C624 */  addiu      $a2, $a2, %lo(D_80075820)
/* 70A8 800168A8 0000C68C */  lw         $a2, 0x0($a2)
/* 70AC 800168AC C0280500 */  sll        $a1, $a1, 3
/* 70B0 800168B0 2028A600 */  add        $a1, $a1, $a2 /* handwritten instruction */
/* 70B4 800168B4 0000A18C */  lw         $at, 0x0($a1)
/* 70B8 800168B8 00000000 */  nop
/* 70BC 800168BC 05002010 */  beqz       $at, .L800168D4
/* 70C0 800168C0 0000A4AC */   sw        $a0, 0x0($a1)
/* 70C4 800168C4 000024A4 */  sh         $a0, 0x0($at)
/* 70C8 800168C8 02240400 */  srl        $a0, $a0, 16
/* 70CC 800168CC 0800E003 */  jr         $ra
/* 70D0 800168D0 020024A0 */   sb        $a0, 0x2($at)
.L800168D4:
/* 70D4 800168D4 0800E003 */  jr         $ra
/* 70D8 800168D8 0400A4AC */   sw        $a0, 0x4($a1)
.size func_800168A0, . - func_800168A0

glabel func_800168DC
/* 70DC 800168DC 0780033C */  lui        $v1, %hi(D_8007581C)
/* 70E0 800168E0 1C586324 */  addiu      $v1, $v1, %lo(D_8007581C)
/* 70E4 800168E4 0000638C */  lw         $v1, 0x0($v1)
/* 70E8 800168E8 00000000 */  nop
/* 70EC 800168EC 0000618C */  lw         $at, 0x0($v1)
/* 70F0 800168F0 00000000 */  nop
/* 70F4 800168F4 05002010 */  beqz       $at, .L8001690C
/* 70F8 800168F8 000064AC */   sw        $a0, 0x0($v1)
/* 70FC 800168FC 000024A4 */  sh         $a0, 0x0($at)
/* 7100 80016900 02240400 */  srl        $a0, $a0, 16
/* 7104 80016904 0800E003 */  jr         $ra
/* 7108 80016908 020024A0 */   sb        $a0, 0x2($at)
.L8001690C:
/* 710C 8001690C 0800E003 */  jr         $ra
/* 7110 80016910 040064AC */   sw        $a0, 0x4($v1)
.size func_800168DC, . - func_800168DC
