   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  17                     .const:	section	.text
  18  0000               _HSIDivFactor:
  19  0000 01            	dc.b	1
  20  0001 02            	dc.b	2
  21  0002 04            	dc.b	4
  22  0003 08            	dc.b	8
  23  0004               _CLKPrescTable:
  24  0004 01            	dc.b	1
  25  0005 02            	dc.b	2
  26  0006 04            	dc.b	4
  27  0007 08            	dc.b	8
  28  0008 0a            	dc.b	10
  29  0009 10            	dc.b	16
  30  000a 14            	dc.b	20
  31  000b 28            	dc.b	40
  60                     ; 72 void CLK_DeInit(void)
  60                     ; 73 {
  62                     .text:	section	.text,new
  63  0000               _CLK_DeInit:
  67                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  69  0000 350150c0      	mov	20672,#1
  70                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  72  0004 725f50c1      	clr	20673
  73                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  75  0008 35e150c4      	mov	20676,#225
  76                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  78  000c 725f50c5      	clr	20677
  79                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  81  0010 351850c6      	mov	20678,#24
  82                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  84  0014 35ff50c7      	mov	20679,#255
  85                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  87  0018 35ff50ca      	mov	20682,#255
  88                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  90  001c 725f50c8      	clr	20680
  91                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  93  0020 725f50c9      	clr	20681
  95  0024               L52:
  96                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  98  0024 c650c9        	ld	a,20681
  99  0027 a501          	bcp	a,#1
 100  0029 26f9          	jrne	L52
 101                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 103  002b 725f50c9      	clr	20681
 104                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 106  002f 725f50cc      	clr	20684
 107                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 109  0033 725f50cd      	clr	20685
 110                     ; 88 }
 113  0037 81            	ret
 169                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 169                     ; 100 {
 170                     .text:	section	.text,new
 171  0000               _CLK_FastHaltWakeUpCmd:
 175                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 177                     ; 104   if (NewState != DISABLE)
 179  0000 4d            	tnz	a
 180  0001 2706          	jreq	L75
 181                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 183  0003 721450c0      	bset	20672,#2
 185  0007 2004          	jra	L16
 186  0009               L75:
 187                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 189  0009 721550c0      	bres	20672,#2
 190  000d               L16:
 191                     ; 114 }
 194  000d 81            	ret
 229                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 229                     ; 122 {
 230                     .text:	section	.text,new
 231  0000               _CLK_HSECmd:
 235                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 237                     ; 126   if (NewState != DISABLE)
 239  0000 4d            	tnz	a
 240  0001 2706          	jreq	L101
 241                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 243  0003 721050c1      	bset	20673,#0
 245  0007 2004          	jra	L301
 246  0009               L101:
 247                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 249  0009 721150c1      	bres	20673,#0
 250  000d               L301:
 251                     ; 136 }
 254  000d 81            	ret
 289                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 289                     ; 144 {
 290                     .text:	section	.text,new
 291  0000               _CLK_HSICmd:
 295                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 297                     ; 148   if (NewState != DISABLE)
 299  0000 4d            	tnz	a
 300  0001 2706          	jreq	L321
 301                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 303  0003 721050c0      	bset	20672,#0
 305  0007 2004          	jra	L521
 306  0009               L321:
 307                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 309  0009 721150c0      	bres	20672,#0
 310  000d               L521:
 311                     ; 158 }
 314  000d 81            	ret
 349                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 349                     ; 167 {
 350                     .text:	section	.text,new
 351  0000               _CLK_LSICmd:
 355                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 357                     ; 171   if (NewState != DISABLE)
 359  0000 4d            	tnz	a
 360  0001 2706          	jreq	L541
 361                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 363  0003 721650c0      	bset	20672,#3
 365  0007 2004          	jra	L741
 366  0009               L541:
 367                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 369  0009 721750c0      	bres	20672,#3
 370  000d               L741:
 371                     ; 181 }
 374  000d 81            	ret
 409                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 409                     ; 190 {
 410                     .text:	section	.text,new
 411  0000               _CLK_CCOCmd:
 415                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 417                     ; 194   if (NewState != DISABLE)
 419  0000 4d            	tnz	a
 420  0001 2706          	jreq	L761
 421                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 423  0003 721050c9      	bset	20681,#0
 425  0007 2004          	jra	L171
 426  0009               L761:
 427                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 429  0009 721150c9      	bres	20681,#0
 430  000d               L171:
 431                     ; 204 }
 434  000d 81            	ret
 469                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 469                     ; 214 {
 470                     .text:	section	.text,new
 471  0000               _CLK_ClockSwitchCmd:
 475                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 477                     ; 218   if (NewState != DISABLE )
 479  0000 4d            	tnz	a
 480  0001 2706          	jreq	L112
 481                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 483  0003 721250c5      	bset	20677,#1
 485  0007 2004          	jra	L312
 486  0009               L112:
 487                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 489  0009 721350c5      	bres	20677,#1
 490  000d               L312:
 491                     ; 228 }
 494  000d 81            	ret
 530                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 530                     ; 239 {
 531                     .text:	section	.text,new
 532  0000               _CLK_SlowActiveHaltWakeUpCmd:
 536                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 538                     ; 243   if (NewState != DISABLE)
 540  0000 4d            	tnz	a
 541  0001 2706          	jreq	L332
 542                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 544  0003 721a50c0      	bset	20672,#5
 546  0007 2004          	jra	L532
 547  0009               L332:
 548                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 550  0009 721b50c0      	bres	20672,#5
 551  000d               L532:
 552                     ; 253 }
 555  000d 81            	ret
 714                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 714                     ; 264 {
 715                     .text:	section	.text,new
 716  0000               _CLK_PeripheralClockConfig:
 718  0000 89            	pushw	x
 719       00000000      OFST:	set	0
 722                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 724                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 726                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 728  0001 9e            	ld	a,xh
 729  0002 a510          	bcp	a,#16
 730  0004 2633          	jrne	L123
 731                     ; 271     if (NewState != DISABLE)
 733  0006 0d02          	tnz	(OFST+2,sp)
 734  0008 2717          	jreq	L323
 735                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 737  000a 7b01          	ld	a,(OFST+1,sp)
 738  000c a40f          	and	a,#15
 739  000e 5f            	clrw	x
 740  000f 97            	ld	xl,a
 741  0010 a601          	ld	a,#1
 742  0012 5d            	tnzw	x
 743  0013 2704          	jreq	L62
 744  0015               L03:
 745  0015 48            	sll	a
 746  0016 5a            	decw	x
 747  0017 26fc          	jrne	L03
 748  0019               L62:
 749  0019 ca50c7        	or	a,20679
 750  001c c750c7        	ld	20679,a
 752  001f 2049          	jra	L723
 753  0021               L323:
 754                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 756  0021 7b01          	ld	a,(OFST+1,sp)
 757  0023 a40f          	and	a,#15
 758  0025 5f            	clrw	x
 759  0026 97            	ld	xl,a
 760  0027 a601          	ld	a,#1
 761  0029 5d            	tnzw	x
 762  002a 2704          	jreq	L23
 763  002c               L43:
 764  002c 48            	sll	a
 765  002d 5a            	decw	x
 766  002e 26fc          	jrne	L43
 767  0030               L23:
 768  0030 43            	cpl	a
 769  0031 c450c7        	and	a,20679
 770  0034 c750c7        	ld	20679,a
 771  0037 2031          	jra	L723
 772  0039               L123:
 773                     ; 284     if (NewState != DISABLE)
 775  0039 0d02          	tnz	(OFST+2,sp)
 776  003b 2717          	jreq	L133
 777                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 779  003d 7b01          	ld	a,(OFST+1,sp)
 780  003f a40f          	and	a,#15
 781  0041 5f            	clrw	x
 782  0042 97            	ld	xl,a
 783  0043 a601          	ld	a,#1
 784  0045 5d            	tnzw	x
 785  0046 2704          	jreq	L63
 786  0048               L04:
 787  0048 48            	sll	a
 788  0049 5a            	decw	x
 789  004a 26fc          	jrne	L04
 790  004c               L63:
 791  004c ca50ca        	or	a,20682
 792  004f c750ca        	ld	20682,a
 794  0052 2016          	jra	L723
 795  0054               L133:
 796                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 798  0054 7b01          	ld	a,(OFST+1,sp)
 799  0056 a40f          	and	a,#15
 800  0058 5f            	clrw	x
 801  0059 97            	ld	xl,a
 802  005a a601          	ld	a,#1
 803  005c 5d            	tnzw	x
 804  005d 2704          	jreq	L24
 805  005f               L44:
 806  005f 48            	sll	a
 807  0060 5a            	decw	x
 808  0061 26fc          	jrne	L44
 809  0063               L24:
 810  0063 43            	cpl	a
 811  0064 c450ca        	and	a,20682
 812  0067 c750ca        	ld	20682,a
 813  006a               L723:
 814                     ; 295 }
 817  006a 85            	popw	x
 818  006b 81            	ret
