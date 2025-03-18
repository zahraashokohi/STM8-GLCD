   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  45                     ; 50 void SPI_DeInit(void)
  45                     ; 51 {
  47                     .text:	section	.text,new
  48  0000               _SPI_DeInit:
  52                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  54  0000 725f5200      	clr	20992
  55                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  57  0004 725f5201      	clr	20993
  58                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  60  0008 725f5202      	clr	20994
  61                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  63  000c 35025203      	mov	20995,#2
  64                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  66  0010 35075205      	mov	20997,#7
  67                     ; 57 }
  70  0014 81            	ret
 386                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 386                     ; 79 {
 387                     .text:	section	.text,new
 388  0000               _SPI_Init:
 390  0000 89            	pushw	x
 391  0001 88            	push	a
 392       00000001      OFST:	set	1
 395                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 397                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 399                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 401                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 403                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 405                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 407                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 409                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 411                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 411                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 413  0002 7b07          	ld	a,(OFST+6,sp)
 414  0004 1a08          	or	a,(OFST+7,sp)
 415  0006 6b01          	ld	(OFST+0,sp),a
 417  0008 9f            	ld	a,xl
 418  0009 1a02          	or	a,(OFST+1,sp)
 419  000b 1a01          	or	a,(OFST+0,sp)
 420  000d c75200        	ld	20992,a
 421                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 423  0010 7b09          	ld	a,(OFST+8,sp)
 424  0012 1a0a          	or	a,(OFST+9,sp)
 425  0014 c75201        	ld	20993,a
 426                     ; 97   if (Mode == SPI_MODE_MASTER)
 428  0017 7b06          	ld	a,(OFST+5,sp)
 429  0019 a104          	cp	a,#4
 430  001b 2606          	jrne	L302
 431                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 433  001d 72105201      	bset	20993,#0
 435  0021 2004          	jra	L502
 436  0023               L302:
 437                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 439  0023 72115201      	bres	20993,#0
 440  0027               L502:
 441                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 443  0027 c65200        	ld	a,20992
 444  002a 1a06          	or	a,(OFST+5,sp)
 445  002c c75200        	ld	20992,a
 446                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 448  002f 7b0b          	ld	a,(OFST+10,sp)
 449  0031 c75205        	ld	20997,a
 450                     ; 111 }
 453  0034 5b03          	addw	sp,#3
 454  0036 81            	ret
 509                     ; 119 void SPI_Cmd(FunctionalState NewState)
 509                     ; 120 {
 510                     .text:	section	.text,new
 511  0000               _SPI_Cmd:
 515                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 517                     ; 124   if (NewState != DISABLE)
 519  0000 4d            	tnz	a
 520  0001 2706          	jreq	L532
 521                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 523  0003 721c5200      	bset	20992,#6
 525  0007 2004          	jra	L732
 526  0009               L532:
 527                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 529  0009 721d5200      	bres	20992,#6
 530  000d               L732:
 531                     ; 132 }
 534  000d 81            	ret
 643                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 643                     ; 142 {
 644                     .text:	section	.text,new
 645  0000               _SPI_ITConfig:
 647  0000 89            	pushw	x
 648  0001 88            	push	a
 649       00000001      OFST:	set	1
 652                     ; 143   uint8_t itpos = 0;
 654                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 656                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 658                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 660  0002 9e            	ld	a,xh
 661  0003 a40f          	and	a,#15
 662  0005 5f            	clrw	x
 663  0006 97            	ld	xl,a
 664  0007 a601          	ld	a,#1
 665  0009 5d            	tnzw	x
 666  000a 2704          	jreq	L41
 667  000c               L61:
 668  000c 48            	sll	a
 669  000d 5a            	decw	x
 670  000e 26fc          	jrne	L61
 671  0010               L41:
 672  0010 6b01          	ld	(OFST+0,sp),a
 674                     ; 151   if (NewState != DISABLE)
 676  0012 0d03          	tnz	(OFST+2,sp)
 677  0014 270a          	jreq	L113
 678                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 680  0016 c65202        	ld	a,20994
 681  0019 1a01          	or	a,(OFST+0,sp)
 682  001b c75202        	ld	20994,a
 684  001e 2009          	jra	L313
 685  0020               L113:
 686                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 688  0020 7b01          	ld	a,(OFST+0,sp)
 689  0022 43            	cpl	a
 690  0023 c45202        	and	a,20994
 691  0026 c75202        	ld	20994,a
 692  0029               L313:
 693                     ; 159 }
 696  0029 5b03          	addw	sp,#3
 697  002b 81            	ret
 731                     ; 166 void SPI_SendData(uint8_t Data)
 731                     ; 167 {
 732                     .text:	section	.text,new
 733  0000               _SPI_SendData:
 737                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 739  0000 c75204        	ld	20996,a
 740                     ; 169 }
 743  0003 81            	ret
 766                     ; 176 uint8_t SPI_ReceiveData(void)
 766                     ; 177 {
 767                     .text:	section	.text,new
 768  0000               _SPI_ReceiveData:
 772                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 774  0000 c65204        	ld	a,20996
 777  0003 81            	ret
 813                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 813                     ; 188 {
 814                     .text:	section	.text,new
 815  0000               _SPI_NSSInternalSoftwareCmd:
 819                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 821                     ; 192   if (NewState != DISABLE)
 823  0000 4d            	tnz	a
 824  0001 2706          	jreq	L163
 825                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 827  0003 72105201      	bset	20993,#0
 829  0007 2004          	jra	L363
 830  0009               L163:
 831                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 833  0009 72115201      	bres	20993,#0
 834  000d               L363:
 835                     ; 200 }
 838  000d 81            	ret
 861                     ; 207 void SPI_TransmitCRC(void)
 861                     ; 208 {
 862                     .text:	section	.text,new
 863  0000               _SPI_TransmitCRC:
 867                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
 869  0000 72185201      	bset	20993,#4
 870                     ; 210 }
 873  0004 81            	ret
 909                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
 909                     ; 219 {
 910                     .text:	section	.text,new
 911  0000               _SPI_CalculateCRCCmd:
 915                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 917                     ; 223   if (NewState != DISABLE)
 919  0000 4d            	tnz	a
 920  0001 2706          	jreq	L314
 921                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
 923  0003 721a5201      	bset	20993,#5
 925  0007 2004          	jra	L514
 926  0009               L314:
 927                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
 929  0009 721b5201      	bres	20993,#5
 930  000d               L514:
 931                     ; 231 }
 934  000d 81            	ret
 998                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
 998                     ; 239 {
 999                     .text:	section	.text,new
1000  0000               _SPI_GetCRC:
1002  0000 88            	push	a
1003       00000001      OFST:	set	1
1006                     ; 240   uint8_t crcreg = 0;
1008                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1010                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1012  0001 4d            	tnz	a
1013  0002 2707          	jreq	L154
1014                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1016  0004 c65207        	ld	a,20999
1017  0007 6b01          	ld	(OFST+0,sp),a
1020  0009 2005          	jra	L354
1021  000b               L154:
1022                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1024  000b c65206        	ld	a,20998
1025  000e 6b01          	ld	(OFST+0,sp),a
1027  0010               L354:
1028                     ; 255   return crcreg;
1030  0010 7b01          	ld	a,(OFST+0,sp)
1033  0012 5b01          	addw	sp,#1
1034  0014 81            	ret
1059                     ; 263 void SPI_ResetCRC(void)
1059                     ; 264 {
1060                     .text:	section	.text,new
1061  0000               _SPI_ResetCRC:
1065                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1067  0000 a601          	ld	a,#1
1068  0002 cd0000        	call	_SPI_CalculateCRCCmd
1070                     ; 270   SPI_Cmd(ENABLE);
1072  0005 a601          	ld	a,#1
1073  0007 cd0000        	call	_SPI_Cmd
1075                     ; 271 }
1078  000a 81            	ret
1102                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1102                     ; 279 {
1103                     .text:	section	.text,new
1104  0000               _SPI_GetCRCPolynomial:
1108                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1110  0000 c65205        	ld	a,20997
1113  0003 81            	ret
1169                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1169                     ; 289 {
1170                     .text:	section	.text,new
1171  0000               _SPI_BiDirectionalLineConfig:
1175                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1177                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1179  0000 4d            	tnz	a
1180  0001 2706          	jreq	L325
1181                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1183  0003 721c5201      	bset	20993,#6
1185  0007 2004          	jra	L525
1186  0009               L325:
1187                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1189  0009 721d5201      	bres	20993,#6
1190  000d               L525:
1191                     ; 301 }
1194  000d 81            	ret
1315                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1315                     ; 312 {
1316                     .text:	section	.text,new
1317  0000               _SPI_GetFlagStatus:
1319  0000 88            	push	a
1320       00000001      OFST:	set	1
1323                     ; 313   FlagStatus status = RESET;
1325                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1327                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1329  0001 c45203        	and	a,20995
1330  0004 2706          	jreq	L306
1331                     ; 320     status = SET; /* SPI_FLAG is set */
1333  0006 a601          	ld	a,#1
1334  0008 6b01          	ld	(OFST+0,sp),a
1337  000a 2002          	jra	L506
1338  000c               L306:
1339                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1341  000c 0f01          	clr	(OFST+0,sp)
1343  000e               L506:
1344                     ; 328   return status;
1346  000e 7b01          	ld	a,(OFST+0,sp)
1349  0010 5b01          	addw	sp,#1
1350  0012 81            	ret
1385                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1385                     ; 347 {
1386                     .text:	section	.text,new
1387  0000               _SPI_ClearFlag:
1391                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1393                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1395  0000 43            	cpl	a
1396  0001 c75203        	ld	20995,a
1397                     ; 351 }
1400  0004 81            	ret
1482                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1482                     ; 367 {
1483                     .text:	section	.text,new
1484  0000               _SPI_GetITStatus:
1486  0000 88            	push	a
1487  0001 89            	pushw	x
1488       00000002      OFST:	set	2
1491                     ; 368   ITStatus pendingbitstatus = RESET;
1493                     ; 369   uint8_t itpos = 0;
1495                     ; 370   uint8_t itmask1 = 0;
1497                     ; 371   uint8_t itmask2 = 0;
1499                     ; 372   uint8_t enablestatus = 0;
1501                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1503                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1505  0002 a40f          	and	a,#15
1506  0004 5f            	clrw	x
1507  0005 97            	ld	xl,a
1508  0006 a601          	ld	a,#1
1509  0008 5d            	tnzw	x
1510  0009 2704          	jreq	L05
1511  000b               L25:
1512  000b 48            	sll	a
1513  000c 5a            	decw	x
1514  000d 26fc          	jrne	L25
1515  000f               L05:
1516  000f 6b01          	ld	(OFST-1,sp),a
1518                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1520  0011 7b03          	ld	a,(OFST+1,sp)
1521  0013 4e            	swap	a
1522  0014 a40f          	and	a,#15
1523  0016 6b02          	ld	(OFST+0,sp),a
1525                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1527  0018 7b02          	ld	a,(OFST+0,sp)
1528  001a 5f            	clrw	x
1529  001b 97            	ld	xl,a
1530  001c a601          	ld	a,#1
1531  001e 5d            	tnzw	x
1532  001f 2704          	jreq	L45
1533  0021               L65:
1534  0021 48            	sll	a
1535  0022 5a            	decw	x
1536  0023 26fc          	jrne	L65
1537  0025               L45:
1538  0025 6b02          	ld	(OFST+0,sp),a
1540                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1542  0027 c65203        	ld	a,20995
1543  002a 1402          	and	a,(OFST+0,sp)
1544  002c 6b02          	ld	(OFST+0,sp),a
1546                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1548  002e c65202        	ld	a,20994
1549  0031 1501          	bcp	a,(OFST-1,sp)
1550  0033 270a          	jreq	L766
1552  0035 0d02          	tnz	(OFST+0,sp)
1553  0037 2706          	jreq	L766
1554                     ; 387     pendingbitstatus = SET;
1556  0039 a601          	ld	a,#1
1557  003b 6b02          	ld	(OFST+0,sp),a
1560  003d 2002          	jra	L176
1561  003f               L766:
1562                     ; 392     pendingbitstatus = RESET;
1564  003f 0f02          	clr	(OFST+0,sp)
1566  0041               L176:
1567                     ; 395   return  pendingbitstatus;
1569  0041 7b02          	ld	a,(OFST+0,sp)
1572  0043 5b03          	addw	sp,#3
1573  0045 81            	ret
1618                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1618                     ; 413 {
1619                     .text:	section	.text,new
1620  0000               _SPI_ClearITPendingBit:
1622  0000 88            	push	a
1623       00000001      OFST:	set	1
1626                     ; 414   uint8_t itpos = 0;
1628                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1630                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1632  0001 a4f0          	and	a,#240
1633  0003 4e            	swap	a
1634  0004 a40f          	and	a,#15
1635  0006 5f            	clrw	x
1636  0007 97            	ld	xl,a
1637  0008 a601          	ld	a,#1
1638  000a 5d            	tnzw	x
1639  000b 2704          	jreq	L26
1640  000d               L46:
1641  000d 48            	sll	a
1642  000e 5a            	decw	x
1643  000f 26fc          	jrne	L46
1644  0011               L26:
1645  0011 6b01          	ld	(OFST+0,sp),a
1647                     ; 422   SPI->SR = (uint8_t)(~itpos);
1649  0013 7b01          	ld	a,(OFST+0,sp)
1650  0015 43            	cpl	a
1651  0016 c75203        	ld	20995,a
1652                     ; 424 }
1655  0019 84            	pop	a
1656  001a 81            	ret
1669                     	xdef	_SPI_ClearITPendingBit
1670                     	xdef	_SPI_GetITStatus
1671                     	xdef	_SPI_ClearFlag
1672                     	xdef	_SPI_GetFlagStatus
1673                     	xdef	_SPI_BiDirectionalLineConfig
1674                     	xdef	_SPI_GetCRCPolynomial
1675                     	xdef	_SPI_ResetCRC
1676                     	xdef	_SPI_GetCRC
1677                     	xdef	_SPI_CalculateCRCCmd
1678                     	xdef	_SPI_TransmitCRC
1679                     	xdef	_SPI_NSSInternalSoftwareCmd
1680                     	xdef	_SPI_ReceiveData
1681                     	xdef	_SPI_SendData
1682                     	xdef	_SPI_ITConfig
1683                     	xdef	_SPI_Cmd
1684                     	xdef	_SPI_Init
1685                     	xdef	_SPI_DeInit
1704                     	end
