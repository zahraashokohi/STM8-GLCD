   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  45                     ; 49 void TIM4_DeInit(void)
  45                     ; 50 {
  47                     .text:	section	.text,new
  48  0000               _TIM4_DeInit:
  52                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  54  0000 725f5340      	clr	21312
  55                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  57  0004 725f5343      	clr	21315
  58                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  60  0008 725f5346      	clr	21318
  61                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  63  000c 725f5347      	clr	21319
  64                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  66  0010 35ff5348      	mov	21320,#255
  67                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  69  0014 725f5344      	clr	21316
  70                     ; 57 }
  73  0018 81            	ret
 179                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 179                     ; 66 {
 180                     .text:	section	.text,new
 181  0000               _TIM4_TimeBaseInit:
 185                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 187                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 189  0000 9e            	ld	a,xh
 190  0001 c75347        	ld	21319,a
 191                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 193  0004 9f            	ld	a,xl
 194  0005 c75348        	ld	21320,a
 195                     ; 73 }
 198  0008 81            	ret
 253                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 253                     ; 82 {
 254                     .text:	section	.text,new
 255  0000               _TIM4_Cmd:
 259                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 261                     ; 87   if (NewState != DISABLE)
 263  0000 4d            	tnz	a
 264  0001 2706          	jreq	L511
 265                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 267  0003 72105340      	bset	21312,#0
 269  0007 2004          	jra	L711
 270  0009               L511:
 271                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 273  0009 72115340      	bres	21312,#0
 274  000d               L711:
 275                     ; 95 }
 278  000d 81            	ret
 336                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 336                     ; 108 {
 337                     .text:	section	.text,new
 338  0000               _TIM4_ITConfig:
 340  0000 89            	pushw	x
 341       00000000      OFST:	set	0
 344                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 346                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 348                     ; 113   if (NewState != DISABLE)
 350  0001 9f            	ld	a,xl
 351  0002 4d            	tnz	a
 352  0003 2709          	jreq	L151
 353                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 355  0005 9e            	ld	a,xh
 356  0006 ca5343        	or	a,21315
 357  0009 c75343        	ld	21315,a
 359  000c 2009          	jra	L351
 360  000e               L151:
 361                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 363  000e 7b01          	ld	a,(OFST+1,sp)
 364  0010 43            	cpl	a
 365  0011 c45343        	and	a,21315
 366  0014 c75343        	ld	21315,a
 367  0017               L351:
 368                     ; 123 }
 371  0017 85            	popw	x
 372  0018 81            	ret
 408                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 408                     ; 132 {
 409                     .text:	section	.text,new
 410  0000               _TIM4_UpdateDisableConfig:
 414                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 416                     ; 137   if (NewState != DISABLE)
 418  0000 4d            	tnz	a
 419  0001 2706          	jreq	L371
 420                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 422  0003 72125340      	bset	21312,#1
 424  0007 2004          	jra	L571
 425  0009               L371:
 426                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 428  0009 72135340      	bres	21312,#1
 429  000d               L571:
 430                     ; 145 }
 433  000d 81            	ret
 491                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 491                     ; 156 {
 492                     .text:	section	.text,new
 493  0000               _TIM4_UpdateRequestConfig:
 497                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 499                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 501  0000 4d            	tnz	a
 502  0001 2706          	jreq	L522
 503                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 505  0003 72145340      	bset	21312,#2
 507  0007 2004          	jra	L722
 508  0009               L522:
 509                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 511  0009 72155340      	bres	21312,#2
 512  000d               L722:
 513                     ; 169 }
 516  000d 81            	ret
 573                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 573                     ; 180 {
 574                     .text:	section	.text,new
 575  0000               _TIM4_SelectOnePulseMode:
 579                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 581                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 583  0000 4d            	tnz	a
 584  0001 2706          	jreq	L752
 585                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 587  0003 72165340      	bset	21312,#3
 589  0007 2004          	jra	L162
 590  0009               L752:
 591                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 593  0009 72175340      	bres	21312,#3
 594  000d               L162:
 595                     ; 193 }
 598  000d 81            	ret
 666                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 666                     ; 216 {
 667                     .text:	section	.text,new
 668  0000               _TIM4_PrescalerConfig:
 672                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 674                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 676                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 678  0000 9e            	ld	a,xh
 679  0001 c75347        	ld	21319,a
 680                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 682  0004 9f            	ld	a,xl
 683  0005 c75345        	ld	21317,a
 684                     ; 226 }
 687  0008 81            	ret
 723                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 723                     ; 235 {
 724                     .text:	section	.text,new
 725  0000               _TIM4_ARRPreloadConfig:
 729                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 731                     ; 240   if (NewState != DISABLE)
 733  0000 4d            	tnz	a
 734  0001 2706          	jreq	L333
 735                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 737  0003 721e5340      	bset	21312,#7
 739  0007 2004          	jra	L533
 740  0009               L333:
 741                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 743  0009 721f5340      	bres	21312,#7
 744  000d               L533:
 745                     ; 248 }
 748  000d 81            	ret
 797                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 797                     ; 258 {
 798                     .text:	section	.text,new
 799  0000               _TIM4_GenerateEvent:
 803                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 805                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
 807  0000 c75345        	ld	21317,a
 808                     ; 264 }
 811  0003 81            	ret
 845                     ; 272 void TIM4_SetCounter(uint8_t Counter)
 845                     ; 273 {
 846                     .text:	section	.text,new
 847  0000               _TIM4_SetCounter:
 851                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
 853  0000 c75346        	ld	21318,a
 854                     ; 276 }
 857  0003 81            	ret
 891                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
 891                     ; 285 {
 892                     .text:	section	.text,new
 893  0000               _TIM4_SetAutoreload:
 897                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
 899  0000 c75348        	ld	21320,a
 900                     ; 288 }
 903  0003 81            	ret
 926                     ; 295 uint8_t TIM4_GetCounter(void)
 926                     ; 296 {
 927                     .text:	section	.text,new
 928  0000               _TIM4_GetCounter:
 932                     ; 298   return (uint8_t)(TIM4->CNTR);
 934  0000 c65346        	ld	a,21318
 937  0003 81            	ret
 961                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
 961                     ; 307 {
 962                     .text:	section	.text,new
 963  0000               _TIM4_GetPrescaler:
 967                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
 969  0000 c65347        	ld	a,21319
 972  0003 81            	ret
1051                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1051                     ; 320 {
1052                     .text:	section	.text,new
1053  0000               _TIM4_GetFlagStatus:
1055  0000 88            	push	a
1056       00000001      OFST:	set	1
1059                     ; 321   FlagStatus bitstatus = RESET;
1061                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1063                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1065  0001 c45344        	and	a,21316
1066  0004 2706          	jreq	L774
1067                     ; 328     bitstatus = SET;
1069  0006 a601          	ld	a,#1
1070  0008 6b01          	ld	(OFST+0,sp),a
1073  000a 2002          	jra	L105
1074  000c               L774:
1075                     ; 332     bitstatus = RESET;
1077  000c 0f01          	clr	(OFST+0,sp)
1079  000e               L105:
1080                     ; 334   return ((FlagStatus)bitstatus);
1082  000e 7b01          	ld	a,(OFST+0,sp)
1085  0010 5b01          	addw	sp,#1
1086  0012 81            	ret
1121                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1121                     ; 345 {
1122                     .text:	section	.text,new
1123  0000               _TIM4_ClearFlag:
1127                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1129                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1131  0000 43            	cpl	a
1132  0001 c75344        	ld	21316,a
1133                     ; 351 }
1136  0004 81            	ret
1200                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1200                     ; 361 {
1201                     .text:	section	.text,new
1202  0000               _TIM4_GetITStatus:
1204  0000 88            	push	a
1205  0001 89            	pushw	x
1206       00000002      OFST:	set	2
1209                     ; 362   ITStatus bitstatus = RESET;
1211                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1215                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1217                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1219  0002 c45344        	and	a,21316
1220  0005 6b01          	ld	(OFST-1,sp),a
1222                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1224  0007 c65343        	ld	a,21315
1225  000a 1403          	and	a,(OFST+1,sp)
1226  000c 6b02          	ld	(OFST+0,sp),a
1228                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1230  000e 0d01          	tnz	(OFST-1,sp)
1231  0010 270a          	jreq	L355
1233  0012 0d02          	tnz	(OFST+0,sp)
1234  0014 2706          	jreq	L355
1235                     ; 375     bitstatus = (ITStatus)SET;
1237  0016 a601          	ld	a,#1
1238  0018 6b02          	ld	(OFST+0,sp),a
1241  001a 2002          	jra	L555
1242  001c               L355:
1243                     ; 379     bitstatus = (ITStatus)RESET;
1245  001c 0f02          	clr	(OFST+0,sp)
1247  001e               L555:
1248                     ; 381   return ((ITStatus)bitstatus);
1250  001e 7b02          	ld	a,(OFST+0,sp)
1253  0020 5b03          	addw	sp,#3
1254  0022 81            	ret
1290                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1290                     ; 392 {
1291                     .text:	section	.text,new
1292  0000               _TIM4_ClearITPendingBit:
1296                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1298                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1300  0000 43            	cpl	a
1301  0001 c75344        	ld	21316,a
1302                     ; 398 }
1305  0004 81            	ret
1318                     	xdef	_TIM4_ClearITPendingBit
1319                     	xdef	_TIM4_GetITStatus
1320                     	xdef	_TIM4_ClearFlag
1321                     	xdef	_TIM4_GetFlagStatus
1322                     	xdef	_TIM4_GetPrescaler
1323                     	xdef	_TIM4_GetCounter
1324                     	xdef	_TIM4_SetAutoreload
1325                     	xdef	_TIM4_SetCounter
1326                     	xdef	_TIM4_GenerateEvent
1327                     	xdef	_TIM4_ARRPreloadConfig
1328                     	xdef	_TIM4_PrescalerConfig
1329                     	xdef	_TIM4_SelectOnePulseMode
1330                     	xdef	_TIM4_UpdateRequestConfig
1331                     	xdef	_TIM4_UpdateDisableConfig
1332                     	xdef	_TIM4_ITConfig
1333                     	xdef	_TIM4_Cmd
1334                     	xdef	_TIM4_TimeBaseInit
1335                     	xdef	_TIM4_DeInit
1354                     	end