1006                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1006                     ; 310 {
1007                     .text:	section	.text,new
1008  0000               _CLK_ClockSwitchConfig:
1010  0000 89            	pushw	x
1011  0001 5204          	subw	sp,#4
1012       00000004      OFST:	set	4
1015                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1017  0003 aeffff        	ldw	x,#65535
1018  0006 1f03          	ldw	(OFST-1,sp),x
1020                     ; 313   ErrorStatus Swif = ERROR;
1022                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1024                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1026                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1028                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1030                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1032  0008 c650c3        	ld	a,20675
1033  000b 6b01          	ld	(OFST-3,sp),a
1035                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1037  000d 7b05          	ld	a,(OFST+1,sp)
1038  000f a101          	cp	a,#1
1039  0011 264b          	jrne	L544
1040                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1042  0013 721250c5      	bset	20677,#1
1043                     ; 331     if (ITState != DISABLE)
1045  0017 0d09          	tnz	(OFST+5,sp)
1046  0019 2706          	jreq	L744
1047                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1049  001b 721450c5      	bset	20677,#2
1051  001f 2004          	jra	L154
1052  0021               L744:
1053                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1055  0021 721550c5      	bres	20677,#2
1056  0025               L154:
1057                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1059  0025 7b06          	ld	a,(OFST+2,sp)
1060  0027 c750c4        	ld	20676,a
1062  002a 2007          	jra	L754
1063  002c               L354:
1064                     ; 346       DownCounter--;
1066  002c 1e03          	ldw	x,(OFST-1,sp)
1067  002e 1d0001        	subw	x,#1
1068  0031 1f03          	ldw	(OFST-1,sp),x
1070  0033               L754:
1071                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1073  0033 c650c5        	ld	a,20677
1074  0036 a501          	bcp	a,#1
1075  0038 2704          	jreq	L364
1077  003a 1e03          	ldw	x,(OFST-1,sp)
1078  003c 26ee          	jrne	L354
1079  003e               L364:
1080                     ; 349     if(DownCounter != 0)
1082  003e 1e03          	ldw	x,(OFST-1,sp)
1083  0040 2706          	jreq	L564
1084                     ; 351       Swif = SUCCESS;
1086  0042 a601          	ld	a,#1
1087  0044 6b02          	ld	(OFST-2,sp),a
1090  0046 2002          	jra	L174
1091  0048               L564:
1092                     ; 355       Swif = ERROR;
1094  0048 0f02          	clr	(OFST-2,sp)
1096  004a               L174:
1097                     ; 390   if(Swif != ERROR)
1099  004a 0d02          	tnz	(OFST-2,sp)
1100  004c 2767          	jreq	L515
1101                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1103  004e 0d0a          	tnz	(OFST+6,sp)
1104  0050 2645          	jrne	L715
1106  0052 7b01          	ld	a,(OFST-3,sp)
1107  0054 a1e1          	cp	a,#225
1108  0056 263f          	jrne	L715
1109                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1111  0058 721150c0      	bres	20672,#0
1113  005c 2057          	jra	L515
1114  005e               L544:
1115                     ; 361     if (ITState != DISABLE)
1117  005e 0d09          	tnz	(OFST+5,sp)
1118  0060 2706          	jreq	L374
1119                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1121  0062 721450c5      	bset	20677,#2
1123  0066 2004          	jra	L574
1124  0068               L374:
1125                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1127  0068 721550c5      	bres	20677,#2
1128  006c               L574:
1129                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1131  006c 7b06          	ld	a,(OFST+2,sp)
1132  006e c750c4        	ld	20676,a
1134  0071 2007          	jra	L305
1135  0073               L774:
1136                     ; 376       DownCounter--;
1138  0073 1e03          	ldw	x,(OFST-1,sp)
1139  0075 1d0001        	subw	x,#1
1140  0078 1f03          	ldw	(OFST-1,sp),x
1142  007a               L305:
1143                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1145  007a c650c5        	ld	a,20677
1146  007d a508          	bcp	a,#8
1147  007f 2704          	jreq	L705
1149  0081 1e03          	ldw	x,(OFST-1,sp)
1150  0083 26ee          	jrne	L774
1151  0085               L705:
1152                     ; 379     if(DownCounter != 0)
1154  0085 1e03          	ldw	x,(OFST-1,sp)
1155  0087 270a          	jreq	L115
1156                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1158  0089 721250c5      	bset	20677,#1
1159                     ; 383       Swif = SUCCESS;
1161  008d a601          	ld	a,#1
1162  008f 6b02          	ld	(OFST-2,sp),a
1165  0091 20b7          	jra	L174
1166  0093               L115:
1167                     ; 387       Swif = ERROR;
1169  0093 0f02          	clr	(OFST-2,sp)
1171  0095 20b3          	jra	L174
1172  0097               L715:
1173                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1175  0097 0d0a          	tnz	(OFST+6,sp)
1176  0099 260c          	jrne	L325
1178  009b 7b01          	ld	a,(OFST-3,sp)
1179  009d a1d2          	cp	a,#210
1180  009f 2606          	jrne	L325
1181                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1183  00a1 721750c0      	bres	20672,#3
1185  00a5 200e          	jra	L515
1186  00a7               L325:
1187                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1189  00a7 0d0a          	tnz	(OFST+6,sp)
1190  00a9 260a          	jrne	L515
1192  00ab 7b01          	ld	a,(OFST-3,sp)
1193  00ad a1b4          	cp	a,#180
1194  00af 2604          	jrne	L515
1195                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1197  00b1 721150c1      	bres	20673,#0
1198  00b5               L515:
1199                     ; 406   return(Swif);
1201  00b5 7b02          	ld	a,(OFST-2,sp)
1204  00b7 5b06          	addw	sp,#6
1205  00b9 81            	ret
1343                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1343                     ; 416 {
1344                     .text:	section	.text,new
1345  0000               _CLK_HSIPrescalerConfig:
1347  0000 88            	push	a
1348       00000000      OFST:	set	0
1351                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1353                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1355  0001 c650c6        	ld	a,20678
1356  0004 a4e7          	and	a,#231
1357  0006 c750c6        	ld	20678,a
1358                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1360  0009 c650c6        	ld	a,20678
1361  000c 1a01          	or	a,(OFST+1,sp)
1362  000e c750c6        	ld	20678,a
1363                     ; 425 }
1366  0011 84            	pop	a
1367  0012 81            	ret
1502                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1502                     ; 437 {
1503                     .text:	section	.text,new
1504  0000               _CLK_CCOConfig:
1506  0000 88            	push	a
1507       00000000      OFST:	set	0
1510                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1512                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1514  0001 c650c9        	ld	a,20681
1515  0004 a4e1          	and	a,#225
1516  0006 c750c9        	ld	20681,a
1517                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1519  0009 c650c9        	ld	a,20681
1520  000c 1a01          	or	a,(OFST+1,sp)
1521  000e c750c9        	ld	20681,a
1522                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1524  0011 721050c9      	bset	20681,#0
1525                     ; 449 }
1528  0015 84            	pop	a
1529  0016 81            	ret
1594                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1594                     ; 460 {
1595                     .text:	section	.text,new
1596  0000               _CLK_ITConfig:
1598  0000 89            	pushw	x
1599       00000000      OFST:	set	0
1602                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1604                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1606                     ; 465   if (NewState != DISABLE)
1608  0001 9f            	ld	a,xl
1609  0002 4d            	tnz	a
1610  0003 2719          	jreq	L527
1611                     ; 467     switch (CLK_IT)
1613  0005 9e            	ld	a,xh
1615                     ; 475     default:
1615                     ; 476       break;
1616  0006 a00c          	sub	a,#12
1617  0008 270a          	jreq	L166
1618  000a a010          	sub	a,#16
1619  000c 2624          	jrne	L337
1620                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1620                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1622  000e 721450c5      	bset	20677,#2
1623                     ; 471       break;
1625  0012 201e          	jra	L337
1626  0014               L166:
1627                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1627                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1629  0014 721450c8      	bset	20680,#2
1630                     ; 474       break;
1632  0018 2018          	jra	L337
1633  001a               L366:
1634                     ; 475     default:
1634                     ; 476       break;
1636  001a 2016          	jra	L337
1637  001c               L137:
1639  001c 2014          	jra	L337
1640  001e               L527:
1641                     ; 481     switch (CLK_IT)
1643  001e 7b01          	ld	a,(OFST+1,sp)
1645                     ; 489     default:
1645                     ; 490       break;
1646  0020 a00c          	sub	a,#12
1647  0022 270a          	jreq	L766
1648  0024 a010          	sub	a,#16
1649  0026 260a          	jrne	L337
1650                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1650                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1652  0028 721550c5      	bres	20677,#2
1653                     ; 485       break;
1655  002c 2004          	jra	L337
1656  002e               L766:
1657                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1657                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1659  002e 721550c8      	bres	20680,#2
1660                     ; 488       break;
1661  0032               L337:
1662                     ; 493 }
1665  0032 85            	popw	x
1666  0033 81            	ret
1667  0034               L176:
1668                     ; 489     default:
1668                     ; 490       break;
1670  0034 20fc          	jra	L337
1671  0036               L737:
1672  0036 20fa          	jra	L337
1707                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1707                     ; 501 {
1708                     .text:	section	.text,new
1709  0000               _CLK_SYSCLKConfig:
1711  0000 88            	push	a
1712       00000000      OFST:	set	0
1715                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1717                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1719  0001 a580          	bcp	a,#128
1720  0003 2614          	jrne	L757
1721                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1723  0005 c650c6        	ld	a,20678
1724  0008 a4e7          	and	a,#231
1725  000a c750c6        	ld	20678,a
1726                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1728  000d 7b01          	ld	a,(OFST+1,sp)
1729  000f a418          	and	a,#24
1730  0011 ca50c6        	or	a,20678
1731  0014 c750c6        	ld	20678,a
1733  0017 2012          	jra	L167
1734  0019               L757:
1735                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1737  0019 c650c6        	ld	a,20678
1738  001c a4f8          	and	a,#248
1739  001e c750c6        	ld	20678,a
1740                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1742  0021 7b01          	ld	a,(OFST+1,sp)
1743  0023 a407          	and	a,#7
1744  0025 ca50c6        	or	a,20678
1745  0028 c750c6        	ld	20678,a
1746  002b               L167:
1747                     ; 515 }
1750  002b 84            	pop	a
1751  002c 81            	ret
1807                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1807                     ; 524 {
1808                     .text:	section	.text,new
1809  0000               _CLK_SWIMConfig:
1813                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1815                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1817  0000 4d            	tnz	a
1818  0001 2706          	jreq	L1101
1819                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1821  0003 721050cd      	bset	20685,#0
1823  0007 2004          	jra	L3101
1824  0009               L1101:
1825                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1827  0009 721150cd      	bres	20685,#0
1828  000d               L3101:
1829                     ; 538 }
1832  000d 81            	ret
1856                     ; 547 void CLK_ClockSecuritySystemEnable(void)
1856                     ; 548 {
1857                     .text:	section	.text,new
1858  0000               _CLK_ClockSecuritySystemEnable:
1862                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
1864  0000 721050c8      	bset	20680,#0
1865                     ; 551 }
1868  0004 81            	ret
1893                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1893                     ; 560 {
1894                     .text:	section	.text,new
1895  0000               _CLK_GetSYSCLKSource:
1899                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
1901  0000 c650c3        	ld	a,20675
1904  0003 81            	ret
1967                     ; 569 uint32_t CLK_GetClockFreq(void)
1967                     ; 570 {
1968                     .text:	section	.text,new
1969  0000               _CLK_GetClockFreq:
1971  0000 5209          	subw	sp,#9
1972       00000009      OFST:	set	9
1975                     ; 571   uint32_t clockfrequency = 0;
1977                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1979                     ; 573   uint8_t tmp = 0, presc = 0;
1983                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1985  0002 c650c3        	ld	a,20675
1986  0005 6b09          	ld	(OFST+0,sp),a
1988                     ; 578   if (clocksource == CLK_SOURCE_HSI)
1990  0007 7b09          	ld	a,(OFST+0,sp)
1991  0009 a1e1          	cp	a,#225
1992  000b 2641          	jrne	L7601
1993                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1995  000d c650c6        	ld	a,20678
1996  0010 a418          	and	a,#24
1997  0012 6b09          	ld	(OFST+0,sp),a
1999                     ; 581     tmp = (uint8_t)(tmp >> 3);
2001  0014 0409          	srl	(OFST+0,sp)
2002  0016 0409          	srl	(OFST+0,sp)
2003  0018 0409          	srl	(OFST+0,sp)
2005                     ; 582     presc = HSIDivFactor[tmp];
2007  001a 7b09          	ld	a,(OFST+0,sp)
2008  001c 5f            	clrw	x
2009  001d 97            	ld	xl,a
2010  001e d60000        	ld	a,(_HSIDivFactor,x)
2011  0021 6b09          	ld	(OFST+0,sp),a
2013                     ; 583     clockfrequency = HSI_VALUE / presc;
2015  0023 7b09          	ld	a,(OFST+0,sp)
2016  0025 b703          	ld	c_lreg+3,a
2017  0027 3f02          	clr	c_lreg+2
2018  0029 3f01          	clr	c_lreg+1
2019  002b 3f00          	clr	c_lreg
2020  002d 96            	ldw	x,sp
2021  002e 1c0001        	addw	x,#OFST-8
2022  0031 cd0000        	call	c_rtol
2025  0034 ae2400        	ldw	x,#9216
2026  0037 bf02          	ldw	c_lreg+2,x
2027  0039 ae00f4        	ldw	x,#244
2028  003c bf00          	ldw	c_lreg,x
2029  003e 96            	ldw	x,sp
2030  003f 1c0001        	addw	x,#OFST-8
2031  0042 cd0000        	call	c_ludv
2033  0045 96            	ldw	x,sp
2034  0046 1c0005        	addw	x,#OFST-4
2035  0049 cd0000        	call	c_rtol
2039  004c 201c          	jra	L1701
2040  004e               L7601:
2041                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2043  004e 7b09          	ld	a,(OFST+0,sp)
2044  0050 a1d2          	cp	a,#210
2045  0052 260c          	jrne	L3701
2046                     ; 587     clockfrequency = LSI_VALUE;
2048  0054 aef400        	ldw	x,#62464
2049  0057 1f07          	ldw	(OFST-2,sp),x
2050  0059 ae0001        	ldw	x,#1
2051  005c 1f05          	ldw	(OFST-4,sp),x
2054  005e 200a          	jra	L1701
2055  0060               L3701:
2056                     ; 591     clockfrequency = HSE_VALUE;
2058  0060 ae2400        	ldw	x,#9216
2059  0063 1f07          	ldw	(OFST-2,sp),x
2060  0065 ae00f4        	ldw	x,#244
2061  0068 1f05          	ldw	(OFST-4,sp),x
2063  006a               L1701:
2064                     ; 594   return((uint32_t)clockfrequency);
2066  006a 96            	ldw	x,sp
2067  006b 1c0005        	addw	x,#OFST-4
2068  006e cd0000        	call	c_ltor
2072  0071 5b09          	addw	sp,#9
2073  0073 81            	ret
2172                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2172                     ; 605 {
2173                     .text:	section	.text,new
2174  0000               _CLK_AdjustHSICalibrationValue:
2176  0000 88            	push	a
2177       00000000      OFST:	set	0
2180                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2182                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2184  0001 c650cc        	ld	a,20684
2185  0004 a4f8          	and	a,#248
2186  0006 1a01          	or	a,(OFST+1,sp)
2187  0008 c750cc        	ld	20684,a
2188                     ; 611 }
2191  000b 84            	pop	a
2192  000c 81            	ret
2216                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2216                     ; 623 {
2217                     .text:	section	.text,new
2218  0000               _CLK_SYSCLKEmergencyClear:
2222                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2224  0000 721150c5      	bres	20677,#0
2225                     ; 625 }
2228  0004 81            	ret
2381                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2381                     ; 635 {
2382                     .text:	section	.text,new
2383  0000               _CLK_GetFlagStatus:
2385  0000 89            	pushw	x
2386  0001 5203          	subw	sp,#3
2387       00000003      OFST:	set	3
2390                     ; 636   uint16_t statusreg = 0;
2392                     ; 637   uint8_t tmpreg = 0;
2394                     ; 638   FlagStatus bitstatus = RESET;
2396                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2398                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2400  0003 01            	rrwa	x,a
2401  0004 9f            	ld	a,xl
2402  0005 a4ff          	and	a,#255
2403  0007 97            	ld	xl,a
2404  0008 4f            	clr	a
2405  0009 02            	rlwa	x,a
2406  000a 1f01          	ldw	(OFST-2,sp),x
2407  000c 01            	rrwa	x,a
2409                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2411  000d 1e01          	ldw	x,(OFST-2,sp)
2412  000f a30100        	cpw	x,#256
2413  0012 2607          	jrne	L1421
2414                     ; 649     tmpreg = CLK->ICKR;
2416  0014 c650c0        	ld	a,20672
2417  0017 6b03          	ld	(OFST+0,sp),a
2420  0019 202f          	jra	L3421
2421  001b               L1421:
2422                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2424  001b 1e01          	ldw	x,(OFST-2,sp)
2425  001d a30200        	cpw	x,#512
2426  0020 2607          	jrne	L5421
2427                     ; 653     tmpreg = CLK->ECKR;
2429  0022 c650c1        	ld	a,20673
2430  0025 6b03          	ld	(OFST+0,sp),a
2433  0027 2021          	jra	L3421
2434  0029               L5421:
2435                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2437  0029 1e01          	ldw	x,(OFST-2,sp)
2438  002b a30300        	cpw	x,#768
2439  002e 2607          	jrne	L1521
2440                     ; 657     tmpreg = CLK->SWCR;
2442  0030 c650c5        	ld	a,20677
2443  0033 6b03          	ld	(OFST+0,sp),a
2446  0035 2013          	jra	L3421
2447  0037               L1521:
2448                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2450  0037 1e01          	ldw	x,(OFST-2,sp)
2451  0039 a30400        	cpw	x,#1024
2452  003c 2607          	jrne	L5521
2453                     ; 661     tmpreg = CLK->CSSR;
2455  003e c650c8        	ld	a,20680
2456  0041 6b03          	ld	(OFST+0,sp),a
2459  0043 2005          	jra	L3421
2460  0045               L5521:
2461                     ; 665     tmpreg = CLK->CCOR;
2463  0045 c650c9        	ld	a,20681
2464  0048 6b03          	ld	(OFST+0,sp),a
2466  004a               L3421:
2467                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2469  004a 7b05          	ld	a,(OFST+2,sp)
2470  004c 1503          	bcp	a,(OFST+0,sp)
2471  004e 2706          	jreq	L1621
2472                     ; 670     bitstatus = SET;
2474  0050 a601          	ld	a,#1
2475  0052 6b03          	ld	(OFST+0,sp),a
2478  0054 2002          	jra	L3621
2479  0056               L1621:
2480                     ; 674     bitstatus = RESET;
2482  0056 0f03          	clr	(OFST+0,sp)
2484  0058               L3621:
2485                     ; 678   return((FlagStatus)bitstatus);
2487  0058 7b03          	ld	a,(OFST+0,sp)
2490  005a 5b05          	addw	sp,#5
2491  005c 81            	ret
2537                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2537                     ; 688 {
2538                     .text:	section	.text,new
2539  0000               _CLK_GetITStatus:
2541  0000 88            	push	a
2542  0001 88            	push	a
2543       00000001      OFST:	set	1
2546                     ; 689   ITStatus bitstatus = RESET;
2548                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2550                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2552  0002 a11c          	cp	a,#28
2553  0004 2611          	jrne	L7031
2554                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2556  0006 c450c5        	and	a,20677
2557  0009 a10c          	cp	a,#12
2558  000b 2606          	jrne	L1131
2559                     ; 699       bitstatus = SET;
2561  000d a601          	ld	a,#1
2562  000f 6b01          	ld	(OFST+0,sp),a
2565  0011 2015          	jra	L5131
2566  0013               L1131:
2567                     ; 703       bitstatus = RESET;
2569  0013 0f01          	clr	(OFST+0,sp)
2571  0015 2011          	jra	L5131
2572  0017               L7031:
2573                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2575  0017 c650c8        	ld	a,20680
2576  001a 1402          	and	a,(OFST+1,sp)
2577  001c a10c          	cp	a,#12
2578  001e 2606          	jrne	L7131
2579                     ; 711       bitstatus = SET;
2581  0020 a601          	ld	a,#1
2582  0022 6b01          	ld	(OFST+0,sp),a
2585  0024 2002          	jra	L5131
2586  0026               L7131:
2587                     ; 715       bitstatus = RESET;
2589  0026 0f01          	clr	(OFST+0,sp)
2591  0028               L5131:
2592                     ; 720   return bitstatus;
2594  0028 7b01          	ld	a,(OFST+0,sp)
2597  002a 85            	popw	x
2598  002b 81            	ret
2634                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2634                     ; 730 {
2635                     .text:	section	.text,new
2636  0000               _CLK_ClearITPendingBit:
2640                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2642                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2644  0000 a10c          	cp	a,#12
2645  0002 2606          	jrne	L1431
2646                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2648  0004 721750c8      	bres	20680,#3
2650  0008 2004          	jra	L3431
2651  000a               L1431:
2652                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2654  000a 721750c5      	bres	20677,#3
2655  000e               L3431:
2656                     ; 745 }
2659  000e 81            	ret
2694                     	xdef	_CLKPrescTable
2695                     	xdef	_HSIDivFactor
2696                     	xdef	_CLK_ClearITPendingBit
2697                     	xdef	_CLK_GetITStatus
2698                     	xdef	_CLK_GetFlagStatus
2699                     	xdef	_CLK_GetSYSCLKSource
2700                     	xdef	_CLK_GetClockFreq
2701                     	xdef	_CLK_AdjustHSICalibrationValue
2702                     	xdef	_CLK_SYSCLKEmergencyClear
2703                     	xdef	_CLK_ClockSecuritySystemEnable
2704                     	xdef	_CLK_SWIMConfig
2705                     	xdef	_CLK_SYSCLKConfig
2706                     	xdef	_CLK_ITConfig
2707                     	xdef	_CLK_CCOConfig
2708                     	xdef	_CLK_HSIPrescalerConfig
2709                     	xdef	_CLK_ClockSwitchConfig
2710                     	xdef	_CLK_PeripheralClockConfig
2711                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2712                     	xdef	_CLK_FastHaltWakeUpCmd
2713                     	xdef	_CLK_ClockSwitchCmd
2714                     	xdef	_CLK_CCOCmd
2715                     	xdef	_CLK_LSICmd
2716                     	xdef	_CLK_HSICmd
2717                     	xdef	_CLK_HSECmd
2718                     	xdef	_CLK_DeInit
2719                     	xref.b	c_lreg
2720                     	xref.b	c_x
2739                     	xref	c_ltor
2740                     	xref	c_ludv
2741                     	xref	c_rtol
2742                     	end
