   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  45                     ; 52 void TIM2_DeInit(void)
  45                     ; 53 {
  47                     .text:	section	.text,new
  48  0000               _TIM2_DeInit:
  52                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  54  0000 725f5300      	clr	21248
  55                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  57  0004 725f5303      	clr	21251
  58                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  60  0008 725f5305      	clr	21253
  61                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  63  000c 725f530a      	clr	21258
  64                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  66  0010 725f530b      	clr	21259
  67                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  69  0014 725f530a      	clr	21258
  70                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  72  0018 725f530b      	clr	21259
  73                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  75  001c 725f5307      	clr	21255
  76                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  78  0020 725f5308      	clr	21256
  79                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  81  0024 725f5309      	clr	21257
  82                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  84  0028 725f530c      	clr	21260
  85                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  87  002c 725f530d      	clr	21261
  88                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  90  0030 725f530e      	clr	21262
  91                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  93  0034 35ff530f      	mov	21263,#255
  94                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  96  0038 35ff5310      	mov	21264,#255
  97                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  99  003c 725f5311      	clr	21265
 100                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 102  0040 725f5312      	clr	21266
 103                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 105  0044 725f5313      	clr	21267
 106                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 108  0048 725f5314      	clr	21268
 109                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 111  004c 725f5315      	clr	21269
 112                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 114  0050 725f5316      	clr	21270
 115                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 117  0054 725f5304      	clr	21252
 118                     ; 81 }
 121  0058 81            	ret
 289                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 289                     ; 90                         uint16_t TIM2_Period)
 289                     ; 91 {
 290                     .text:	section	.text,new
 291  0000               _TIM2_TimeBaseInit:
 293  0000 88            	push	a
 294       00000000      OFST:	set	0
 297                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 299  0001 c7530e        	ld	21262,a
 300                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 302  0004 7b04          	ld	a,(OFST+4,sp)
 303  0006 c7530f        	ld	21263,a
 304                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 306  0009 7b05          	ld	a,(OFST+5,sp)
 307  000b c75310        	ld	21264,a
 308                     ; 97 }
 311  000e 84            	pop	a
 312  000f 81            	ret
 469                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 469                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 469                     ; 110                   uint16_t TIM2_Pulse,
 469                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 469                     ; 112 {
 470                     .text:	section	.text,new
 471  0000               _TIM2_OC1Init:
 473  0000 89            	pushw	x
 474  0001 88            	push	a
 475       00000001      OFST:	set	1
 478                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 480                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 482                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 484                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 486  0002 c6530a        	ld	a,21258
 487  0005 a4fc          	and	a,#252
 488  0007 c7530a        	ld	21258,a
 489                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 489                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 491  000a 7b08          	ld	a,(OFST+7,sp)
 492  000c a402          	and	a,#2
 493  000e 6b01          	ld	(OFST+0,sp),a
 495  0010 9f            	ld	a,xl
 496  0011 a401          	and	a,#1
 497  0013 1a01          	or	a,(OFST+0,sp)
 498  0015 ca530a        	or	a,21258
 499  0018 c7530a        	ld	21258,a
 500                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 500                     ; 126                           (uint8_t)TIM2_OCMode);
 502  001b c65307        	ld	a,21255
 503  001e a48f          	and	a,#143
 504  0020 1a02          	or	a,(OFST+1,sp)
 505  0022 c75307        	ld	21255,a
 506                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 508  0025 7b06          	ld	a,(OFST+5,sp)
 509  0027 c75311        	ld	21265,a
 510                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 512  002a 7b07          	ld	a,(OFST+6,sp)
 513  002c c75312        	ld	21266,a
 514                     ; 131 }
 517  002f 5b03          	addw	sp,#3
 518  0031 81            	ret
 582                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 582                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 582                     ; 144                   uint16_t TIM2_Pulse,
 582                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 582                     ; 146 {
 583                     .text:	section	.text,new
 584  0000               _TIM2_OC2Init:
 586  0000 89            	pushw	x
 587  0001 88            	push	a
 588       00000001      OFST:	set	1
 591                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 593                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 595                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 597                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 599  0002 c6530a        	ld	a,21258
 600  0005 a4cf          	and	a,#207
 601  0007 c7530a        	ld	21258,a
 602                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 602                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 604  000a 7b08          	ld	a,(OFST+7,sp)
 605  000c a420          	and	a,#32
 606  000e 6b01          	ld	(OFST+0,sp),a
 608  0010 9f            	ld	a,xl
 609  0011 a410          	and	a,#16
 610  0013 1a01          	or	a,(OFST+0,sp)
 611  0015 ca530a        	or	a,21258
 612  0018 c7530a        	ld	21258,a
 613                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 613                     ; 162                           (uint8_t)TIM2_OCMode);
 615  001b c65308        	ld	a,21256
 616  001e a48f          	and	a,#143
 617  0020 1a02          	or	a,(OFST+1,sp)
 618  0022 c75308        	ld	21256,a
 619                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 621  0025 7b06          	ld	a,(OFST+5,sp)
 622  0027 c75313        	ld	21267,a
 623                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 625  002a 7b07          	ld	a,(OFST+6,sp)
 626  002c c75314        	ld	21268,a
 627                     ; 168 }
 630  002f 5b03          	addw	sp,#3
 631  0031 81            	ret
 695                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 695                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 695                     ; 181                   uint16_t TIM2_Pulse,
 695                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 695                     ; 183 {
 696                     .text:	section	.text,new
 697  0000               _TIM2_OC3Init:
 699  0000 89            	pushw	x
 700  0001 88            	push	a
 701       00000001      OFST:	set	1
 704                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 706                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 708                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 710                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 712  0002 c6530b        	ld	a,21259
 713  0005 a4fc          	and	a,#252
 714  0007 c7530b        	ld	21259,a
 715                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 715                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 717  000a 7b08          	ld	a,(OFST+7,sp)
 718  000c a402          	and	a,#2
 719  000e 6b01          	ld	(OFST+0,sp),a
 721  0010 9f            	ld	a,xl
 722  0011 a401          	and	a,#1
 723  0013 1a01          	or	a,(OFST+0,sp)
 724  0015 ca530b        	or	a,21259
 725  0018 c7530b        	ld	21259,a
 726                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 726                     ; 196                           (uint8_t)TIM2_OCMode);
 728  001b c65309        	ld	a,21257
 729  001e a48f          	and	a,#143
 730  0020 1a02          	or	a,(OFST+1,sp)
 731  0022 c75309        	ld	21257,a
 732                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 734  0025 7b06          	ld	a,(OFST+5,sp)
 735  0027 c75315        	ld	21269,a
 736                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 738  002a 7b07          	ld	a,(OFST+6,sp)
 739  002c c75316        	ld	21270,a
 740                     ; 201 }
 743  002f 5b03          	addw	sp,#3
 744  0031 81            	ret
 937                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 937                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 937                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 937                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 937                     ; 216                  uint8_t TIM2_ICFilter)
 937                     ; 217 {
 938                     .text:	section	.text,new
 939  0000               _TIM2_ICInit:
 941  0000 89            	pushw	x
 942       00000000      OFST:	set	0
 945                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 947                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 949                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 951                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 953                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 955                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
 957  0001 9e            	ld	a,xh
 958  0002 4d            	tnz	a
 959  0003 2614          	jrne	L104
 960                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
 960                     ; 229                (uint8_t)TIM2_ICSelection,
 960                     ; 230                (uint8_t)TIM2_ICFilter);
 962  0005 7b07          	ld	a,(OFST+7,sp)
 963  0007 88            	push	a
 964  0008 7b06          	ld	a,(OFST+6,sp)
 965  000a 97            	ld	xl,a
 966  000b 7b03          	ld	a,(OFST+3,sp)
 967  000d 95            	ld	xh,a
 968  000e cd0000        	call	L3_TI1_Config
 970  0011 84            	pop	a
 971                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 973  0012 7b06          	ld	a,(OFST+6,sp)
 974  0014 cd0000        	call	_TIM2_SetIC1Prescaler
 977  0017 202c          	jra	L304
 978  0019               L104:
 979                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
 981  0019 7b01          	ld	a,(OFST+1,sp)
 982  001b a101          	cp	a,#1
 983  001d 2614          	jrne	L504
 984                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
 984                     ; 239                (uint8_t)TIM2_ICSelection,
 984                     ; 240                (uint8_t)TIM2_ICFilter);
 986  001f 7b07          	ld	a,(OFST+7,sp)
 987  0021 88            	push	a
 988  0022 7b06          	ld	a,(OFST+6,sp)
 989  0024 97            	ld	xl,a
 990  0025 7b03          	ld	a,(OFST+3,sp)
 991  0027 95            	ld	xh,a
 992  0028 cd0000        	call	L5_TI2_Config
 994  002b 84            	pop	a
 995                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 997  002c 7b06          	ld	a,(OFST+6,sp)
 998  002e cd0000        	call	_TIM2_SetIC2Prescaler
