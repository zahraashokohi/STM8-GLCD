   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  45                     ; 53 void UART1_DeInit(void)
  45                     ; 54 {
  47                     .text:	section	.text,new
  48  0000               _UART1_DeInit:
  52                     ; 57   (void)UART1->SR;
  54  0000 c65230        	ld	a,21040
  55                     ; 58   (void)UART1->DR;
  57  0003 c65231        	ld	a,21041
  58                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  60  0006 725f5233      	clr	21043
  61                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  63  000a 725f5232      	clr	21042
  64                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  66  000e 725f5234      	clr	21044
  67                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  69  0012 725f5235      	clr	21045
  70                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  72  0016 725f5236      	clr	21046
  73                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  75  001a 725f5237      	clr	21047
  76                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  78  001e 725f5238      	clr	21048
  79                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  81  0022 725f5239      	clr	21049
  82                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  84  0026 725f523a      	clr	21050
  85                     ; 71 }
  88  002a 81            	ret
 391                     .const:	section	.text
 392  0000               L01:
 393  0000 00000064      	dc.l	100
 394                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 394                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 394                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 394                     ; 93 {
 395                     .text:	section	.text,new
 396  0000               _UART1_Init:
 398  0000 520c          	subw	sp,#12
 399       0000000c      OFST:	set	12
 402                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 406                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 408                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 410                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 412                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 414                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 416                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 418                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 420  0002 72195234      	bres	21044,#4
 421                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 423  0006 c65234        	ld	a,21044
 424  0009 1a13          	or	a,(OFST+7,sp)
 425  000b c75234        	ld	21044,a
 426                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 428  000e c65236        	ld	a,21046
 429  0011 a4cf          	and	a,#207
 430  0013 c75236        	ld	21046,a
 431                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 433  0016 c65236        	ld	a,21046
 434  0019 1a14          	or	a,(OFST+8,sp)
 435  001b c75236        	ld	21046,a
 436                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 438  001e c65234        	ld	a,21044
 439  0021 a4f9          	and	a,#249
 440  0023 c75234        	ld	21044,a
 441                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 443  0026 c65234        	ld	a,21044
 444  0029 1a15          	or	a,(OFST+9,sp)
 445  002b c75234        	ld	21044,a
 446                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 448  002e 725f5232      	clr	21042
 449                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 451  0032 c65233        	ld	a,21043
 452  0035 a40f          	and	a,#15
 453  0037 c75233        	ld	21043,a
 454                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 456  003a c65233        	ld	a,21043
 457  003d a4f0          	and	a,#240
 458  003f c75233        	ld	21043,a
 459                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 461  0042 96            	ldw	x,sp
 462  0043 1c000f        	addw	x,#OFST+3
 463  0046 cd0000        	call	c_ltor
 465  0049 a604          	ld	a,#4
 466  004b cd0000        	call	c_llsh
 468  004e 96            	ldw	x,sp
 469  004f 1c0001        	addw	x,#OFST-11
 470  0052 cd0000        	call	c_rtol
 473  0055 cd0000        	call	_CLK_GetClockFreq
 475  0058 96            	ldw	x,sp
 476  0059 1c0001        	addw	x,#OFST-11
 477  005c cd0000        	call	c_ludv
 479  005f 96            	ldw	x,sp
 480  0060 1c0009        	addw	x,#OFST-3
 481  0063 cd0000        	call	c_rtol
 484                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 486  0066 96            	ldw	x,sp
 487  0067 1c000f        	addw	x,#OFST+3
 488  006a cd0000        	call	c_ltor
 490  006d a604          	ld	a,#4
 491  006f cd0000        	call	c_llsh
 493  0072 96            	ldw	x,sp
 494  0073 1c0001        	addw	x,#OFST-11
 495  0076 cd0000        	call	c_rtol
 498  0079 cd0000        	call	_CLK_GetClockFreq
 500  007c a664          	ld	a,#100
 501  007e cd0000        	call	c_smul
 503  0081 96            	ldw	x,sp
 504  0082 1c0001        	addw	x,#OFST-11
 505  0085 cd0000        	call	c_ludv
 507  0088 96            	ldw	x,sp
 508  0089 1c0005        	addw	x,#OFST-7
 509  008c cd0000        	call	c_rtol
 512                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 514  008f 96            	ldw	x,sp
 515  0090 1c0009        	addw	x,#OFST-3
 516  0093 cd0000        	call	c_ltor
 518  0096 a664          	ld	a,#100
 519  0098 cd0000        	call	c_smul
 521  009b 96            	ldw	x,sp
 522  009c 1c0001        	addw	x,#OFST-11
 523  009f cd0000        	call	c_rtol
 526  00a2 96            	ldw	x,sp
 527  00a3 1c0005        	addw	x,#OFST-7
 528  00a6 cd0000        	call	c_ltor
 530  00a9 96            	ldw	x,sp
 531  00aa 1c0001        	addw	x,#OFST-11
 532  00ad cd0000        	call	c_lsub
 534  00b0 a604          	ld	a,#4
 535  00b2 cd0000        	call	c_llsh
 537  00b5 ae0000        	ldw	x,#L01
 538  00b8 cd0000        	call	c_ludv
 540  00bb b603          	ld	a,c_lreg+3
 541  00bd a40f          	and	a,#15
 542  00bf ca5233        	or	a,21043
 543  00c2 c75233        	ld	21043,a
 544                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 546  00c5 96            	ldw	x,sp
 547  00c6 1c0009        	addw	x,#OFST-3
 548  00c9 cd0000        	call	c_ltor
 550  00cc a604          	ld	a,#4
 551  00ce cd0000        	call	c_lursh
 553  00d1 b603          	ld	a,c_lreg+3
 554  00d3 a4f0          	and	a,#240
 555  00d5 b703          	ld	c_lreg+3,a
 556  00d7 3f02          	clr	c_lreg+2
 557  00d9 3f01          	clr	c_lreg+1
 558  00db 3f00          	clr	c_lreg
 559  00dd b603          	ld	a,c_lreg+3
 560  00df ca5233        	or	a,21043
 561  00e2 c75233        	ld	21043,a
 562                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 564  00e5 c65232        	ld	a,21042
 565  00e8 1a0c          	or	a,(OFST+0,sp)
 566  00ea c75232        	ld	21042,a
 567                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 569  00ed c65235        	ld	a,21045
 570  00f0 a4f3          	and	a,#243
 571  00f2 c75235        	ld	21045,a
 572                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 574  00f5 c65236        	ld	a,21046
 575  00f8 a4f8          	and	a,#248
 576  00fa c75236        	ld	21046,a
 577                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 577                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 579  00fd 7b16          	ld	a,(OFST+10,sp)
 580  00ff a407          	and	a,#7
 581  0101 ca5236        	or	a,21046
 582  0104 c75236        	ld	21046,a
 583                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 585  0107 7b17          	ld	a,(OFST+11,sp)
 586  0109 a504          	bcp	a,#4
 587  010b 2706          	jreq	L371
 588                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 590  010d 72165235      	bset	21045,#3
 592  0111 2004          	jra	L571
 593  0113               L371:
 594                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 596  0113 72175235      	bres	21045,#3
 597  0117               L571:
 598                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 600  0117 7b17          	ld	a,(OFST+11,sp)
 601  0119 a508          	bcp	a,#8
 602  011b 2706          	jreq	L771
 603                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 605  011d 72145235      	bset	21045,#2
 607  0121 2004          	jra	L102
 608  0123               L771:
 609                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 611  0123 72155235      	bres	21045,#2
 612  0127               L102:
 613                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 615  0127 7b16          	ld	a,(OFST+10,sp)
 616  0129 a580          	bcp	a,#128
 617  012b 2706          	jreq	L302
 618                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 620  012d 72175236      	bres	21046,#3
 622  0131 200a          	jra	L502
 623  0133               L302:
 624                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 626  0133 7b16          	ld	a,(OFST+10,sp)
 627  0135 a408          	and	a,#8
 628  0137 ca5236        	or	a,21046
 629  013a c75236        	ld	21046,a
 630  013d               L502:
 631                     ; 176 }
 634  013d 5b0c          	addw	sp,#12
 635  013f 81            	ret
 690                     ; 184 void UART1_Cmd(FunctionalState NewState)
 690                     ; 185 {
 691                     .text:	section	.text,new
 692  0000               _UART1_Cmd:
 696                     ; 186   if (NewState != DISABLE)
 698  0000 4d            	tnz	a
 699  0001 2706          	jreq	L532
 700                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 702  0003 721b5234      	bres	21044,#5
 704  0007 2004          	jra	L732
 705  0009               L532:
 706                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 708  0009 721a5234      	bset	21044,#5
 709  000d               L732:
 710                     ; 196 }
 713  000d 81            	ret
 838                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 838                     ; 212 {
 839                     .text:	section	.text,new
 840  0000               _UART1_ITConfig:
 842  0000 89            	pushw	x
 843  0001 89            	pushw	x
 844       00000002      OFST:	set	2
 847                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 851                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 853                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 855                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 857  0002 9e            	ld	a,xh
 858  0003 6b01          	ld	(OFST-1,sp),a
 860                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 862  0005 9f            	ld	a,xl
 863  0006 a40f          	and	a,#15
 864  0008 5f            	clrw	x
 865  0009 97            	ld	xl,a
 866  000a a601          	ld	a,#1
 867  000c 5d            	tnzw	x
 868  000d 2704          	jreq	L61
 869  000f               L02:
 870  000f 48            	sll	a
 871  0010 5a            	decw	x
 872  0011 26fc          	jrne	L02
 873  0013               L61:
 874  0013 6b02          	ld	(OFST+0,sp),a
 876                     ; 224   if (NewState != DISABLE)
 878  0015 0d07          	tnz	(OFST+5,sp)
 879  0017 272a          	jreq	L713
 880                     ; 227     if (uartreg == 0x01)
 882  0019 7b01          	ld	a,(OFST-1,sp)
 883  001b a101          	cp	a,#1
 884  001d 260a          	jrne	L123
 885                     ; 229       UART1->CR1 |= itpos;
 887  001f c65234        	ld	a,21044
 888  0022 1a02          	or	a,(OFST+0,sp)
 889  0024 c75234        	ld	21044,a
 891  0027 2045          	jra	L133
 892  0029               L123:
 893                     ; 231     else if (uartreg == 0x02)
 895  0029 7b01          	ld	a,(OFST-1,sp)
 896  002b a102          	cp	a,#2
 897  002d 260a          	jrne	L523
 898                     ; 233       UART1->CR2 |= itpos;
 900  002f c65235        	ld	a,21045
 901  0032 1a02          	or	a,(OFST+0,sp)
 902  0034 c75235        	ld	21045,a
 904  0037 2035          	jra	L133
 905  0039               L523:
 906                     ; 237       UART1->CR4 |= itpos;
 908  0039 c65237        	ld	a,21047
 909  003c 1a02          	or	a,(OFST+0,sp)
 910  003e c75237        	ld	21047,a
 911  0041 202b          	jra	L133
 912  0043               L713:
 913                     ; 243     if (uartreg == 0x01)
 915  0043 7b01          	ld	a,(OFST-1,sp)
 916  0045 a101          	cp	a,#1
 917  0047 260b          	jrne	L333
 918                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
 920  0049 7b02          	ld	a,(OFST+0,sp)
 921  004b 43            	cpl	a
 922  004c c45234        	and	a,21044
 923  004f c75234        	ld	21044,a
 925  0052 201a          	jra	L133
 926  0054               L333:
 927                     ; 247     else if (uartreg == 0x02)
 929  0054 7b01          	ld	a,(OFST-1,sp)
 930  0056 a102          	cp	a,#2
 931  0058 260b          	jrne	L733
 932                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
 934  005a 7b02          	ld	a,(OFST+0,sp)
 935  005c 43            	cpl	a
 936  005d c45235        	and	a,21045
 937  0060 c75235        	ld	21045,a
 939  0063 2009          	jra	L133
 940  0065               L733:
 941                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
 943  0065 7b02          	ld	a,(OFST+0,sp)
 944  0067 43            	cpl	a
 945  0068 c45237        	and	a,21047
 946  006b c75237        	ld	21047,a
 947  006e               L133:
 948                     ; 257 }
 951  006e 5b04          	addw	sp,#4
 952  0070 81            	ret
 988                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
 988                     ; 266 {
 989                     .text:	section	.text,new
 990  0000               _UART1_HalfDuplexCmd:
 994                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 996                     ; 269   if (NewState != DISABLE)
 998  0000 4d            	tnz	a
 999  0001 2706          	jreq	L163
1000                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1002  0003 72165238      	bset	21048,#3
1004  0007 2004          	jra	L363
1005  0009               L163:
1006                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1008  0009 72175238      	bres	21048,#3
1009  000d               L363:
1010                     ; 277 }
1013  000d 81            	ret
1070                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1070                     ; 286 {
1071                     .text:	section	.text,new
1072  0000               _UART1_IrDAConfig:
1076                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1078                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1080  0000 4d            	tnz	a
1081  0001 2706          	jreq	L314
1082                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1084  0003 72145238      	bset	21048,#2
1086  0007 2004          	jra	L514
1087  0009               L314:
1088                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1090  0009 72155238      	bres	21048,#2
1091  000d               L514:
1092                     ; 297 }
1095  000d 81            	ret
1130                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1130                     ; 306 {
1131                     .text:	section	.text,new
1132  0000               _UART1_IrDACmd:
1136                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1138                     ; 310   if (NewState != DISABLE)
1140  0000 4d            	tnz	a
1141  0001 2706          	jreq	L534
1142                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1144  0003 72125238      	bset	21048,#1
1146  0007 2004          	jra	L734
1147  0009               L534:
1148                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1150  0009 72135238      	bres	21048,#1
1151  000d               L734:
1152                     ; 320 }
1155  000d 81            	ret
1214                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1214                     ; 330 {
1215                     .text:	section	.text,new
1216  0000               _UART1_LINBreakDetectionConfig:
1220                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1222                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1224  0000 4d            	tnz	a
1225  0001 2706          	jreq	L764
1226                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1228  0003 721a5237      	bset	21047,#5
1230  0007 2004          	jra	L174
1231  0009               L764:
1232                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1234  0009 721b5237      	bres	21047,#5
1235  000d               L174:
1236                     ; 341 }
1239  000d 81            	ret
1274                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1274                     ; 350 {
1275                     .text:	section	.text,new
1276  0000               _UART1_LINCmd:
1280                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1282                     ; 353   if (NewState != DISABLE)
1284  0000 4d            	tnz	a
1285  0001 2706          	jreq	L115
1286                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1288  0003 721c5236      	bset	21046,#6
1290  0007 2004          	jra	L315
1291  0009               L115:
1292                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1294  0009 721d5236      	bres	21046,#6
1295  000d               L315:
1296                     ; 363 }
1299  000d 81            	ret
1334                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1334                     ; 372 {
1335                     .text:	section	.text,new
1336  0000               _UART1_SmartCardCmd:
1340                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1342                     ; 375   if (NewState != DISABLE)
1344  0000 4d            	tnz	a
1345  0001 2706          	jreq	L335
1346                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1348  0003 721a5238      	bset	21048,#5
1350  0007 2004          	jra	L535
1351  0009               L335:
1352                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1354  0009 721b5238      	bres	21048,#5
1355  000d               L535:
1356                     ; 385 }
1359  000d 81            	ret
1395                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1395                     ; 395 {
1396                     .text:	section	.text,new
1397  0000               _UART1_SmartCardNACKCmd:
1401                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1403                     ; 398   if (NewState != DISABLE)
1405  0000 4d            	tnz	a
1406  0001 2706          	jreq	L555
1407                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1409  0003 72185238      	bset	21048,#4
1411  0007 2004          	jra	L755
1412  0009               L555:
1413                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1415  0009 72195238      	bres	21048,#4
1416  000d               L755:
1417                     ; 408 }
1420  000d 81            	ret
1477                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1477                     ; 417 {
1478                     .text:	section	.text,new
1479  0000               _UART1_WakeUpConfig:
1483                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1485                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1487  0000 72175234      	bres	21044,#3
1488                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1490  0004 ca5234        	or	a,21044
1491  0007 c75234        	ld	21044,a
1492                     ; 422 }
1495  000a 81            	ret
1531                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1531                     ; 431 {
1532                     .text:	section	.text,new
1533  0000               _UART1_ReceiverWakeUpCmd:
1537                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1539                     ; 434   if (NewState != DISABLE)
1541  0000 4d            	tnz	a
1542  0001 2706          	jreq	L526
1543                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1545  0003 72125235      	bset	21045,#1
1547  0007 2004          	jra	L726
1548  0009               L526:
1549                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1551  0009 72135235      	bres	21045,#1
1552  000d               L726:
1553                     ; 444 }
1556  000d 81            	ret
1579                     ; 451 uint8_t UART1_ReceiveData8(void)
1579                     ; 452 {
1580                     .text:	section	.text,new
1581  0000               _UART1_ReceiveData8:
1585                     ; 453   return ((uint8_t)UART1->DR);
1587  0000 c65231        	ld	a,21041
1590  0003 81            	ret
1624                     ; 461 uint16_t UART1_ReceiveData9(void)
1624                     ; 462 {
1625                     .text:	section	.text,new
1626  0000               _UART1_ReceiveData9:
1628  0000 89            	pushw	x
1629       00000002      OFST:	set	2
1632                     ; 463   uint16_t temp = 0;
1634                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1636  0001 c65234        	ld	a,21044
1637  0004 5f            	clrw	x
1638  0005 a480          	and	a,#128
1639  0007 5f            	clrw	x
1640  0008 02            	rlwa	x,a
1641  0009 58            	sllw	x
1642  000a 1f01          	ldw	(OFST-1,sp),x
1644                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1646  000c c65231        	ld	a,21041
1647  000f 5f            	clrw	x
1648  0010 97            	ld	xl,a
1649  0011 01            	rrwa	x,a
1650  0012 1a02          	or	a,(OFST+0,sp)
1651  0014 01            	rrwa	x,a
1652  0015 1a01          	or	a,(OFST-1,sp)
1653  0017 01            	rrwa	x,a
1654  0018 01            	rrwa	x,a
1655  0019 a4ff          	and	a,#255
1656  001b 01            	rrwa	x,a
1657  001c a401          	and	a,#1
1658  001e 01            	rrwa	x,a
1661  001f 5b02          	addw	sp,#2
1662  0021 81            	ret
1696                     ; 474 void UART1_SendData8(uint8_t Data)
1696                     ; 475 {
1697                     .text:	section	.text,new
1698  0000               _UART1_SendData8:
1702                     ; 477   UART1->DR = Data;
1704  0000 c75231        	ld	21041,a
1705                     ; 478 }
1708  0003 81            	ret
1742                     ; 486 void UART1_SendData9(uint16_t Data)
1742                     ; 487 {
1743                     .text:	section	.text,new
1744  0000               _UART1_SendData9:
1746  0000 89            	pushw	x
1747       00000000      OFST:	set	0
1750                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1752  0001 721d5234      	bres	21044,#6
1753                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
1755  0005 54            	srlw	x
1756  0006 54            	srlw	x
1757  0007 9f            	ld	a,xl
1758  0008 a440          	and	a,#64
1759  000a ca5234        	or	a,21044
1760  000d c75234        	ld	21044,a
1761                     ; 493   UART1->DR   = (uint8_t)(Data);
1763  0010 7b02          	ld	a,(OFST+2,sp)
1764  0012 c75231        	ld	21041,a
1765                     ; 494 }
1768  0015 85            	popw	x
1769  0016 81            	ret
1792                     ; 501 void UART1_SendBreak(void)
1792                     ; 502 {
1793                     .text:	section	.text,new
1794  0000               _UART1_SendBreak:
1798                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
1800  0000 72105235      	bset	21045,#0
1801                     ; 504 }
1804  0004 81            	ret
1838                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
1838                     ; 512 {
1839                     .text:	section	.text,new
1840  0000               _UART1_SetAddress:
1842  0000 88            	push	a
1843       00000000      OFST:	set	0
1846                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
1848                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
1850  0001 c65237        	ld	a,21047
1851  0004 a4f0          	and	a,#240
1852  0006 c75237        	ld	21047,a
1853                     ; 519   UART1->CR4 |= UART1_Address;
1855  0009 c65237        	ld	a,21047
1856  000c 1a01          	or	a,(OFST+1,sp)
1857  000e c75237        	ld	21047,a
1858                     ; 520 }
1861  0011 84            	pop	a
1862  0012 81            	ret
1896                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
1896                     ; 529 {
1897                     .text:	section	.text,new
1898  0000               _UART1_SetGuardTime:
1902                     ; 531   UART1->GTR = UART1_GuardTime;
1904  0000 c75239        	ld	21049,a
1905                     ; 532 }
1908  0003 81            	ret
1942                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
1942                     ; 557 {
1943                     .text:	section	.text,new
1944  0000               _UART1_SetPrescaler:
1948                     ; 559   UART1->PSCR = UART1_Prescaler;
1950  0000 c7523a        	ld	21050,a
1951                     ; 560 }
1954  0003 81            	ret
2097                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2097                     ; 569 {
2098                     .text:	section	.text,new
2099  0000               _UART1_GetFlagStatus:
2101  0000 89            	pushw	x
2102  0001 88            	push	a
2103       00000001      OFST:	set	1
2106                     ; 570   FlagStatus status = RESET;
2108                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2110                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2112  0002 a30210        	cpw	x,#528
2113  0005 2610          	jrne	L7501
2114                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2116  0007 9f            	ld	a,xl
2117  0008 c45237        	and	a,21047
2118  000b 2706          	jreq	L1601
2119                     ; 582       status = SET;
2121  000d a601          	ld	a,#1
2122  000f 6b01          	ld	(OFST+0,sp),a
2125  0011 202b          	jra	L5601
2126  0013               L1601:
2127                     ; 587       status = RESET;
2129  0013 0f01          	clr	(OFST+0,sp)
2131  0015 2027          	jra	L5601
2132  0017               L7501:
2133                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2135  0017 1e02          	ldw	x,(OFST+1,sp)
2136  0019 a30101        	cpw	x,#257
2137  001c 2611          	jrne	L7601
2138                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2140  001e c65235        	ld	a,21045
2141  0021 1503          	bcp	a,(OFST+2,sp)
2142  0023 2706          	jreq	L1701
2143                     ; 595       status = SET;
2145  0025 a601          	ld	a,#1
2146  0027 6b01          	ld	(OFST+0,sp),a
2149  0029 2013          	jra	L5601
2150  002b               L1701:
2151                     ; 600       status = RESET;
2153  002b 0f01          	clr	(OFST+0,sp)
2155  002d 200f          	jra	L5601
2156  002f               L7601:
2157                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2159  002f c65230        	ld	a,21040
2160  0032 1503          	bcp	a,(OFST+2,sp)
2161  0034 2706          	jreq	L7701
2162                     ; 608       status = SET;
2164  0036 a601          	ld	a,#1
2165  0038 6b01          	ld	(OFST+0,sp),a
2168  003a 2002          	jra	L5601
2169  003c               L7701:
2170                     ; 613       status = RESET;
2172  003c 0f01          	clr	(OFST+0,sp)
2174  003e               L5601:
2175                     ; 617   return status;
2177  003e 7b01          	ld	a,(OFST+0,sp)
2180  0040 5b03          	addw	sp,#3
2181  0042 81            	ret
2216                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2216                     ; 647 {
2217                     .text:	section	.text,new
2218  0000               _UART1_ClearFlag:
2222                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2224                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2226  0000 a30020        	cpw	x,#32
2227  0003 2606          	jrne	L1211
2228                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2230  0005 35df5230      	mov	21040,#223
2232  0009 2004          	jra	L3211
2233  000b               L1211:
2234                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2236  000b 72195237      	bres	21047,#4
2237  000f               L3211:
2238                     ; 660 }
2241  000f 81            	ret
2323                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2323                     ; 676 {
2324                     .text:	section	.text,new
2325  0000               _UART1_GetITStatus:
2327  0000 89            	pushw	x
2328  0001 89            	pushw	x
2329       00000002      OFST:	set	2
2332                     ; 677   ITStatus pendingbitstatus = RESET;
2334                     ; 678   uint8_t itpos = 0;
2336                     ; 679   uint8_t itmask1 = 0;
2338                     ; 680   uint8_t itmask2 = 0;
2340                     ; 681   uint8_t enablestatus = 0;
2342                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2344                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2346  0002 9f            	ld	a,xl
2347  0003 a40f          	and	a,#15
2348  0005 5f            	clrw	x
2349  0006 97            	ld	xl,a
2350  0007 a601          	ld	a,#1
2351  0009 5d            	tnzw	x
2352  000a 2704          	jreq	L27
2353  000c               L47:
2354  000c 48            	sll	a
2355  000d 5a            	decw	x
2356  000e 26fc          	jrne	L47
2357  0010               L27:
2358  0010 6b01          	ld	(OFST-1,sp),a
2360                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2362  0012 7b04          	ld	a,(OFST+2,sp)
2363  0014 4e            	swap	a
2364  0015 a40f          	and	a,#15
2365  0017 6b02          	ld	(OFST+0,sp),a
2367                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2369  0019 7b02          	ld	a,(OFST+0,sp)
2370  001b 5f            	clrw	x
2371  001c 97            	ld	xl,a
2372  001d a601          	ld	a,#1
2373  001f 5d            	tnzw	x
2374  0020 2704          	jreq	L67
2375  0022               L001:
2376  0022 48            	sll	a
2377  0023 5a            	decw	x
2378  0024 26fc          	jrne	L001
2379  0026               L67:
2380  0026 6b02          	ld	(OFST+0,sp),a
2382                     ; 695   if (UART1_IT == UART1_IT_PE)
2384  0028 1e03          	ldw	x,(OFST+1,sp)
2385  002a a30100        	cpw	x,#256
2386  002d 261c          	jrne	L7611
2387                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2389  002f c65234        	ld	a,21044
2390  0032 1402          	and	a,(OFST+0,sp)
2391  0034 6b02          	ld	(OFST+0,sp),a
2393                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2395  0036 c65230        	ld	a,21040
2396  0039 1501          	bcp	a,(OFST-1,sp)
2397  003b 270a          	jreq	L1711
2399  003d 0d02          	tnz	(OFST+0,sp)
2400  003f 2706          	jreq	L1711
2401                     ; 704       pendingbitstatus = SET;
2403  0041 a601          	ld	a,#1
2404  0043 6b02          	ld	(OFST+0,sp),a
2407  0045 2041          	jra	L5711
2408  0047               L1711:
2409                     ; 709       pendingbitstatus = RESET;
2411  0047 0f02          	clr	(OFST+0,sp)
2413  0049 203d          	jra	L5711
2414  004b               L7611:
2415                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2417  004b 1e03          	ldw	x,(OFST+1,sp)
2418  004d a30346        	cpw	x,#838
2419  0050 261c          	jrne	L7711
2420                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2422  0052 c65237        	ld	a,21047
2423  0055 1402          	and	a,(OFST+0,sp)
2424  0057 6b02          	ld	(OFST+0,sp),a
2426                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2428  0059 c65237        	ld	a,21047
2429  005c 1501          	bcp	a,(OFST-1,sp)
2430  005e 270a          	jreq	L1021
2432  0060 0d02          	tnz	(OFST+0,sp)
2433  0062 2706          	jreq	L1021
2434                     ; 721       pendingbitstatus = SET;
2436  0064 a601          	ld	a,#1
2437  0066 6b02          	ld	(OFST+0,sp),a
2440  0068 201e          	jra	L5711
2441  006a               L1021:
2442                     ; 726       pendingbitstatus = RESET;
2444  006a 0f02          	clr	(OFST+0,sp)
2446  006c 201a          	jra	L5711
2447  006e               L7711:
2448                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2450  006e c65235        	ld	a,21045
2451  0071 1402          	and	a,(OFST+0,sp)
2452  0073 6b02          	ld	(OFST+0,sp),a
2454                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2456  0075 c65230        	ld	a,21040
2457  0078 1501          	bcp	a,(OFST-1,sp)
2458  007a 270a          	jreq	L7021
2460  007c 0d02          	tnz	(OFST+0,sp)
2461  007e 2706          	jreq	L7021
2462                     ; 737       pendingbitstatus = SET;
2464  0080 a601          	ld	a,#1
2465  0082 6b02          	ld	(OFST+0,sp),a
2468  0084 2002          	jra	L5711
2469  0086               L7021:
2470                     ; 742       pendingbitstatus = RESET;
2472  0086 0f02          	clr	(OFST+0,sp)
2474  0088               L5711:
2475                     ; 747   return  pendingbitstatus;
2477  0088 7b02          	ld	a,(OFST+0,sp)
2480  008a 5b04          	addw	sp,#4
2481  008c 81            	ret
2517                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2517                     ; 776 {
2518                     .text:	section	.text,new
2519  0000               _UART1_ClearITPendingBit:
2523                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2525                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2527  0000 a30255        	cpw	x,#597
2528  0003 2606          	jrne	L1321
2529                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2531  0005 35df5230      	mov	21040,#223
2533  0009 2004          	jra	L3321
2534  000b               L1321:
2535                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2537  000b 72195237      	bres	21047,#4
2538  000f               L3321:
2539                     ; 789 }
2542  000f 81            	ret
2555                     	xdef	_UART1_ClearITPendingBit
2556                     	xdef	_UART1_GetITStatus
2557                     	xdef	_UART1_ClearFlag
2558                     	xdef	_UART1_GetFlagStatus
2559                     	xdef	_UART1_SetPrescaler
2560                     	xdef	_UART1_SetGuardTime
2561                     	xdef	_UART1_SetAddress
2562                     	xdef	_UART1_SendBreak
2563                     	xdef	_UART1_SendData9
2564                     	xdef	_UART1_SendData8
2565                     	xdef	_UART1_ReceiveData9
2566                     	xdef	_UART1_ReceiveData8
2567                     	xdef	_UART1_ReceiverWakeUpCmd
2568                     	xdef	_UART1_WakeUpConfig
2569                     	xdef	_UART1_SmartCardNACKCmd
2570                     	xdef	_UART1_SmartCardCmd
2571                     	xdef	_UART1_LINCmd
2572                     	xdef	_UART1_LINBreakDetectionConfig
2573                     	xdef	_UART1_IrDACmd
2574                     	xdef	_UART1_IrDAConfig
2575                     	xdef	_UART1_HalfDuplexCmd
2576                     	xdef	_UART1_ITConfig
2577                     	xdef	_UART1_Cmd
2578                     	xdef	_UART1_Init
2579                     	xdef	_UART1_DeInit
2580                     	xref	_CLK_GetClockFreq
2581                     	xref.b	c_lreg
2582                     	xref.b	c_x
2601                     	xref	c_lursh
2602                     	xref	c_lsub
2603                     	xref	c_smul
2604                     	xref	c_ludv
2605                     	xref	c_rtol
2606                     	xref	c_llsh
2607                     	xref	c_ltor
2608                     	end
