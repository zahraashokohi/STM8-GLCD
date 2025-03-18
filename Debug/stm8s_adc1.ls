   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  45                     ; 52 void ADC1_DeInit(void)
  45                     ; 53 {
  47                     .text:	section	.text,new
  48  0000               _ADC1_DeInit:
  52                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  54  0000 725f5400      	clr	21504
  55                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  57  0004 725f5401      	clr	21505
  58                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  60  0008 725f5402      	clr	21506
  61                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  63  000c 725f5403      	clr	21507
  64                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  66  0010 725f5406      	clr	21510
  67                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  69  0014 725f5407      	clr	21511
  70                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  72  0018 35ff5408      	mov	21512,#255
  73                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  75  001c 35035409      	mov	21513,#3
  76                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  78  0020 725f540a      	clr	21514
  79                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  81  0024 725f540b      	clr	21515
  82                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  84  0028 725f540e      	clr	21518
  85                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  87  002c 725f540f      	clr	21519
  88                     ; 66 }
  91  0030 81            	ret
 542                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 542                     ; 89 {
 543                     .text:	section	.text,new
 544  0000               _ADC1_Init:
 546  0000 89            	pushw	x
 547       00000000      OFST:	set	0
 550                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 552                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 554                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 556                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 558                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 560                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 562                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 564                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 566                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 568  0001 7b08          	ld	a,(OFST+8,sp)
 569  0003 88            	push	a
 570  0004 9f            	ld	a,xl
 571  0005 97            	ld	xl,a
 572  0006 7b02          	ld	a,(OFST+2,sp)
 573  0008 95            	ld	xh,a
 574  0009 cd0000        	call	_ADC1_ConversionConfig
 576  000c 84            	pop	a
 577                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 579  000d 7b05          	ld	a,(OFST+5,sp)
 580  000f cd0000        	call	_ADC1_PrescalerConfig
 582                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 584  0012 7b07          	ld	a,(OFST+7,sp)
 585  0014 97            	ld	xl,a
 586  0015 7b06          	ld	a,(OFST+6,sp)
 587  0017 95            	ld	xh,a
 588  0018 cd0000        	call	_ADC1_ExternalTriggerConfig
 590                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 592  001b 7b0a          	ld	a,(OFST+10,sp)
 593  001d 97            	ld	xl,a
 594  001e 7b09          	ld	a,(OFST+9,sp)
 595  0020 95            	ld	xh,a
 596  0021 cd0000        	call	_ADC1_SchmittTriggerConfig
 598                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 600  0024 72105401      	bset	21505,#0
 601                     ; 119 }
 604  0028 85            	popw	x
 605  0029 81            	ret
 640                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 640                     ; 127 {
 641                     .text:	section	.text,new
 642  0000               _ADC1_Cmd:
 646                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 648                     ; 131   if (NewState != DISABLE)
 650  0000 4d            	tnz	a
 651  0001 2706          	jreq	L362
 652                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 654  0003 72105401      	bset	21505,#0
 656  0007 2004          	jra	L562
 657  0009               L362:
 658                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 660  0009 72115401      	bres	21505,#0
 661  000d               L562:
 662                     ; 139 }
 665  000d 81            	ret
 700                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 700                     ; 147 {
 701                     .text:	section	.text,new
 702  0000               _ADC1_ScanModeCmd:
 706                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 708                     ; 151   if (NewState != DISABLE)
 710  0000 4d            	tnz	a
 711  0001 2706          	jreq	L503
 712                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 714  0003 72125402      	bset	21506,#1
 716  0007 2004          	jra	L703
 717  0009               L503:
 718                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 720  0009 72135402      	bres	21506,#1
 721  000d               L703:
 722                     ; 159 }
 725  000d 81            	ret
 760                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 760                     ; 167 {
 761                     .text:	section	.text,new
 762  0000               _ADC1_DataBufferCmd:
 766                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 768                     ; 171   if (NewState != DISABLE)
 770  0000 4d            	tnz	a
 771  0001 2706          	jreq	L723
 772                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 774  0003 721e5403      	bset	21507,#7
 776  0007 2004          	jra	L133
 777  0009               L723:
 778                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 780  0009 721f5403      	bres	21507,#7
 781  000d               L133:
 782                     ; 179 }
 785  000d 81            	ret
 941                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
 941                     ; 191 {
 942                     .text:	section	.text,new
 943  0000               _ADC1_ITConfig:
 945  0000 89            	pushw	x
 946       00000000      OFST:	set	0
 949                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
 951                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 953                     ; 196   if (NewState != DISABLE)
 955  0001 0d05          	tnz	(OFST+5,sp)
 956  0003 2709          	jreq	L714
 957                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
 959  0005 9f            	ld	a,xl
 960  0006 ca5400        	or	a,21504
 961  0009 c75400        	ld	21504,a
 963  000c 2009          	jra	L124
 964  000e               L714:
 965                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
 967  000e 7b02          	ld	a,(OFST+2,sp)
 968  0010 43            	cpl	a
 969  0011 c45400        	and	a,21504
 970  0014 c75400        	ld	21504,a
 971  0017               L124:
 972                     ; 206 }
 975  0017 85            	popw	x
 976  0018 81            	ret