1001  0031 2012          	jra	L304
1002  0033               L504:
1003                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1003                     ; 249                (uint8_t)TIM2_ICSelection,
1003                     ; 250                (uint8_t)TIM2_ICFilter);
1005  0033 7b07          	ld	a,(OFST+7,sp)
1006  0035 88            	push	a
1007  0036 7b06          	ld	a,(OFST+6,sp)
1008  0038 97            	ld	xl,a
1009  0039 7b03          	ld	a,(OFST+3,sp)
1010  003b 95            	ld	xh,a
1011  003c cd0000        	call	L7_TI3_Config
1013  003f 84            	pop	a
1014                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1016  0040 7b06          	ld	a,(OFST+6,sp)
1017  0042 cd0000        	call	_TIM2_SetIC3Prescaler
1019  0045               L304:
1020                     ; 255 }
1023  0045 85            	popw	x
1024  0046 81            	ret
1120                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1120                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1120                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1120                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1120                     ; 270                      uint8_t TIM2_ICFilter)
1120                     ; 271 {
1121                     .text:	section	.text,new
1122  0000               _TIM2_PWMIConfig:
1124  0000 89            	pushw	x
1125  0001 89            	pushw	x
1126       00000002      OFST:	set	2
1129                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1131                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1133                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1135                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1137                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1139                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1141                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1143  0002 9f            	ld	a,xl
1144  0003 a144          	cp	a,#68
1145  0005 2706          	jreq	L754
1146                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1148  0007 a644          	ld	a,#68
1149  0009 6b01          	ld	(OFST-1,sp),a
1152  000b 2002          	jra	L164
1153  000d               L754:
1154                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1156  000d 0f01          	clr	(OFST-1,sp)
1158  000f               L164:
1159                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1161  000f 7b07          	ld	a,(OFST+5,sp)
1162  0011 a101          	cp	a,#1
1163  0013 2606          	jrne	L364
1164                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1166  0015 a602          	ld	a,#2
1167  0017 6b02          	ld	(OFST+0,sp),a
1170  0019 2004          	jra	L564
1171  001b               L364:
1172                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1174  001b a601          	ld	a,#1
1175  001d 6b02          	ld	(OFST+0,sp),a
1177  001f               L564:
1178                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1180  001f 0d03          	tnz	(OFST+1,sp)
1181  0021 2626          	jrne	L764
1182                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1182                     ; 305                (uint8_t)TIM2_ICFilter);
1184  0023 7b09          	ld	a,(OFST+7,sp)
1185  0025 88            	push	a
1186  0026 7b08          	ld	a,(OFST+6,sp)
1187  0028 97            	ld	xl,a
1188  0029 7b05          	ld	a,(OFST+3,sp)
1189  002b 95            	ld	xh,a
1190  002c cd0000        	call	L3_TI1_Config
1192  002f 84            	pop	a
1193                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1195  0030 7b08          	ld	a,(OFST+6,sp)
1196  0032 cd0000        	call	_TIM2_SetIC1Prescaler
1198                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1200  0035 7b09          	ld	a,(OFST+7,sp)
1201  0037 88            	push	a
1202  0038 7b03          	ld	a,(OFST+1,sp)
1203  003a 97            	ld	xl,a
1204  003b 7b02          	ld	a,(OFST+0,sp)
1205  003d 95            	ld	xh,a
1206  003e cd0000        	call	L5_TI2_Config
1208  0041 84            	pop	a
1209                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1211  0042 7b08          	ld	a,(OFST+6,sp)
1212  0044 cd0000        	call	_TIM2_SetIC2Prescaler
1215  0047 2024          	jra	L174
1216  0049               L764:
1217                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1217                     ; 320                (uint8_t)TIM2_ICFilter);
1219  0049 7b09          	ld	a,(OFST+7,sp)
1220  004b 88            	push	a
1221  004c 7b08          	ld	a,(OFST+6,sp)
1222  004e 97            	ld	xl,a
1223  004f 7b05          	ld	a,(OFST+3,sp)
1224  0051 95            	ld	xh,a
1225  0052 cd0000        	call	L5_TI2_Config
1227  0055 84            	pop	a
1228                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1230  0056 7b08          	ld	a,(OFST+6,sp)
1231  0058 cd0000        	call	_TIM2_SetIC2Prescaler
1233                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1235  005b 7b09          	ld	a,(OFST+7,sp)
1236  005d 88            	push	a
1237  005e 7b03          	ld	a,(OFST+1,sp)
1238  0060 97            	ld	xl,a
1239  0061 7b02          	ld	a,(OFST+0,sp)
1240  0063 95            	ld	xh,a
1241  0064 cd0000        	call	L3_TI1_Config
1243  0067 84            	pop	a
1244                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1246  0068 7b08          	ld	a,(OFST+6,sp)
1247  006a cd0000        	call	_TIM2_SetIC1Prescaler
1249  006d               L174:
1250                     ; 331 }
1253  006d 5b04          	addw	sp,#4
1254  006f 81            	ret
1309                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1309                     ; 340 {
1310                     .text:	section	.text,new
1311  0000               _TIM2_Cmd:
1315                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1317                     ; 345   if (NewState != DISABLE)
1319  0000 4d            	tnz	a
1320  0001 2706          	jreq	L125
1321                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1323  0003 72105300      	bset	21248,#0
1325  0007 2004          	jra	L325
1326  0009               L125:
1327                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1329  0009 72115300      	bres	21248,#0
1330  000d               L325:
1331                     ; 353 }
1334  000d 81            	ret
1413                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1413                     ; 369 {
1414                     .text:	section	.text,new
1415  0000               _TIM2_ITConfig:
1417  0000 89            	pushw	x
1418       00000000      OFST:	set	0
1421                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1423                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1425                     ; 374   if (NewState != DISABLE)
1427  0001 9f            	ld	a,xl
1428  0002 4d            	tnz	a
1429  0003 2709          	jreq	L365
1430                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1432  0005 9e            	ld	a,xh
1433  0006 ca5303        	or	a,21251
1434  0009 c75303        	ld	21251,a
1436  000c 2009          	jra	L565
1437  000e               L365:
1438                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1440  000e 7b01          	ld	a,(OFST+1,sp)
1441  0010 43            	cpl	a
1442  0011 c45303        	and	a,21251
1443  0014 c75303        	ld	21251,a
1444  0017               L565:
1445                     ; 384 }
1448  0017 85            	popw	x
1449  0018 81            	ret
1485                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1485                     ; 393 {
1486                     .text:	section	.text,new
1487  0000               _TIM2_UpdateDisableConfig:
1491                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1493                     ; 398   if (NewState != DISABLE)
1495  0000 4d            	tnz	a
1496  0001 2706          	jreq	L506
1497                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1499  0003 72125300      	bset	21248,#1
1501  0007 2004          	jra	L706
1502  0009               L506:
1503                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1505  0009 72135300      	bres	21248,#1
1506  000d               L706:
1507                     ; 406 }
1510  000d 81            	ret
1568                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1568                     ; 417 {
1569                     .text:	section	.text,new
1570  0000               _TIM2_UpdateRequestConfig:
1574                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1576                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1578  0000 4d            	tnz	a
1579  0001 2706          	jreq	L736
1580                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1582  0003 72145300      	bset	21248,#2
1584  0007 2004          	jra	L146
1585  0009               L736:
1586                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1588  0009 72155300      	bres	21248,#2
1589  000d               L146:
1590                     ; 430 }
1593  000d 81            	ret
1650                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1650                     ; 441 {
1651                     .text:	section	.text,new
1652  0000               _TIM2_SelectOnePulseMode:
1656                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1658                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1660  0000 4d            	tnz	a
1661  0001 2706          	jreq	L176
1662                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1664  0003 72165300      	bset	21248,#3
1666  0007 2004          	jra	L376
1667  0009               L176:
1668                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1670  0009 72175300      	bres	21248,#3
1671  000d               L376:
1672                     ; 454 }
1675  000d 81            	ret
1743                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1743                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1743                     ; 486 {
1744                     .text:	section	.text,new
1745  0000               _TIM2_PrescalerConfig:
1749                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1751                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1753                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
1755  0000 9e            	ld	a,xh
1756  0001 c7530e        	ld	21262,a
1757                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1759  0004 9f            	ld	a,xl
1760  0005 c75306        	ld	21254,a
1761                     ; 496 }
1764  0008 81            	ret
1822                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1822                     ; 508 {
1823                     .text:	section	.text,new
1824  0000               _TIM2_ForcedOC1Config:
1826  0000 88            	push	a
1827       00000000      OFST:	set	0
1830                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1832                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1832                     ; 514                             | (uint8_t)TIM2_ForcedAction);
1834  0001 c65307        	ld	a,21255
1835  0004 a48f          	and	a,#143
1836  0006 1a01          	or	a,(OFST+1,sp)
1837  0008 c75307        	ld	21255,a
1838                     ; 515 }
1841  000b 84            	pop	a
1842  000c 81            	ret
1878                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1878                     ; 527 {
1879                     .text:	section	.text,new
1880  0000               _TIM2_ForcedOC2Config:
1882  0000 88            	push	a
1883       00000000      OFST:	set	0
1886                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1888                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1888                     ; 533                           | (uint8_t)TIM2_ForcedAction);
1890  0001 c65308        	ld	a,21256
1891  0004 a48f          	and	a,#143
1892  0006 1a01          	or	a,(OFST+1,sp)
1893  0008 c75308        	ld	21256,a
1894                     ; 534 }
1897  000b 84            	pop	a
1898  000c 81            	ret
1934                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1934                     ; 546 {
1935                     .text:	section	.text,new
1936  0000               _TIM2_ForcedOC3Config:
1938  0000 88            	push	a
1939       00000000      OFST:	set	0
1942                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1944                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1944                     ; 552                             | (uint8_t)TIM2_ForcedAction);
1946  0001 c65309        	ld	a,21257
1947  0004 a48f          	and	a,#143
1948  0006 1a01          	or	a,(OFST+1,sp)
1949  0008 c75309        	ld	21257,a
1950                     ; 553 }
1953  000b 84            	pop	a
1954  000c 81            	ret
1990                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1990                     ; 562 {
1991                     .text:	section	.text,new
1992  0000               _TIM2_ARRPreloadConfig:
1996                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1998                     ; 567   if (NewState != DISABLE)
2000  0000 4d            	tnz	a
2001  0001 2706          	jreq	L7201
2002                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2004  0003 721e5300      	bset	21248,#7
2006  0007 2004          	jra	L1301
2007  0009               L7201:
2008                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2010  0009 721f5300      	bres	21248,#7
2011  000d               L1301:
2012                     ; 575 }
2015  000d 81            	ret
2051                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2051                     ; 584 {
2052                     .text:	section	.text,new
2053  0000               _TIM2_OC1PreloadConfig:
2057                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2059                     ; 589   if (NewState != DISABLE)
2061  0000 4d            	tnz	a
2062  0001 2706          	jreq	L1501
2063                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2065  0003 72165307      	bset	21255,#3
2067  0007 2004          	jra	L3501
2068  0009               L1501:
2069                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2071  0009 72175307      	bres	21255,#3
2072  000d               L3501:
2073                     ; 597 }
2076  000d 81            	ret
2112                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2112                     ; 606 {
2113                     .text:	section	.text,new
2114  0000               _TIM2_OC2PreloadConfig:
2118                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2120                     ; 611   if (NewState != DISABLE)
2122  0000 4d            	tnz	a
2123  0001 2706          	jreq	L3701
2124                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2126  0003 72165308      	bset	21256,#3
2128  0007 2004          	jra	L5701
2129  0009               L3701:
2130                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2132  0009 72175308      	bres	21256,#3
2133  000d               L5701:
2134                     ; 619 }
2137  000d 81            	ret
2173                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2173                     ; 628 {
2174                     .text:	section	.text,new
2175  0000               _TIM2_OC3PreloadConfig:
2179                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2181                     ; 633   if (NewState != DISABLE)
2183  0000 4d            	tnz	a
2184  0001 2706          	jreq	L5111
2185                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2187  0003 72165309      	bset	21257,#3
2189  0007 2004          	jra	L7111
2190  0009               L5111:
2191                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2193  0009 72175309      	bres	21257,#3
2194  000d               L7111:
2195                     ; 641 }
2198  000d 81            	ret
2271                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2271                     ; 654 {
2272                     .text:	section	.text,new
2273  0000               _TIM2_GenerateEvent:
2277                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2279                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2281  0000 c75306        	ld	21254,a
2282                     ; 660 }
2285  0003 81            	ret
2321                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2321                     ; 671 {
2322                     .text:	section	.text,new
2323  0000               _TIM2_OC1PolarityConfig:
2327                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2329                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2331  0000 4d            	tnz	a
2332  0001 2706          	jreq	L1711
2333                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2335  0003 7212530a      	bset	21258,#1
2337  0007 2004          	jra	L3711
2338  0009               L1711:
2339                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2341  0009 7213530a      	bres	21258,#1
2342  000d               L3711:
2343                     ; 684 }
2346  000d 81            	ret
2382                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2382                     ; 695 {
2383                     .text:	section	.text,new
2384  0000               _TIM2_OC2PolarityConfig:
2388                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2390                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2392  0000 4d            	tnz	a
2393  0001 2706          	jreq	L3121
2394                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2396  0003 721a530a      	bset	21258,#5
2398  0007 2004          	jra	L5121
2399  0009               L3121:
2400                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2402  0009 721b530a      	bres	21258,#5
2403  000d               L5121:
2404                     ; 708 }
2407  000d 81            	ret
2443                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2443                     ; 719 {
2444                     .text:	section	.text,new
2445  0000               _TIM2_OC3PolarityConfig:
2449                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2451                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2453  0000 4d            	tnz	a
2454  0001 2706          	jreq	L5321
2455                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2457  0003 7212530b      	bset	21259,#1
2459  0007 2004          	jra	L7321
2460  0009               L5321:
2461                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2463  0009 7213530b      	bres	21259,#1
2464  000d               L7321:
2465                     ; 732 }
2468  000d 81            	ret
2513                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2513                     ; 746 {
2514                     .text:	section	.text,new
2515  0000               _TIM2_CCxCmd:
2517  0000 89            	pushw	x
2518       00000000      OFST:	set	0
2521                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2523                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2525                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
2527  0001 9e            	ld	a,xh
2528  0002 4d            	tnz	a
2529  0003 2610          	jrne	L3621
2530                     ; 754     if (NewState != DISABLE)
2532  0005 9f            	ld	a,xl
2533  0006 4d            	tnz	a
2534  0007 2706          	jreq	L5621
2535                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
2537  0009 7210530a      	bset	21258,#0
2539  000d 202a          	jra	L1721
2540  000f               L5621:
2541                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2543  000f 7211530a      	bres	21258,#0
2544  0013 2024          	jra	L1721
2545  0015               L3621:
2546                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
2548  0015 7b01          	ld	a,(OFST+1,sp)
2549  0017 a101          	cp	a,#1
2550  0019 2610          	jrne	L3721
2551                     ; 767     if (NewState != DISABLE)
2553  001b 0d02          	tnz	(OFST+2,sp)
2554  001d 2706          	jreq	L5721
2555                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
2557  001f 7218530a      	bset	21258,#4
2559  0023 2014          	jra	L1721
2560  0025               L5721:
2561                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2563  0025 7219530a      	bres	21258,#4
2564  0029 200e          	jra	L1721
2565  002b               L3721:
2566                     ; 779     if (NewState != DISABLE)
2568  002b 0d02          	tnz	(OFST+2,sp)
2569  002d 2706          	jreq	L3031
2570                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
2572  002f 7210530b      	bset	21259,#0
2574  0033 2004          	jra	L1721
2575  0035               L3031:
2576                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2578  0035 7211530b      	bres	21259,#0
2579  0039               L1721:
2580                     ; 788 }
2583  0039 85            	popw	x
2584  003a 81            	ret
2629                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2629                     ; 811 {
2630                     .text:	section	.text,new
2631  0000               _TIM2_SelectOCxM:
2633  0000 89            	pushw	x
2634       00000000      OFST:	set	0
2637                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2639                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2641                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
2643  0001 9e            	ld	a,xh
2644  0002 4d            	tnz	a
2645  0003 2610          	jrne	L1331
2646                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2648  0005 7211530a      	bres	21258,#0
2649                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
2649                     ; 823                             | (uint8_t)TIM2_OCMode);
2651  0009 c65307        	ld	a,21255
2652  000c a48f          	and	a,#143
2653  000e 1a02          	or	a,(OFST+2,sp)
2654  0010 c75307        	ld	21255,a
2656  0013 2024          	jra	L3331
2657  0015               L1331:
2658                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
2660  0015 7b01          	ld	a,(OFST+1,sp)
2661  0017 a101          	cp	a,#1
2662  0019 2610          	jrne	L5331
2663                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2665  001b 7219530a      	bres	21258,#4
2666                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
2666                     ; 832                             | (uint8_t)TIM2_OCMode);
2668  001f c65308        	ld	a,21256
2669  0022 a48f          	and	a,#143
2670  0024 1a02          	or	a,(OFST+2,sp)
2671  0026 c75308        	ld	21256,a
2673  0029 200e          	jra	L3331
2674  002b               L5331:
2675                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2677  002b 7211530b      	bres	21259,#0
2678                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2678                     ; 841                             | (uint8_t)TIM2_OCMode);
2680  002f c65309        	ld	a,21257
2681  0032 a48f          	and	a,#143
2682  0034 1a02          	or	a,(OFST+2,sp)
2683  0036 c75309        	ld	21257,a
2684  0039               L3331:
2685                     ; 843 }
2688  0039 85            	popw	x
2689  003a 81            	ret
2723                     ; 851 void TIM2_SetCounter(uint16_t Counter)
2723                     ; 852 {
2724                     .text:	section	.text,new
2725  0000               _TIM2_SetCounter:
2729                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
2731  0000 9e            	ld	a,xh
2732  0001 c7530c        	ld	21260,a
2733                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
2735  0004 9f            	ld	a,xl
2736  0005 c7530d        	ld	21261,a
2737                     ; 856 }
2740  0008 81            	ret
2774                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
2774                     ; 865 {
2775                     .text:	section	.text,new
2776  0000               _TIM2_SetAutoreload:
2780                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
2782  0000 9e            	ld	a,xh
2783  0001 c7530f        	ld	21263,a
2784                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
2786  0004 9f            	ld	a,xl
2787  0005 c75310        	ld	21264,a
2788                     ; 869 }
2791  0008 81            	ret
2825                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
2825                     ; 878 {
2826                     .text:	section	.text,new
2827  0000               _TIM2_SetCompare1:
2831                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
2833  0000 9e            	ld	a,xh
2834  0001 c75311        	ld	21265,a
2835                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
2837  0004 9f            	ld	a,xl
2838  0005 c75312        	ld	21266,a
2839                     ; 882 }
2842  0008 81            	ret
2876                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
2876                     ; 891 {
2877                     .text:	section	.text,new
2878  0000               _TIM2_SetCompare2:
2882                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
2884  0000 9e            	ld	a,xh
2885  0001 c75313        	ld	21267,a
2886                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
2888  0004 9f            	ld	a,xl
2889  0005 c75314        	ld	21268,a
2890                     ; 895 }
2893  0008 81            	ret
2927                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
2927                     ; 904 {
2928                     .text:	section	.text,new
2929  0000               _TIM2_SetCompare3:
2933                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
2935  0000 9e            	ld	a,xh
2936  0001 c75315        	ld	21269,a
2937                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
2939  0004 9f            	ld	a,xl
2940  0005 c75316        	ld	21270,a
2941                     ; 908 }
2944  0008 81            	ret
2980                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2980                     ; 921 {
2981                     .text:	section	.text,new
2982  0000               _TIM2_SetIC1Prescaler:
2984  0000 88            	push	a
2985       00000000      OFST:	set	0
2988                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2990                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2990                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
2992  0001 c65307        	ld	a,21255
2993  0004 a4f3          	and	a,#243
2994  0006 1a01          	or	a,(OFST+1,sp)
2995  0008 c75307        	ld	21255,a
2996                     ; 928 }
2999  000b 84            	pop	a
3000  000c 81            	ret
3036                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3036                     ; 941 {
3037                     .text:	section	.text,new
3038  0000               _TIM2_SetIC2Prescaler:
3040  0000 88            	push	a
3041       00000000      OFST:	set	0
3044                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3046                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3046                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3048  0001 c65308        	ld	a,21256
3049  0004 a4f3          	and	a,#243
3050  0006 1a01          	or	a,(OFST+1,sp)
3051  0008 c75308        	ld	21256,a
3052                     ; 948 }
3055  000b 84            	pop	a
3056  000c 81            	ret
3092                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3092                     ; 961 {
3093                     .text:	section	.text,new
3094  0000               _TIM2_SetIC3Prescaler:
3096  0000 88            	push	a
3097       00000000      OFST:	set	0
3100                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3102                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3102                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3104  0001 c65309        	ld	a,21257
3105  0004 a4f3          	and	a,#243
3106  0006 1a01          	or	a,(OFST+1,sp)
3107  0008 c75309        	ld	21257,a
3108                     ; 968 }
3111  000b 84            	pop	a
3112  000c 81            	ret
3164                     ; 975 uint16_t TIM2_GetCapture1(void)
3164                     ; 976 {
3165                     .text:	section	.text,new
3166  0000               _TIM2_GetCapture1:
3168  0000 5204          	subw	sp,#4
3169       00000004      OFST:	set	4
3172                     ; 978   uint16_t tmpccr1 = 0;
3174                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3178                     ; 981   tmpccr1h = TIM2->CCR1H;
3180  0002 c65311        	ld	a,21265
3181  0005 6b02          	ld	(OFST-2,sp),a
3183                     ; 982   tmpccr1l = TIM2->CCR1L;
3185  0007 c65312        	ld	a,21266
3186  000a 6b01          	ld	(OFST-3,sp),a
3188                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3190  000c 7b01          	ld	a,(OFST-3,sp)
3191  000e 5f            	clrw	x
3192  000f 97            	ld	xl,a
3193  0010 1f03          	ldw	(OFST-1,sp),x
3195                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3197  0012 7b02          	ld	a,(OFST-2,sp)
3198  0014 5f            	clrw	x
3199  0015 97            	ld	xl,a
3200  0016 4f            	clr	a
3201  0017 02            	rlwa	x,a
3202  0018 01            	rrwa	x,a
3203  0019 1a04          	or	a,(OFST+0,sp)
3204  001b 01            	rrwa	x,a
3205  001c 1a03          	or	a,(OFST-1,sp)
3206  001e 01            	rrwa	x,a
3207  001f 1f03          	ldw	(OFST-1,sp),x
3209                     ; 987   return (uint16_t)tmpccr1;
3211  0021 1e03          	ldw	x,(OFST-1,sp)
3214  0023 5b04          	addw	sp,#4
3215  0025 81            	ret
3267                     ; 995 uint16_t TIM2_GetCapture2(void)
3267                     ; 996 {
3268                     .text:	section	.text,new
3269  0000               _TIM2_GetCapture2:
3271  0000 5204          	subw	sp,#4
3272       00000004      OFST:	set	4
3275                     ; 998   uint16_t tmpccr2 = 0;
3277                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3281                     ; 1001   tmpccr2h = TIM2->CCR2H;
3283  0002 c65313        	ld	a,21267
3284  0005 6b02          	ld	(OFST-2,sp),a
3286                     ; 1002   tmpccr2l = TIM2->CCR2L;
3288  0007 c65314        	ld	a,21268
3289  000a 6b01          	ld	(OFST-3,sp),a
3291                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3293  000c 7b01          	ld	a,(OFST-3,sp)
3294  000e 5f            	clrw	x
3295  000f 97            	ld	xl,a
3296  0010 1f03          	ldw	(OFST-1,sp),x
3298                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3300  0012 7b02          	ld	a,(OFST-2,sp)
3301  0014 5f            	clrw	x
3302  0015 97            	ld	xl,a
3303  0016 4f            	clr	a
3304  0017 02            	rlwa	x,a
3305  0018 01            	rrwa	x,a
3306  0019 1a04          	or	a,(OFST+0,sp)
3307  001b 01            	rrwa	x,a
3308  001c 1a03          	or	a,(OFST-1,sp)
3309  001e 01            	rrwa	x,a
3310  001f 1f03          	ldw	(OFST-1,sp),x
3312                     ; 1007   return (uint16_t)tmpccr2;
3314  0021 1e03          	ldw	x,(OFST-1,sp)
3317  0023 5b04          	addw	sp,#4
3318  0025 81            	ret
3370                     ; 1015 uint16_t TIM2_GetCapture3(void)
3370                     ; 1016 {
3371                     .text:	section	.text,new
3372  0000               _TIM2_GetCapture3:
3374  0000 5204          	subw	sp,#4
3375       00000004      OFST:	set	4
3378                     ; 1018   uint16_t tmpccr3 = 0;
3380                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
3384                     ; 1021   tmpccr3h = TIM2->CCR3H;
3386  0002 c65315        	ld	a,21269
3387  0005 6b02          	ld	(OFST-2,sp),a
3389                     ; 1022   tmpccr3l = TIM2->CCR3L;
3391  0007 c65316        	ld	a,21270
3392  000a 6b01          	ld	(OFST-3,sp),a
3394                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
3396  000c 7b01          	ld	a,(OFST-3,sp)
3397  000e 5f            	clrw	x
3398  000f 97            	ld	xl,a
3399  0010 1f03          	ldw	(OFST-1,sp),x
3401                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3403  0012 7b02          	ld	a,(OFST-2,sp)
3404  0014 5f            	clrw	x
3405  0015 97            	ld	xl,a
3406  0016 4f            	clr	a
3407  0017 02            	rlwa	x,a
3408  0018 01            	rrwa	x,a
3409  0019 1a04          	or	a,(OFST+0,sp)
3410  001b 01            	rrwa	x,a
3411  001c 1a03          	or	a,(OFST-1,sp)
3412  001e 01            	rrwa	x,a
3413  001f 1f03          	ldw	(OFST-1,sp),x
3415                     ; 1027   return (uint16_t)tmpccr3;
3417  0021 1e03          	ldw	x,(OFST-1,sp)
3420  0023 5b04          	addw	sp,#4
3421  0025 81            	ret
3455                     ; 1035 uint16_t TIM2_GetCounter(void)
3455                     ; 1036 {
3456                     .text:	section	.text,new
3457  0000               _TIM2_GetCounter:
3459  0000 89            	pushw	x
3460       00000002      OFST:	set	2
3463                     ; 1037   uint16_t tmpcntr = 0;
3465                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
3467  0001 c6530c        	ld	a,21260
3468  0004 5f            	clrw	x
3469  0005 97            	ld	xl,a
3470  0006 4f            	clr	a
3471  0007 02            	rlwa	x,a
3472  0008 1f01          	ldw	(OFST-1,sp),x
3474                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
3476  000a c6530d        	ld	a,21261
3477  000d 5f            	clrw	x
3478  000e 97            	ld	xl,a
3479  000f 01            	rrwa	x,a
3480  0010 1a02          	or	a,(OFST+0,sp)
3481  0012 01            	rrwa	x,a
3482  0013 1a01          	or	a,(OFST-1,sp)
3483  0015 01            	rrwa	x,a
3486  0016 5b02          	addw	sp,#2
3487  0018 81            	ret
3511                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3511                     ; 1050 {
3512                     .text:	section	.text,new
3513  0000               _TIM2_GetPrescaler:
3517                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3519  0000 c6530e        	ld	a,21262
3522  0003 81            	ret
3661                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3661                     ; 1069 {
3662                     .text:	section	.text,new
3663  0000               _TIM2_GetFlagStatus:
3665  0000 89            	pushw	x
3666  0001 89            	pushw	x
3667       00000002      OFST:	set	2
3670                     ; 1070   FlagStatus bitstatus = RESET;
3672                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3676                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3678                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
3680  0002 9f            	ld	a,xl
3681  0003 c45304        	and	a,21252
3682  0006 6b01          	ld	(OFST-1,sp),a
3684                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
3686  0008 7b03          	ld	a,(OFST+1,sp)
3687  000a 6b02          	ld	(OFST+0,sp),a
3689                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
3691  000c c65305        	ld	a,21253
3692  000f 1402          	and	a,(OFST+0,sp)
3693  0011 1a01          	or	a,(OFST-1,sp)
3694  0013 2706          	jreq	L5371
3695                     ; 1081     bitstatus = SET;
3697  0015 a601          	ld	a,#1
3698  0017 6b02          	ld	(OFST+0,sp),a
3701  0019 2002          	jra	L7371
3702  001b               L5371:
3703                     ; 1085     bitstatus = RESET;
3705  001b 0f02          	clr	(OFST+0,sp)
3707  001d               L7371:
3708                     ; 1087   return (FlagStatus)bitstatus;
3710  001d 7b02          	ld	a,(OFST+0,sp)
3713  001f 5b04          	addw	sp,#4
3714  0021 81            	ret
3749                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3749                     ; 1104 {
3750                     .text:	section	.text,new
3751  0000               _TIM2_ClearFlag:
3755                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3757                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
3759  0000 9f            	ld	a,xl
3760  0001 43            	cpl	a
3761  0002 c75304        	ld	21252,a
3762                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
3764  0005 35ff5305      	mov	21253,#255
3765                     ; 1111 }
3768  0009 81            	ret
3832                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3832                     ; 1124 {
3833                     .text:	section	.text,new
3834  0000               _TIM2_GetITStatus:
3836  0000 88            	push	a
3837  0001 89            	pushw	x
3838       00000002      OFST:	set	2
3841                     ; 1125   ITStatus bitstatus = RESET;
3843                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
3847                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3849                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
3851  0002 c45304        	and	a,21252
3852  0005 6b01          	ld	(OFST-1,sp),a
3854                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
3856  0007 c65303        	ld	a,21251
3857  000a 1403          	and	a,(OFST+1,sp)
3858  000c 6b02          	ld	(OFST+0,sp),a
3860                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
3862  000e 0d01          	tnz	(OFST-1,sp)
3863  0010 270a          	jreq	L1102
3865  0012 0d02          	tnz	(OFST+0,sp)
3866  0014 2706          	jreq	L1102
3867                     ; 1137     bitstatus = SET;
3869  0016 a601          	ld	a,#1
3870  0018 6b02          	ld	(OFST+0,sp),a
3873  001a 2002          	jra	L3102
3874  001c               L1102:
3875                     ; 1141     bitstatus = RESET;
3877  001c 0f02          	clr	(OFST+0,sp)
3879  001e               L3102:
3880                     ; 1143   return (ITStatus)(bitstatus);
3882  001e 7b02          	ld	a,(OFST+0,sp)
3885  0020 5b03          	addw	sp,#3
3886  0022 81            	ret
3922                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3922                     ; 1157 {
3923                     .text:	section	.text,new
3924  0000               _TIM2_ClearITPendingBit:
3928                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
3930                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
3932  0000 43            	cpl	a
3933  0001 c75304        	ld	21252,a
3934                     ; 1163 }
3937  0004 81            	ret
3989                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
3989                     ; 1182                        uint8_t TIM2_ICSelection,
3989                     ; 1183                        uint8_t TIM2_ICFilter)
3989                     ; 1184 {
3990                     .text:	section	.text,new
3991  0000               L3_TI1_Config:
3993  0000 89            	pushw	x
3994  0001 88            	push	a
3995       00000001      OFST:	set	1
3998                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4000  0002 7211530a      	bres	21258,#0
4001                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4001                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4003  0006 7b06          	ld	a,(OFST+5,sp)
4004  0008 97            	ld	xl,a
4005  0009 a610          	ld	a,#16
4006  000b 42            	mul	x,a
4007  000c 9f            	ld	a,xl
4008  000d 1a03          	or	a,(OFST+2,sp)
4009  000f 6b01          	ld	(OFST+0,sp),a
4011  0011 c65307        	ld	a,21255
4012  0014 a40c          	and	a,#12
4013  0016 1a01          	or	a,(OFST+0,sp)
4014  0018 c75307        	ld	21255,a
4015                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4017  001b 0d02          	tnz	(OFST+1,sp)
4018  001d 2706          	jreq	L1602
4019                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4021  001f 7212530a      	bset	21258,#1
4023  0023 2004          	jra	L3602
4024  0025               L1602:
4025                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4027  0025 7213530a      	bres	21258,#1
4028  0029               L3602:
4029                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4031  0029 7210530a      	bset	21258,#0
4032                     ; 1203 }
4035  002d 5b03          	addw	sp,#3
4036  002f 81            	ret
4088                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4088                     ; 1222                        uint8_t TIM2_ICSelection,
4088                     ; 1223                        uint8_t TIM2_ICFilter)
4088                     ; 1224 {
4089                     .text:	section	.text,new
4090  0000               L5_TI2_Config:
4092  0000 89            	pushw	x
4093  0001 88            	push	a
4094       00000001      OFST:	set	1
4097                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4099  0002 7219530a      	bres	21258,#4
4100                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4100                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4102  0006 7b06          	ld	a,(OFST+5,sp)
4103  0008 97            	ld	xl,a
4104  0009 a610          	ld	a,#16
4105  000b 42            	mul	x,a
4106  000c 9f            	ld	a,xl
4107  000d 1a03          	or	a,(OFST+2,sp)
4108  000f 6b01          	ld	(OFST+0,sp),a
4110  0011 c65308        	ld	a,21256
4111  0014 a40c          	and	a,#12
4112  0016 1a01          	or	a,(OFST+0,sp)
4113  0018 c75308        	ld	21256,a
4114                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4116  001b 0d02          	tnz	(OFST+1,sp)
4117  001d 2706          	jreq	L3112
4118                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4120  001f 721a530a      	bset	21258,#5
4122  0023 2004          	jra	L5112
4123  0025               L3112:
4124                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4126  0025 721b530a      	bres	21258,#5
4127  0029               L5112:
4128                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4130  0029 7218530a      	bset	21258,#4
4131                     ; 1245 }
4134  002d 5b03          	addw	sp,#3
4135  002f 81            	ret
4187                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4187                     ; 1262                        uint8_t TIM2_ICFilter)
4187                     ; 1263 {
4188                     .text:	section	.text,new
4189  0000               L7_TI3_Config:
4191  0000 89            	pushw	x
4192  0001 88            	push	a
4193       00000001      OFST:	set	1
4196                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4198  0002 7211530b      	bres	21259,#0
4199                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4199                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4201  0006 7b06          	ld	a,(OFST+5,sp)
4202  0008 97            	ld	xl,a
4203  0009 a610          	ld	a,#16
4204  000b 42            	mul	x,a
4205  000c 9f            	ld	a,xl
4206  000d 1a03          	or	a,(OFST+2,sp)
4207  000f 6b01          	ld	(OFST+0,sp),a
4209  0011 c65309        	ld	a,21257
4210  0014 a40c          	and	a,#12
4211  0016 1a01          	or	a,(OFST+0,sp)
4212  0018 c75309        	ld	21257,a
4213                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4215  001b 0d02          	tnz	(OFST+1,sp)
4216  001d 2706          	jreq	L5412
4217                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4219  001f 7212530b      	bset	21259,#1
4221  0023 2004          	jra	L7412
4222  0025               L5412:
4223                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4225  0025 7213530b      	bres	21259,#1
4226  0029               L7412:
4227                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4229  0029 7210530b      	bset	21259,#0
4230                     ; 1283 }
4233  002d 5b03          	addw	sp,#3
4234  002f 81            	ret
4247                     	xdef	_TIM2_ClearITPendingBit
4248                     	xdef	_TIM2_GetITStatus
4249                     	xdef	_TIM2_ClearFlag
4250                     	xdef	_TIM2_GetFlagStatus
4251                     	xdef	_TIM2_GetPrescaler
4252                     	xdef	_TIM2_GetCounter
4253                     	xdef	_TIM2_GetCapture3
4254                     	xdef	_TIM2_GetCapture2
4255                     	xdef	_TIM2_GetCapture1
4256                     	xdef	_TIM2_SetIC3Prescaler
4257                     	xdef	_TIM2_SetIC2Prescaler
4258                     	xdef	_TIM2_SetIC1Prescaler
4259                     	xdef	_TIM2_SetCompare3
4260                     	xdef	_TIM2_SetCompare2
4261                     	xdef	_TIM2_SetCompare1
4262                     	xdef	_TIM2_SetAutoreload
4263                     	xdef	_TIM2_SetCounter
4264                     	xdef	_TIM2_SelectOCxM
4265                     	xdef	_TIM2_CCxCmd
4266                     	xdef	_TIM2_OC3PolarityConfig
4267                     	xdef	_TIM2_OC2PolarityConfig
4268                     	xdef	_TIM2_OC1PolarityConfig
4269                     	xdef	_TIM2_GenerateEvent
4270                     	xdef	_TIM2_OC3PreloadConfig
4271                     	xdef	_TIM2_OC2PreloadConfig
4272                     	xdef	_TIM2_OC1PreloadConfig
4273                     	xdef	_TIM2_ARRPreloadConfig
4274                     	xdef	_TIM2_ForcedOC3Config
4275                     	xdef	_TIM2_ForcedOC2Config
4276                     	xdef	_TIM2_ForcedOC1Config
4277                     	xdef	_TIM2_PrescalerConfig
4278                     	xdef	_TIM2_SelectOnePulseMode
4279                     	xdef	_TIM2_UpdateRequestConfig
4280                     	xdef	_TIM2_UpdateDisableConfig
4281                     	xdef	_TIM2_ITConfig
4282                     	xdef	_TIM2_Cmd
4283                     	xdef	_TIM2_PWMIConfig
4284                     	xdef	_TIM2_ICInit
4285                     	xdef	_TIM2_OC3Init
4286                     	xdef	_TIM2_OC2Init
4287                     	xdef	_TIM2_OC1Init
4288                     	xdef	_TIM2_TimeBaseInit
4289                     	xdef	_TIM2_DeInit
4308                     	end
