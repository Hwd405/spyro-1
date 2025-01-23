.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

.section .rodata.jtbl
.align 3
dlabel jtbl_80011380
/* 1B80 80011380 B86F0580 */ .word .L80056FB8
/* 1B84 80011384 44700580 */ .word .L80057044
/* 1B88 80011388 64700580 */ .word .L80057064
/* 1B8C 8001138C 68730580 */ .word .L80057368
/* 1B90 80011390 9C700580 */ .word .L8005709C
/* 1B94 80011394 B8700580 */ .word .L800570B8
/* 1B98 80011398 EC700580 */ .word .L800570EC
/* 1B9C 8001139C 1C730580 */ .word .L8005731C
.size jtbl_80011380, . - jtbl_80011380


.section .text
/* Generated by spimdisasm 1.27.0 */

glabel func_80056F64
/* 47764 80056F64 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 47768 80056F68 0880023C */  lui        $v0, %hi(g_Environment + 0x10)
/* 4776C 80056F6C B885428C */  lw         $v0, %lo(g_Environment + 0x10)($v0)
/* 47770 80056F70 80200400 */  sll        $a0, $a0, 2
/* 47774 80056F74 2800BFAF */  sw         $ra, 0x28($sp)
/* 47778 80056F78 2400B1AF */  sw         $s1, 0x24($sp)
/* 4777C 80056F7C 2000B0AF */  sw         $s0, 0x20($sp)
/* 47780 80056F80 21208200 */  addu       $a0, $a0, $v0
/* 47784 80056F84 0000828C */  lw         $v0, 0x0($a0)
/* 47788 80056F88 00000000 */  nop
/* 4778C 80056F8C 00004390 */  lbu        $v1, 0x0($v0)
/* 47790 80056F90 04004624 */  addiu      $a2, $v0, 0x4
/* 47794 80056F94 0800622C */  sltiu      $v0, $v1, 0x8
/* 47798 80056F98 F3004010 */  beqz       $v0, .L80057368
/* 4779C 80056F9C 80100300 */   sll       $v0, $v1, 2
/* 477A0 80056FA0 0180013C */  lui        $at, %hi(jtbl_80011380)
/* 477A4 80056FA4 21082200 */  addu       $at, $at, $v0
/* 477A8 80056FA8 8013228C */  lw         $v0, %lo(jtbl_80011380)($at)
/* 477AC 80056FAC 00000000 */  nop
/* 477B0 80056FB0 08004000 */  jr         $v0
/* 477B4 80056FB4 00000000 */   nop
.L80056FB8:
/* 477B8 80056FB8 01000224 */  addiu      $v0, $zero, 0x1
/* 477BC 80056FBC 0E00A214 */  bne        $a1, $v0, .L80056FF8
/* 477C0 80056FC0 02000224 */   addiu     $v0, $zero, 0x2
/* 477C4 80056FC4 0880023C */  lui        $v0, %hi(g_Spyro + 0x8)
/* 477C8 80056FC8 608A428C */  lw         $v0, %lo(g_Spyro + 0x8)($v0)
/* 477CC 80056FCC 0880033C */  lui        $v1, %hi(g_Spyro + 0xA0)
/* 477D0 80056FD0 F88A638C */  lw         $v1, %lo(g_Spyro + 0xA0)($v1)
/* 477D4 80056FD4 00000000 */  nop
/* 477D8 80056FD8 23104300 */  subu       $v0, $v0, $v1
/* 477DC 80056FDC 01024228 */  slti       $v0, $v0, 0x201
/* 477E0 80056FE0 05004014 */  bnez       $v0, .L80056FF8
/* 477E4 80056FE4 02000224 */   addiu     $v0, $zero, 0x2
/* 477E8 80056FE8 0880013C */  lui        $at, %hi(g_Spyro + 0x170)
/* 477EC 80056FEC C88B25AC */  sw         $a1, %lo(g_Spyro + 0x170)($at)
/* 477F0 80056FF0 DA5C0108 */  j          .L80057368
/* 477F4 80056FF4 00000000 */   nop
.L80056FF8:
/* 477F8 80056FF8 DB00A214 */  bne        $a1, $v0, .L80057368
/* 477FC 80056FFC 00000000 */   nop
/* 47800 80057000 0880033C */  lui        $v1, %hi(g_Spyro + 0x2C)
/* 47804 80057004 848A6324 */  addiu      $v1, $v1, %lo(g_Spyro + 0x2C)
/* 47808 80057008 0000628C */  lw         $v0, 0x0($v1)
/* 4780C 8005700C 0880013C */  lui        $at, %hi(g_Spyro + 0x29C)
/* 47810 80057010 F48C26AC */  sw         $a2, %lo(g_Spyro + 0x29C)($at)
/* 47814 80057014 FF034230 */  andi       $v0, $v0, 0x3FF
/* 47818 80057018 00044234 */  ori        $v0, $v0, 0x400
/* 4781C 8005701C 000062AC */  sw         $v0, 0x0($v1)
/* 47820 80057020 0880023C */  lui        $v0, %hi(g_Spyro + 0xA0)
/* 47824 80057024 F88A428C */  lw         $v0, %lo(g_Spyro + 0xA0)($v0)
/* 47828 80057028 0400C38C */  lw         $v1, 0x4($a2)
/* 4782C 8005702C 0880013C */  lui        $at, %hi(g_Spyro + 0x174)
/* 47830 80057030 CC8B22AC */  sw         $v0, %lo(g_Spyro + 0x174)($at)
/* 47834 80057034 0780013C */  lui        $at, %hi(D_80075728)
/* 47838 80057038 285723AC */  sw         $v1, %lo(D_80075728)($at)
/* 4783C 8005703C DA5C0108 */  j          .L80057368
/* 47840 80057040 00000000 */   nop
.L80057044:
/* 47844 80057044 0880033C */  lui        $v1, %hi(g_Spyro + 0x2C)
/* 47848 80057048 848A6324 */  addiu      $v1, $v1, %lo(g_Spyro + 0x2C)
/* 4784C 8005704C 0000628C */  lw         $v0, 0x0($v1)
/* 47850 80057050 0880013C */  lui        $at, %hi(g_Spyro + 0x178)
/* 47854 80057054 D08B26AC */  sw         $a2, %lo(g_Spyro + 0x178)($at)
/* 47858 80057058 FF034230 */  andi       $v0, $v0, 0x3FF
/* 4785C 8005705C D95C0108 */  j          .L80057364
/* 47860 80057060 00084234 */   ori       $v0, $v0, 0x800
.L80057064:
/* 47864 80057064 0200A22C */  sltiu      $v0, $a1, 0x2
/* 47868 80057068 BF004010 */  beqz       $v0, .L80057368
/* 4786C 8005706C 00000000 */   nop
/* 47870 80057070 0880023C */  lui        $v0, %hi(g_Spyro + 0x8)
/* 47874 80057074 608A428C */  lw         $v0, %lo(g_Spyro + 0x8)($v0)
/* 47878 80057078 0880033C */  lui        $v1, %hi(g_Spyro + 0xA0)
/* 4787C 8005707C F88A638C */  lw         $v1, %lo(g_Spyro + 0xA0)($v1)
/* 47880 80057080 00000000 */  nop
/* 47884 80057084 23104300 */  subu       $v0, $v0, $v1
/* 47888 80057088 91014228 */  slti       $v0, $v0, 0x191
/* 4788C 8005708C B6004010 */  beqz       $v0, .L80057368
/* 47890 80057090 01000224 */   addiu     $v0, $zero, 0x1
/* 47894 80057094 DA5C0108 */  j          .L80057368
/* 47898 80057098 0000C2AC */   sw        $v0, 0x0($a2)
.L8005709C:
/* 4789C 8005709C 0880033C */  lui        $v1, %hi(g_Spyro + 0x2C)
/* 478A0 800570A0 848A6324 */  addiu      $v1, $v1, %lo(g_Spyro + 0x2C)
/* 478A4 800570A4 0000628C */  lw         $v0, 0x0($v1)
/* 478A8 800570A8 00000000 */  nop
/* 478AC 800570AC FF034230 */  andi       $v0, $v0, 0x3FF
/* 478B0 800570B0 D95C0108 */  j          .L80057364
/* 478B4 800570B4 00204234 */   ori       $v0, $v0, 0x2000
.L800570B8:
/* 478B8 800570B8 EA000424 */  addiu      $a0, $zero, 0xEA
/* 478BC 800570BC 0880023C */  lui        $v0, %hi(g_Spyro + 0x2C)
/* 478C0 800570C0 848A4224 */  addiu      $v0, $v0, %lo(g_Spyro + 0x2C)
/* 478C4 800570C4 21280000 */  addu       $a1, $zero, $zero
/* 478C8 800570C8 0000438C */  lw         $v1, 0x0($v0)
/* 478CC 800570CC 0780063C */  lui        $a2, %hi(D_800758CC)
/* 478D0 800570D0 CC58C68C */  lw         $a2, %lo(D_800758CC)($a2)
/* 478D4 800570D4 FF036330 */  andi       $v1, $v1, 0x3FF
/* 478D8 800570D8 00806334 */  ori        $v1, $v1, 0x8000
/* 478DC 800570DC 09F8C000 */  jalr       $a2
/* 478E0 800570E0 000043AC */   sw        $v1, 0x0($v0)
/* 478E4 800570E4 DA5C0108 */  j          .L80057368
/* 478E8 800570E8 00000000 */   nop
.L800570EC:
/* 478EC 800570EC 0880053C */  lui        $a1, %hi(g_Spyro + 0x164)
/* 478F0 800570F0 BC8BA524 */  addiu      $a1, $a1, %lo(g_Spyro + 0x164)
/* 478F4 800570F4 0000A28C */  lw         $v0, 0x0($a1)
/* 478F8 800570F8 00000000 */  nop
/* 478FC 800570FC 9A004004 */  bltz       $v0, .L80057368
/* 47900 80057100 00000000 */   nop
/* 47904 80057104 0000C28C */  lw         $v0, 0x0($a2)
/* 47908 80057108 0780013C */  lui        $at, %hi(D_800758B4)
/* 4790C 8005710C B45822AC */  sw         $v0, %lo(D_800758B4)($at)
/* 47910 80057110 41004228 */  slti       $v0, $v0, 0x41
/* 47914 80057114 07004014 */  bnez       $v0, .L80057134
/* 47918 80057118 6666023C */   lui       $v0, (0x66666667 >> 16)
/* 4791C 8005711C 0780023C */  lui        $v0, %hi(g_LevelId)
/* 47920 80057120 6C59428C */  lw         $v0, %lo(g_LevelId)($v0)
/* 47924 80057124 0780013C */  lui        $at, %hi(D_800758B4)
/* 47928 80057128 B45822AC */  sw         $v0, %lo(D_800758B4)($at)
/* 4792C 8005712C DA5C0108 */  j          .L80057368
/* 47930 80057130 00000000 */   nop
.L80057134:
/* 47934 80057134 0780043C */  lui        $a0, %hi(g_LevelId)
/* 47938 80057138 6C59848C */  lw         $a0, %lo(g_LevelId)($a0)
/* 4793C 8005713C 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 47940 80057140 18008200 */  mult       $a0, $v0
/* 47944 80057144 0400C68C */  lw         $a2, 0x4($a2)
/* 47948 80057148 01001124 */  addiu      $s1, $zero, 0x1
/* 4794C 8005714C 0780013C */  lui        $at, %hi(D_800756D0)
/* 47950 80057150 D05631AC */  sw         $s1, %lo(D_800756D0)($at)
/* 47954 80057154 C3170400 */  sra        $v0, $a0, 31
/* 47958 80057158 0780013C */  lui        $at, %hi(D_8007576C)
/* 4795C 8005715C 6C5726AC */  sw         $a2, %lo(D_8007576C)($at)
/* 47960 80057160 10380000 */  mfhi       $a3
/* 47964 80057164 83180700 */  sra        $v1, $a3, 2
/* 47968 80057168 23186200 */  subu       $v1, $v1, $v0
/* 4796C 8005716C 80100300 */  sll        $v0, $v1, 2
/* 47970 80057170 21104300 */  addu       $v0, $v0, $v1
/* 47974 80057174 40100200 */  sll        $v0, $v0, 1
/* 47978 80057178 03008210 */  beq        $a0, $v0, .L80057188
/* 4797C 8005717C 00000000 */   nop
/* 47980 80057180 0780013C */  lui        $at, %hi(D_800758AC)
/* 47984 80057184 AC5824AC */  sw         $a0, %lo(D_800758AC)($at)
.L80057188:
/* 47988 80057188 1000A427 */  addiu      $a0, $sp, 0x10
/* 4798C 8005718C 0880033C */  lui        $v1, %hi(D_80078640)
/* 47990 80057190 40866324 */  addiu      $v1, $v1, %lo(D_80078640)
/* 47994 80057194 80100600 */  sll        $v0, $a2, 2
/* 47998 80057198 21804300 */  addu       $s0, $v0, $v1
/* 4799C 8005719C 0000068E */  lw         $a2, 0x0($s0)
/* 479A0 800571A0 9CFEA524 */  addiu      $a1, $a1, -0x164
/* 479A4 800571A4 E35D000C */  jal        VecSub
/* 479A8 800571A8 2C00C624 */   addiu     $a2, $a2, 0x2C
/* 479AC 800571AC 0000048E */  lw         $a0, 0x0($s0)
/* 479B0 800571B0 1000A28F */  lw         $v0, 0x10($sp)
/* 479B4 800571B4 0800838C */  lw         $v1, 0x8($a0)
/* 479B8 800571B8 23100200 */  negu       $v0, $v0
/* 479BC 800571BC 18004300 */  mult       $v0, $v1
/* 479C0 800571C0 1400A38F */  lw         $v1, 0x14($sp)
/* 479C4 800571C4 12300000 */  mflo       $a2
/* 479C8 800571C8 0C00828C */  lw         $v0, 0xC($a0)
/* 479CC 800571CC 00000000 */  nop
/* 479D0 800571D0 18006200 */  mult       $v1, $v0
/* 479D4 800571D4 1800A38F */  lw         $v1, 0x18($sp)
/* 479D8 800571D8 12280000 */  mflo       $a1
/* 479DC 800571DC 1000828C */  lw         $v0, 0x10($a0)
/* 479E0 800571E0 00000000 */  nop
/* 479E4 800571E4 18006200 */  mult       $v1, $v0
/* 479E8 800571E8 1800848C */  lw         $a0, 0x18($a0)
/* 479EC 800571EC 2310C500 */  subu       $v0, $a2, $a1
/* 479F0 800571F0 12180000 */  mflo       $v1
/* 479F4 800571F4 0B008104 */  bgez       $a0, .L80057224
/* 479F8 800571F8 23304300 */   subu      $a2, $v0, $v1
/* 479FC 800571FC 0780013C */  lui        $at, %hi(g_LoadStage)
/* 47A00 80057200 645820AC */  sw         $zero, %lo(g_LoadStage)($at)
/* 47A04 80057204 0780013C */  lui        $at, %hi(g_Gamestate)
/* 47A08 80057208 D85731AC */  sw         $s1, %lo(g_Gamestate)($at)
/* 47A0C 8005720C 0780013C */  lui        $at, %hi(D_800756B0)
/* 47A10 80057210 B05631AC */  sw         $s1, %lo(D_800756B0)($at)
/* 47A14 80057214 0780013C */  lui        $at, %hi(D_800756AC)
/* 47A18 80057218 AC5620AC */  sw         $zero, %lo(D_800756AC)($at)
/* 47A1C 8005721C DA5C0108 */  j          .L80057368
/* 47A20 80057220 00000000 */   nop
.L80057224:
/* 47A24 80057224 40180400 */  sll        $v1, $a0, 1
/* 47A28 80057228 21186400 */  addu       $v1, $v1, $a0
/* 47A2C 8005722C 80180300 */  sll        $v1, $v1, 2
/* 47A30 80057230 23186400 */  subu       $v1, $v1, $a0
/* 47A34 80057234 C0180300 */  sll        $v1, $v1, 3
/* 47A38 80057238 0780023C */  lui        $v0, %hi(D_80075828)
/* 47A3C 8005723C 2858428C */  lw         $v0, %lo(D_80075828)($v0)
/* 47A40 80057240 01000524 */  addiu      $a1, $zero, 0x1
/* 47A44 80057244 21106200 */  addu       $v0, $v1, $v0
/* 47A48 80057248 480045A0 */  sb         $a1, 0x48($v0)
/* 47A4C 8005724C 0780023C */  lui        $v0, %hi(D_80075828)
/* 47A50 80057250 2858428C */  lw         $v0, %lo(D_80075828)($v0)
/* 47A54 80057254 FF000424 */  addiu      $a0, $zero, 0xFF
/* 47A58 80057258 21106200 */  addu       $v0, $v1, $v0
/* 47A5C 8005725C 520044A0 */  sb         $a0, 0x52($v0)
/* 47A60 80057260 0780023C */  lui        $v0, %hi(D_80075828)
/* 47A64 80057264 2858428C */  lw         $v0, %lo(D_80075828)($v0)
/* 47A68 80057268 00000000 */  nop
/* 47A6C 8005726C 21186200 */  addu       $v1, $v1, $v0
/* 47A70 80057270 0000648C */  lw         $a0, 0x0($v1)
/* 47A74 80057274 1500C104 */  bgez       $a2, .L800572CC
/* 47A78 80057278 00000000 */   nop
/* 47A7C 8005727C 490065A0 */  sb         $a1, 0x49($v1)
/* 47A80 80057280 0000028E */  lw         $v0, 0x0($s0)
/* 47A84 80057284 00000000 */  nop
/* 47A88 80057288 0800428C */  lw         $v0, 0x8($v0)
/* 47A8C 8005728C 00000000 */  nop
/* 47A90 80057290 23100200 */  negu       $v0, $v0
/* 47A94 80057294 43100200 */  sra        $v0, $v0, 1
/* 47A98 80057298 040082AC */  sw         $v0, 0x4($a0)
/* 47A9C 8005729C 0000028E */  lw         $v0, 0x0($s0)
/* 47AA0 800572A0 00000000 */  nop
/* 47AA4 800572A4 0C00428C */  lw         $v0, 0xC($v0)
/* 47AA8 800572A8 00000000 */  nop
/* 47AAC 800572AC 23100200 */  negu       $v0, $v0
/* 47AB0 800572B0 43100200 */  sra        $v0, $v0, 1
/* 47AB4 800572B4 080082AC */  sw         $v0, 0x8($a0)
/* 47AB8 800572B8 0000028E */  lw         $v0, 0x0($s0)
/* 47ABC 800572BC 00000000 */  nop
/* 47AC0 800572C0 1000428C */  lw         $v0, 0x10($v0)
/* 47AC4 800572C4 C35C0108 */  j          .L8005730C
/* 47AC8 800572C8 23100200 */   negu      $v0, $v0
.L800572CC:
/* 47ACC 800572CC 490060A0 */  sb         $zero, 0x49($v1)
/* 47AD0 800572D0 0000028E */  lw         $v0, 0x0($s0)
/* 47AD4 800572D4 00000000 */  nop
/* 47AD8 800572D8 0800428C */  lw         $v0, 0x8($v0)
/* 47ADC 800572DC 00000000 */  nop
/* 47AE0 800572E0 43100200 */  sra        $v0, $v0, 1
/* 47AE4 800572E4 040082AC */  sw         $v0, 0x4($a0)
/* 47AE8 800572E8 0000028E */  lw         $v0, 0x0($s0)
/* 47AEC 800572EC 00000000 */  nop
/* 47AF0 800572F0 0C00428C */  lw         $v0, 0xC($v0)
/* 47AF4 800572F4 00000000 */  nop
/* 47AF8 800572F8 43100200 */  sra        $v0, $v0, 1
/* 47AFC 800572FC 080082AC */  sw         $v0, 0x8($a0)
/* 47B00 80057300 0000028E */  lw         $v0, 0x0($s0)
/* 47B04 80057304 00000000 */  nop
/* 47B08 80057308 1000428C */  lw         $v0, 0x10($v0)
.L8005730C:
/* 47B0C 8005730C 00000000 */  nop
/* 47B10 80057310 43100200 */  sra        $v0, $v0, 1
/* 47B14 80057314 DA5C0108 */  j          .L80057368
/* 47B18 80057318 0C0082AC */   sw        $v0, 0xC($a0)
.L8005731C:
/* 47B1C 8005731C 02000224 */  addiu      $v0, $zero, 0x2
/* 47B20 80057320 1100A214 */  bne        $a1, $v0, .L80057368
/* 47B24 80057324 00000000 */   nop
/* 47B28 80057328 0000C28C */  lw         $v0, 0x0($a2)
/* 47B2C 8005732C 00000000 */  nop
/* 47B30 80057330 80100200 */  sll        $v0, $v0, 2
/* 47B34 80057334 0780013C */  lui        $at, %hi(D_800777C0)
/* 47B38 80057338 21082200 */  addu       $at, $at, $v0
/* 47B3C 8005733C C077228C */  lw         $v0, %lo(D_800777C0)($at)
/* 47B40 80057340 00000000 */  nop
/* 47B44 80057344 08004010 */  beqz       $v0, .L80057368
/* 47B48 80057348 00000000 */   nop
/* 47B4C 8005734C 0880033C */  lui        $v1, %hi(g_Spyro + 0x2C)
/* 47B50 80057350 848A6324 */  addiu      $v1, $v1, %lo(g_Spyro + 0x2C)
/* 47B54 80057354 0000628C */  lw         $v0, 0x0($v1)
/* 47B58 80057358 00000000 */  nop
/* 47B5C 8005735C FF034230 */  andi       $v0, $v0, 0x3FF
/* 47B60 80057360 26004234 */  ori        $v0, $v0, 0x26
.L80057364:
/* 47B64 80057364 000062AC */  sw         $v0, 0x0($v1)
.L80057368:
/* 47B68 80057368 2800BF8F */  lw         $ra, 0x28($sp)
/* 47B6C 8005736C 2400B18F */  lw         $s1, 0x24($sp)
/* 47B70 80057370 2000B08F */  lw         $s0, 0x20($sp)
/* 47B74 80057374 3000BD27 */  addiu      $sp, $sp, 0x30
/* 47B78 80057378 0800E003 */  jr         $ra
/* 47B7C 8005737C 00000000 */   nop
.size func_80056F64, . - func_80056F64