1012                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1012                     ; 215 {
1013                     .text:	section	.text,new
1014  0000               _ADC1_PrescalerConfig:
1016  0000 88            	push	a
1017       00000000      OFST:	set	0
1020                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1022                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1024  0001 c65401        	ld	a,21505
1025  0004 a48f          	and	a,#143
1026  0006 c75401        	ld	21505,a
1027                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1029  0009 c65401        	ld	a,21505
1030  000c 1a01          	or	a,(OFST+1,sp)
1031  000e c75401        	ld	21505,a
1032                     ; 223 }
1035  0011 84            	pop	a
1036  0012 81            	ret
1083                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1083                     ; 234 {
1084                     .text:	section	.text,new
1085  0000               _ADC1_SchmittTriggerConfig:
1087  0000 89            	pushw	x
1088       00000000      OFST:	set	0
1091                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1093                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1095                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1097  0001 9e            	ld	a,xh
1098  0002 a1ff          	cp	a,#255
1099  0004 2620          	jrne	L364
1100                     ; 241     if (NewState != DISABLE)
1102  0006 9f            	ld	a,xl
1103  0007 4d            	tnz	a
1104  0008 270a          	jreq	L564
1105                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1107  000a 725f5407      	clr	21511
1108                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1110  000e 725f5406      	clr	21510
1112  0012 2078          	jra	L174
1113  0014               L564:
1114                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1116  0014 c65407        	ld	a,21511
1117  0017 aaff          	or	a,#255
1118  0019 c75407        	ld	21511,a
1119                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1121  001c c65406        	ld	a,21510
1122  001f aaff          	or	a,#255
1123  0021 c75406        	ld	21510,a
1124  0024 2066          	jra	L174
1125  0026               L364:
1126                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1128  0026 7b01          	ld	a,(OFST+1,sp)
1129  0028 a108          	cp	a,#8
1130  002a 242f          	jruge	L374
1131                     ; 254     if (NewState != DISABLE)
1133  002c 0d02          	tnz	(OFST+2,sp)
1134  002e 2716          	jreq	L574
1135                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1137  0030 7b01          	ld	a,(OFST+1,sp)
1138  0032 5f            	clrw	x
1139  0033 97            	ld	xl,a
1140  0034 a601          	ld	a,#1
1141  0036 5d            	tnzw	x
1142  0037 2704          	jreq	L42
1143  0039               L62:
1144  0039 48            	sll	a
1145  003a 5a            	decw	x
1146  003b 26fc          	jrne	L62
1147  003d               L42:
1148  003d 43            	cpl	a
1149  003e c45407        	and	a,21511
1150  0041 c75407        	ld	21511,a
1152  0044 2046          	jra	L174
1153  0046               L574:
1154                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1156  0046 7b01          	ld	a,(OFST+1,sp)
1157  0048 5f            	clrw	x
1158  0049 97            	ld	xl,a
1159  004a a601          	ld	a,#1
1160  004c 5d            	tnzw	x
1161  004d 2704          	jreq	L03
1162  004f               L23:
1163  004f 48            	sll	a
1164  0050 5a            	decw	x
1165  0051 26fc          	jrne	L23
1166  0053               L03:
1167  0053 ca5407        	or	a,21511
1168  0056 c75407        	ld	21511,a
1169  0059 2031          	jra	L174
1170  005b               L374:
1171                     ; 265     if (NewState != DISABLE)
1173  005b 0d02          	tnz	(OFST+2,sp)
1174  005d 2718          	jreq	L305
1175                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1177  005f 7b01          	ld	a,(OFST+1,sp)
1178  0061 a008          	sub	a,#8
1179  0063 5f            	clrw	x
1180  0064 97            	ld	xl,a
1181  0065 a601          	ld	a,#1
1182  0067 5d            	tnzw	x
1183  0068 2704          	jreq	L43
1184  006a               L63:
1185  006a 48            	sll	a
1186  006b 5a            	decw	x
1187  006c 26fc          	jrne	L63
1188  006e               L43:
1189  006e 43            	cpl	a
1190  006f c45406        	and	a,21510
1191  0072 c75406        	ld	21510,a
1193  0075 2015          	jra	L174
1194  0077               L305:
1195                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1197  0077 7b01          	ld	a,(OFST+1,sp)
1198  0079 a008          	sub	a,#8
1199  007b 5f            	clrw	x
1200  007c 97            	ld	xl,a
1201  007d a601          	ld	a,#1
1202  007f 5d            	tnzw	x
1203  0080 2704          	jreq	L04
1204  0082               L24:
1205  0082 48            	sll	a
1206  0083 5a            	decw	x
1207  0084 26fc          	jrne	L24
1208  0086               L04:
1209  0086 ca5406        	or	a,21510
1210  0089 c75406        	ld	21510,a
1211  008c               L174:
1212                     ; 274 }
1215  008c 85            	popw	x
1216  008d 81            	ret
1273                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1273                     ; 287 {
1274                     .text:	section	.text,new
1275  0000               _ADC1_ConversionConfig:
1277  0000 89            	pushw	x
1278       00000000      OFST:	set	0
1281                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1283                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1285                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1287                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1289  0001 72175402      	bres	21506,#3
1290                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1292  0005 c65402        	ld	a,21506
1293  0008 1a05          	or	a,(OFST+5,sp)
1294  000a c75402        	ld	21506,a
1295                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1297  000d 9e            	ld	a,xh
1298  000e a101          	cp	a,#1
1299  0010 2606          	jrne	L535
1300                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1302  0012 72125401      	bset	21505,#1
1304  0016 2004          	jra	L735
1305  0018               L535:
1306                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1308  0018 72135401      	bres	21505,#1
1309  001c               L735:
1310                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1312  001c c65400        	ld	a,21504
1313  001f a4f0          	and	a,#240
1314  0021 c75400        	ld	21504,a
1315                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1317  0024 c65400        	ld	a,21504
1318  0027 1a02          	or	a,(OFST+2,sp)
1319  0029 c75400        	ld	21504,a
1320                     ; 313 }
1323  002c 85            	popw	x
1324  002d 81            	ret
1370                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1370                     ; 326 {
1371                     .text:	section	.text,new
1372  0000               _ADC1_ExternalTriggerConfig:
1374  0000 89            	pushw	x
1375       00000000      OFST:	set	0
1378                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1380                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1382                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1384  0001 c65402        	ld	a,21506
1385  0004 a4cf          	and	a,#207
1386  0006 c75402        	ld	21506,a
1387                     ; 334   if (NewState != DISABLE)
1389  0009 9f            	ld	a,xl
1390  000a 4d            	tnz	a
1391  000b 2706          	jreq	L365
1392                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1394  000d 721c5402      	bset	21506,#6
1396  0011 2004          	jra	L565
1397  0013               L365:
1398                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1400  0013 721d5402      	bres	21506,#6
1401  0017               L565:
1402                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1404  0017 c65402        	ld	a,21506
1405  001a 1a01          	or	a,(OFST+1,sp)
1406  001c c75402        	ld	21506,a
1407                     ; 347 }
1410  001f 85            	popw	x
1411  0020 81            	ret
1435                     ; 358 void ADC1_StartConversion(void)
1435                     ; 359 {
1436                     .text:	section	.text,new
1437  0000               _ADC1_StartConversion:
1441                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1443  0000 72105401      	bset	21505,#0
1444                     ; 361 }
1447  0004 81            	ret
1491                     ; 370 uint16_t ADC1_GetConversionValue(void)
1491                     ; 371 {
1492                     .text:	section	.text,new
1493  0000               _ADC1_GetConversionValue:
1495  0000 5205          	subw	sp,#5
1496       00000005      OFST:	set	5
1499                     ; 372   uint16_t temph = 0;
1501                     ; 373   uint8_t templ = 0;
1503                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1505  0002 c65402        	ld	a,21506
1506  0005 a508          	bcp	a,#8
1507  0007 2715          	jreq	L126
1508                     ; 378     templ = ADC1->DRL;
1510  0009 c65405        	ld	a,21509
1511  000c 6b03          	ld	(OFST-2,sp),a
1513                     ; 380     temph = ADC1->DRH;
1515  000e c65404        	ld	a,21508
1516  0011 5f            	clrw	x
1517  0012 97            	ld	xl,a
1518  0013 1f04          	ldw	(OFST-1,sp),x
1520                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1522  0015 1e04          	ldw	x,(OFST-1,sp)
1523  0017 7b03          	ld	a,(OFST-2,sp)
1524  0019 02            	rlwa	x,a
1525  001a 1f04          	ldw	(OFST-1,sp),x
1528  001c 2021          	jra	L326
1529  001e               L126:
1530                     ; 387     temph = ADC1->DRH;
1532  001e c65404        	ld	a,21508
1533  0021 5f            	clrw	x
1534  0022 97            	ld	xl,a
1535  0023 1f04          	ldw	(OFST-1,sp),x
1537                     ; 389     templ = ADC1->DRL;
1539  0025 c65405        	ld	a,21509
1540  0028 6b03          	ld	(OFST-2,sp),a
1542                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1544  002a 1e04          	ldw	x,(OFST-1,sp)
1545  002c 4f            	clr	a
1546  002d 02            	rlwa	x,a
1547  002e 1f01          	ldw	(OFST-4,sp),x
1549  0030 7b03          	ld	a,(OFST-2,sp)
1550  0032 97            	ld	xl,a
1551  0033 a640          	ld	a,#64
1552  0035 42            	mul	x,a
1553  0036 01            	rrwa	x,a
1554  0037 1a02          	or	a,(OFST-3,sp)
1555  0039 01            	rrwa	x,a
1556  003a 1a01          	or	a,(OFST-4,sp)
1557  003c 01            	rrwa	x,a
1558  003d 1f04          	ldw	(OFST-1,sp),x
1560  003f               L326:
1561                     ; 394   return ((uint16_t)temph);
1563  003f 1e04          	ldw	x,(OFST-1,sp)
1566  0041 5b05          	addw	sp,#5
1567  0043 81            	ret
1613                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1613                     ; 406 {
1614                     .text:	section	.text,new
1615  0000               _ADC1_AWDChannelConfig:
1617  0000 89            	pushw	x
1618       00000000      OFST:	set	0
1621                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1623                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1625                     ; 411   if (Channel < (uint8_t)8)
1627  0001 9e            	ld	a,xh
1628  0002 a108          	cp	a,#8
1629  0004 242e          	jruge	L746
1630                     ; 413     if (NewState != DISABLE)
1632  0006 9f            	ld	a,xl
1633  0007 4d            	tnz	a
1634  0008 2714          	jreq	L156
1635                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1637  000a 9e            	ld	a,xh
1638  000b 5f            	clrw	x
1639  000c 97            	ld	xl,a
1640  000d a601          	ld	a,#1
1641  000f 5d            	tnzw	x
1642  0010 2704          	jreq	L65
1643  0012               L06:
1644  0012 48            	sll	a
1645  0013 5a            	decw	x
1646  0014 26fc          	jrne	L06
1647  0016               L65:
1648  0016 ca540f        	or	a,21519
1649  0019 c7540f        	ld	21519,a
1651  001c 2047          	jra	L556
1652  001e               L156:
1653                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
1655  001e 7b01          	ld	a,(OFST+1,sp)
1656  0020 5f            	clrw	x
1657  0021 97            	ld	xl,a
1658  0022 a601          	ld	a,#1
1659  0024 5d            	tnzw	x
1660  0025 2704          	jreq	L26
1661  0027               L46:
1662  0027 48            	sll	a
1663  0028 5a            	decw	x
1664  0029 26fc          	jrne	L46
1665  002b               L26:
1666  002b 43            	cpl	a
1667  002c c4540f        	and	a,21519
1668  002f c7540f        	ld	21519,a
1669  0032 2031          	jra	L556
1670  0034               L746:
1671                     ; 424     if (NewState != DISABLE)
1673  0034 0d02          	tnz	(OFST+2,sp)
1674  0036 2717          	jreq	L756
1675                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
1677  0038 7b01          	ld	a,(OFST+1,sp)
1678  003a a008          	sub	a,#8
1679  003c 5f            	clrw	x
1680  003d 97            	ld	xl,a
1681  003e a601          	ld	a,#1
1682  0040 5d            	tnzw	x
1683  0041 2704          	jreq	L66
1684  0043               L07:
1685  0043 48            	sll	a
1686  0044 5a            	decw	x
1687  0045 26fc          	jrne	L07
1688  0047               L66:
1689  0047 ca540e        	or	a,21518
1690  004a c7540e        	ld	21518,a
1692  004d 2016          	jra	L556
1693  004f               L756:
1694                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
1696  004f 7b01          	ld	a,(OFST+1,sp)
1697  0051 a008          	sub	a,#8
1698  0053 5f            	clrw	x
1699  0054 97            	ld	xl,a
1700  0055 a601          	ld	a,#1
1701  0057 5d            	tnzw	x
1702  0058 2704          	jreq	L27
1703  005a               L47:
1704  005a 48            	sll	a
1705  005b 5a            	decw	x
1706  005c 26fc          	jrne	L47
1707  005e               L27:
1708  005e 43            	cpl	a
1709  005f c4540e        	and	a,21518
1710  0062 c7540e        	ld	21518,a
1711  0065               L556:
1712                     ; 433 }
1715  0065 85            	popw	x
1716  0066 81            	ret
1751                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
1751                     ; 442 {
1752                     .text:	section	.text,new
1753  0000               _ADC1_SetHighThreshold:
1755  0000 89            	pushw	x
1756       00000000      OFST:	set	0
1759                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
1761  0001 54            	srlw	x
1762  0002 54            	srlw	x
1763  0003 9f            	ld	a,xl
1764  0004 c75408        	ld	21512,a
1765                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
1767  0007 7b02          	ld	a,(OFST+2,sp)
1768  0009 c75409        	ld	21513,a
1769                     ; 445 }
1772  000c 85            	popw	x
1773  000d 81            	ret
1808                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
1808                     ; 454 {
1809                     .text:	section	.text,new
1810  0000               _ADC1_SetLowThreshold:
1814                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
1816  0000 9f            	ld	a,xl
1817  0001 c7540b        	ld	21515,a
1818                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
1820  0004 54            	srlw	x
1821  0005 54            	srlw	x
1822  0006 9f            	ld	a,xl
1823  0007 c7540a        	ld	21514,a
1824                     ; 457 }
1827  000a 81            	ret
1880                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
1880                     ; 467 {
1881                     .text:	section	.text,new
1882  0000               _ADC1_GetBufferValue:
1884  0000 88            	push	a
1885  0001 5205          	subw	sp,#5
1886       00000005      OFST:	set	5
1889                     ; 468   uint16_t temph = 0;
1891                     ; 469   uint8_t templ = 0;
1893                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
1895                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1897  0003 c65402        	ld	a,21506
1898  0006 a508          	bcp	a,#8
1899  0008 271f          	jreq	L547
1900                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1902  000a 7b06          	ld	a,(OFST+1,sp)
1903  000c 48            	sll	a
1904  000d 5f            	clrw	x
1905  000e 97            	ld	xl,a
1906  000f d653e1        	ld	a,(21473,x)
1907  0012 6b03          	ld	(OFST-2,sp),a
1909                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1911  0014 7b06          	ld	a,(OFST+1,sp)
1912  0016 48            	sll	a
1913  0017 5f            	clrw	x
1914  0018 97            	ld	xl,a
1915  0019 d653e0        	ld	a,(21472,x)
1916  001c 5f            	clrw	x
1917  001d 97            	ld	xl,a
1918  001e 1f04          	ldw	(OFST-1,sp),x
1920                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1922  0020 1e04          	ldw	x,(OFST-1,sp)
1923  0022 7b03          	ld	a,(OFST-2,sp)
1924  0024 02            	rlwa	x,a
1925  0025 1f04          	ldw	(OFST-1,sp),x
1928  0027 202b          	jra	L747
1929  0029               L547:
1930                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
1932  0029 7b06          	ld	a,(OFST+1,sp)
1933  002b 48            	sll	a
1934  002c 5f            	clrw	x
1935  002d 97            	ld	xl,a
1936  002e d653e0        	ld	a,(21472,x)
1937  0031 5f            	clrw	x
1938  0032 97            	ld	xl,a
1939  0033 1f04          	ldw	(OFST-1,sp),x
1941                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
1943  0035 7b06          	ld	a,(OFST+1,sp)
1944  0037 48            	sll	a
1945  0038 5f            	clrw	x
1946  0039 97            	ld	xl,a
1947  003a d653e1        	ld	a,(21473,x)
1948  003d 6b03          	ld	(OFST-2,sp),a
1950                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
1952  003f 1e04          	ldw	x,(OFST-1,sp)
1953  0041 4f            	clr	a
1954  0042 02            	rlwa	x,a
1955  0043 1f01          	ldw	(OFST-4,sp),x
1957  0045 7b03          	ld	a,(OFST-2,sp)
1958  0047 97            	ld	xl,a
1959  0048 a640          	ld	a,#64
1960  004a 42            	mul	x,a
1961  004b 01            	rrwa	x,a
1962  004c 1a02          	or	a,(OFST-3,sp)
1963  004e 01            	rrwa	x,a
1964  004f 1a01          	or	a,(OFST-4,sp)
1965  0051 01            	rrwa	x,a
1966  0052 1f04          	ldw	(OFST-1,sp),x
1968  0054               L747:
1969                     ; 493   return ((uint16_t)temph);
1971  0054 1e04          	ldw	x,(OFST-1,sp)
1974  0056 5b06          	addw	sp,#6
1975  0058 81            	ret
2041                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2041                     ; 503 {
2042                     .text:	section	.text,new
2043  0000               _ADC1_GetAWDChannelStatus:
2045  0000 88            	push	a
2046  0001 88            	push	a
2047       00000001      OFST:	set	1
2050                     ; 504   uint8_t status = 0;
2052                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2054                     ; 509   if (Channel < (uint8_t)8)
2056  0002 a108          	cp	a,#8
2057  0004 2412          	jruge	L3001
2058                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2060  0006 5f            	clrw	x
2061  0007 97            	ld	xl,a
2062  0008 a601          	ld	a,#1
2063  000a 5d            	tnzw	x
2064  000b 2704          	jreq	L601
2065  000d               L011:
2066  000d 48            	sll	a
2067  000e 5a            	decw	x
2068  000f 26fc          	jrne	L011
2069  0011               L601:
2070  0011 c4540d        	and	a,21517
2071  0014 6b01          	ld	(OFST+0,sp),a
2074  0016 2014          	jra	L5001
2075  0018               L3001:
2076                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2078  0018 7b02          	ld	a,(OFST+1,sp)
2079  001a a008          	sub	a,#8
2080  001c 5f            	clrw	x
2081  001d 97            	ld	xl,a
2082  001e a601          	ld	a,#1
2083  0020 5d            	tnzw	x
2084  0021 2704          	jreq	L211
2085  0023               L411:
2086  0023 48            	sll	a
2087  0024 5a            	decw	x
2088  0025 26fc          	jrne	L411
2089  0027               L211:
2090  0027 c4540c        	and	a,21516
2091  002a 6b01          	ld	(OFST+0,sp),a
2093  002c               L5001:
2094                     ; 518   return ((FlagStatus)status);
2096  002c 7b01          	ld	a,(OFST+0,sp)
2099  002e 85            	popw	x
2100  002f 81            	ret
2258                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2258                     ; 528 {
2259                     .text:	section	.text,new
2260  0000               _ADC1_GetFlagStatus:
2262  0000 88            	push	a
2263  0001 88            	push	a
2264       00000001      OFST:	set	1
2267                     ; 529   uint8_t flagstatus = 0;
2269                     ; 530   uint8_t temp = 0;
2271                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2273                     ; 535   if ((Flag & 0x0F) == 0x01)
2275  0002 a40f          	and	a,#15
2276  0004 a101          	cp	a,#1
2277  0006 2609          	jrne	L5701
2278                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2280  0008 c65403        	ld	a,21507
2281  000b a440          	and	a,#64
2282  000d 6b01          	ld	(OFST+0,sp),a
2285  000f 2045          	jra	L7701
2286  0011               L5701:
2287                     ; 540   else if ((Flag & 0xF0) == 0x10)
2289  0011 7b02          	ld	a,(OFST+1,sp)
2290  0013 a4f0          	and	a,#240
2291  0015 a110          	cp	a,#16
2292  0017 2636          	jrne	L1011
2293                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2295  0019 7b02          	ld	a,(OFST+1,sp)
2296  001b a40f          	and	a,#15
2297  001d 6b01          	ld	(OFST+0,sp),a
2299                     ; 544     if (temp < 8)
2301  001f 7b01          	ld	a,(OFST+0,sp)
2302  0021 a108          	cp	a,#8
2303  0023 2414          	jruge	L3011
2304                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2306  0025 7b01          	ld	a,(OFST+0,sp)
2307  0027 5f            	clrw	x
2308  0028 97            	ld	xl,a
2309  0029 a601          	ld	a,#1
2310  002b 5d            	tnzw	x
2311  002c 2704          	jreq	L021
2312  002e               L221:
2313  002e 48            	sll	a
2314  002f 5a            	decw	x
2315  0030 26fc          	jrne	L221
2316  0032               L021:
2317  0032 c4540d        	and	a,21517
2318  0035 6b01          	ld	(OFST+0,sp),a
2321  0037 201d          	jra	L7701
2322  0039               L3011:
2323                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2325  0039 7b01          	ld	a,(OFST+0,sp)
2326  003b a008          	sub	a,#8
2327  003d 5f            	clrw	x
2328  003e 97            	ld	xl,a
2329  003f a601          	ld	a,#1
2330  0041 5d            	tnzw	x
2331  0042 2704          	jreq	L421
2332  0044               L621:
2333  0044 48            	sll	a
2334  0045 5a            	decw	x
2335  0046 26fc          	jrne	L621
2336  0048               L421:
2337  0048 c4540c        	and	a,21516
2338  004b 6b01          	ld	(OFST+0,sp),a
2340  004d 2007          	jra	L7701
2341  004f               L1011:
2342                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
2344  004f c65400        	ld	a,21504
2345  0052 1402          	and	a,(OFST+1,sp)
2346  0054 6b01          	ld	(OFST+0,sp),a
2348  0056               L7701:
2349                     ; 557   return ((FlagStatus)flagstatus);
2351  0056 7b01          	ld	a,(OFST+0,sp)
2354  0058 85            	popw	x
2355  0059 81            	ret
2399                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2399                     ; 568 {
2400                     .text:	section	.text,new
2401  0000               _ADC1_ClearFlag:
2403  0000 88            	push	a
2404  0001 88            	push	a
2405       00000001      OFST:	set	1
2408                     ; 569   uint8_t temp = 0;
2410                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
2412                     ; 574   if ((Flag & 0x0F) == 0x01)
2414  0002 a40f          	and	a,#15
2415  0004 a101          	cp	a,#1
2416  0006 2606          	jrne	L3311
2417                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2419  0008 721d5403      	bres	21507,#6
2421  000c 204b          	jra	L5311
2422  000e               L3311:
2423                     ; 579   else if ((Flag & 0xF0) == 0x10)
2425  000e 7b02          	ld	a,(OFST+1,sp)
2426  0010 a4f0          	and	a,#240
2427  0012 a110          	cp	a,#16
2428  0014 263a          	jrne	L7311
2429                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2431  0016 7b02          	ld	a,(OFST+1,sp)
2432  0018 a40f          	and	a,#15
2433  001a 6b01          	ld	(OFST+0,sp),a
2435                     ; 583     if (temp < 8)
2437  001c 7b01          	ld	a,(OFST+0,sp)
2438  001e a108          	cp	a,#8
2439  0020 2416          	jruge	L1411
2440                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2442  0022 7b01          	ld	a,(OFST+0,sp)
2443  0024 5f            	clrw	x
2444  0025 97            	ld	xl,a
2445  0026 a601          	ld	a,#1
2446  0028 5d            	tnzw	x
2447  0029 2704          	jreq	L231
2448  002b               L431:
2449  002b 48            	sll	a
2450  002c 5a            	decw	x
2451  002d 26fc          	jrne	L431
2452  002f               L231:
2453  002f 43            	cpl	a
2454  0030 c4540d        	and	a,21517
2455  0033 c7540d        	ld	21517,a
2457  0036 2021          	jra	L5311
2458  0038               L1411:
2459                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2461  0038 7b01          	ld	a,(OFST+0,sp)
2462  003a a008          	sub	a,#8
2463  003c 5f            	clrw	x
2464  003d 97            	ld	xl,a
2465  003e a601          	ld	a,#1
2466  0040 5d            	tnzw	x
2467  0041 2704          	jreq	L631
2468  0043               L041:
2469  0043 48            	sll	a
2470  0044 5a            	decw	x
2471  0045 26fc          	jrne	L041
2472  0047               L631:
2473  0047 43            	cpl	a
2474  0048 c4540c        	and	a,21516
2475  004b c7540c        	ld	21516,a
2476  004e 2009          	jra	L5311
2477  0050               L7311:
2478                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
2480  0050 7b02          	ld	a,(OFST+1,sp)
2481  0052 43            	cpl	a
2482  0053 c45400        	and	a,21504
2483  0056 c75400        	ld	21504,a
2484  0059               L5311:
2485                     ; 596 }
2488  0059 85            	popw	x
2489  005a 81            	ret
2544                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2544                     ; 617 {
2545                     .text:	section	.text,new
2546  0000               _ADC1_GetITStatus:
2548  0000 89            	pushw	x
2549  0001 88            	push	a
2550       00000001      OFST:	set	1
2553                     ; 618   ITStatus itstatus = RESET;
2555                     ; 619   uint8_t temp = 0;
2557                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2559                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
2561  0002 01            	rrwa	x,a
2562  0003 a4f0          	and	a,#240
2563  0005 5f            	clrw	x
2564  0006 02            	rlwa	x,a
2565  0007 a30010        	cpw	x,#16
2566  000a 2636          	jrne	L5711
2567                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
2569  000c 7b03          	ld	a,(OFST+2,sp)
2570  000e a40f          	and	a,#15
2571  0010 6b01          	ld	(OFST+0,sp),a
2573                     ; 628     if (temp < 8)
2575  0012 7b01          	ld	a,(OFST+0,sp)
2576  0014 a108          	cp	a,#8
2577  0016 2414          	jruge	L7711
2578                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2580  0018 7b01          	ld	a,(OFST+0,sp)
2581  001a 5f            	clrw	x
2582  001b 97            	ld	xl,a
2583  001c a601          	ld	a,#1
2584  001e 5d            	tnzw	x
2585  001f 2704          	jreq	L441
2586  0021               L641:
2587  0021 48            	sll	a
2588  0022 5a            	decw	x
2589  0023 26fc          	jrne	L641
2590  0025               L441:
2591  0025 c4540d        	and	a,21517
2592  0028 6b01          	ld	(OFST+0,sp),a
2595  002a 201d          	jra	L3021
2596  002c               L7711:
2597                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2599  002c 7b01          	ld	a,(OFST+0,sp)
2600  002e a008          	sub	a,#8
2601  0030 5f            	clrw	x
2602  0031 97            	ld	xl,a
2603  0032 a601          	ld	a,#1
2604  0034 5d            	tnzw	x
2605  0035 2704          	jreq	L051
2606  0037               L251:
2607  0037 48            	sll	a
2608  0038 5a            	decw	x
2609  0039 26fc          	jrne	L251
2610  003b               L051:
2611  003b c4540c        	and	a,21516
2612  003e 6b01          	ld	(OFST+0,sp),a
2614  0040 2007          	jra	L3021
2615  0042               L5711:
2616                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
2618  0042 c65400        	ld	a,21504
2619  0045 1403          	and	a,(OFST+2,sp)
2620  0047 6b01          	ld	(OFST+0,sp),a
2622  0049               L3021:
2623                     ; 641   return ((ITStatus)itstatus);
2625  0049 7b01          	ld	a,(OFST+0,sp)
2628  004b 5b03          	addw	sp,#3
2629  004d 81            	ret
2674                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
2674                     ; 663 {
2675                     .text:	section	.text,new
2676  0000               _ADC1_ClearITPendingBit:
2678  0000 89            	pushw	x
2679  0001 88            	push	a
2680       00000001      OFST:	set	1
2683                     ; 664   uint8_t temp = 0;
2685                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2687                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
2689  0002 01            	rrwa	x,a
2690  0003 a4f0          	and	a,#240
2691  0005 5f            	clrw	x
2692  0006 02            	rlwa	x,a
2693  0007 a30010        	cpw	x,#16
2694  000a 263a          	jrne	L7221
2695                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
2697  000c 7b03          	ld	a,(OFST+2,sp)
2698  000e a40f          	and	a,#15
2699  0010 6b01          	ld	(OFST+0,sp),a
2701                     ; 673     if (temp < 8)
2703  0012 7b01          	ld	a,(OFST+0,sp)
2704  0014 a108          	cp	a,#8
2705  0016 2416          	jruge	L1321
2706                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2708  0018 7b01          	ld	a,(OFST+0,sp)
2709  001a 5f            	clrw	x
2710  001b 97            	ld	xl,a
2711  001c a601          	ld	a,#1
2712  001e 5d            	tnzw	x
2713  001f 2704          	jreq	L651
2714  0021               L061:
2715  0021 48            	sll	a
2716  0022 5a            	decw	x
2717  0023 26fc          	jrne	L061
2718  0025               L651:
2719  0025 43            	cpl	a
2720  0026 c4540d        	and	a,21517
2721  0029 c7540d        	ld	21517,a
2723  002c 2021          	jra	L5321
2724  002e               L1321:
2725                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2727  002e 7b01          	ld	a,(OFST+0,sp)
2728  0030 a008          	sub	a,#8
2729  0032 5f            	clrw	x
2730  0033 97            	ld	xl,a
2731  0034 a601          	ld	a,#1
2732  0036 5d            	tnzw	x
2733  0037 2704          	jreq	L261
2734  0039               L461:
2735  0039 48            	sll	a
2736  003a 5a            	decw	x
2737  003b 26fc          	jrne	L461
2738  003d               L261:
2739  003d 43            	cpl	a
2740  003e c4540c        	and	a,21516
2741  0041 c7540c        	ld	21516,a
2742  0044 2009          	jra	L5321
2743  0046               L7221:
2744                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
2746  0046 7b03          	ld	a,(OFST+2,sp)
2747  0048 43            	cpl	a
2748  0049 c45400        	and	a,21504
2749  004c c75400        	ld	21504,a
2750  004f               L5321:
2751                     ; 686 }
2754  004f 5b03          	addw	sp,#3
2755  0051 81            	ret
2768                     	xdef	_ADC1_ClearITPendingBit
2769                     	xdef	_ADC1_GetITStatus
2770                     	xdef	_ADC1_ClearFlag
2771                     	xdef	_ADC1_GetFlagStatus
2772                     	xdef	_ADC1_GetAWDChannelStatus
2773                     	xdef	_ADC1_GetBufferValue
2774                     	xdef	_ADC1_SetLowThreshold
2775                     	xdef	_ADC1_SetHighThreshold
2776                     	xdef	_ADC1_GetConversionValue
2777                     	xdef	_ADC1_StartConversion
2778                     	xdef	_ADC1_AWDChannelConfig
2779                     	xdef	_ADC1_ExternalTriggerConfig
2780                     	xdef	_ADC1_ConversionConfig
2781                     	xdef	_ADC1_SchmittTriggerConfig
2782                     	xdef	_ADC1_PrescalerConfig
2783                     	xdef	_ADC1_ITConfig
2784                     	xdef	_ADC1_DataBufferCmd
2785                     	xdef	_ADC1_ScanModeCmd
2786                     	xdef	_ADC1_Cmd
2787                     	xdef	_ADC1_Init
2788                     	xdef	_ADC1_DeInit
2807                     	end
