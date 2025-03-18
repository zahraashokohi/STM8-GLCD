   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  45                     ; 58 void TIM1_DeInit(void)
  45                     ; 59 {
  47                     .text:	section	.text,new
  48  0000               _TIM1_DeInit:
  52                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  54  0000 725f5250      	clr	21072
  55                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  57  0004 725f5251      	clr	21073
  58                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  60  0008 725f5252      	clr	21074
  61                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  63  000c 725f5253      	clr	21075
  64                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  66  0010 725f5254      	clr	21076
  67                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  69  0014 725f5256      	clr	21078
  70                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  72  0018 725f525c      	clr	21084
  73                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  75  001c 725f525d      	clr	21085
  76                     ; 70   TIM1->CCMR1 = 0x01;
  78  0020 35015258      	mov	21080,#1
  79                     ; 71   TIM1->CCMR2 = 0x01;
  81  0024 35015259      	mov	21081,#1
  82                     ; 72   TIM1->CCMR3 = 0x01;
  84  0028 3501525a      	mov	21082,#1
  85                     ; 73   TIM1->CCMR4 = 0x01;
  87  002c 3501525b      	mov	21083,#1
  88                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  90  0030 725f525c      	clr	21084
  91                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  93  0034 725f525d      	clr	21085
  94                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  96  0038 725f5258      	clr	21080
  97                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  99  003c 725f5259      	clr	21081
 100                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 102  0040 725f525a      	clr	21082
 103                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 105  0044 725f525b      	clr	21083
 106                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 108  0048 725f525e      	clr	21086
 109                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 111  004c 725f525f      	clr	21087
 112                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 114  0050 725f5260      	clr	21088
 115                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 117  0054 725f5261      	clr	21089
 118                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 120  0058 35ff5262      	mov	21090,#255
 121                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 123  005c 35ff5263      	mov	21091,#255
 124                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 126  0060 725f5265      	clr	21093
 127                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 129  0064 725f5266      	clr	21094
 130                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 132  0068 725f5267      	clr	21095
 133                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 135  006c 725f5268      	clr	21096
 136                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 138  0070 725f5269      	clr	21097
 139                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 141  0074 725f526a      	clr	21098
 142                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 144  0078 725f526b      	clr	21099
 145                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 147  007c 725f526c      	clr	21100
 148                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 150  0080 725f526f      	clr	21103
 151                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 153  0084 35015257      	mov	21079,#1
 154                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 156  0088 725f526e      	clr	21102
 157                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 159  008c 725f526d      	clr	21101
 160                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 162  0090 725f5264      	clr	21092
 163                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 165  0094 725f5255      	clr	21077
 166                     ; 101 }
 169  0098 81            	ret
 278                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 278                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 278                     ; 113                        uint16_t TIM1_Period,
 278                     ; 114                        uint8_t TIM1_RepetitionCounter)
 278                     ; 115 {
 279                     .text:	section	.text,new
 280  0000               _TIM1_TimeBaseInit:
 282  0000 89            	pushw	x
 283       00000000      OFST:	set	0
 286                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 288                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 290  0001 7b06          	ld	a,(OFST+6,sp)
 291  0003 c75262        	ld	21090,a
 292                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 294  0006 7b07          	ld	a,(OFST+7,sp)
 295  0008 c75263        	ld	21091,a
 296                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 298  000b 9e            	ld	a,xh
 299  000c c75260        	ld	21088,a
 300                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 302  000f 9f            	ld	a,xl
 303  0010 c75261        	ld	21089,a
 304                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 304                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 306  0013 c65250        	ld	a,21072
 307  0016 a48f          	and	a,#143
 308  0018 1a05          	or	a,(OFST+5,sp)
 309  001a c75250        	ld	21072,a
 310                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 312  001d 7b08          	ld	a,(OFST+8,sp)
 313  001f c75264        	ld	21092,a
 314                     ; 133 }
 317  0022 85            	popw	x
 318  0023 81            	ret
 603                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 603                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 603                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 603                     ; 157                   uint16_t TIM1_Pulse,
 603                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 603                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 603                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 603                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 603                     ; 162 {
 604                     .text:	section	.text,new
 605  0000               _TIM1_OC1Init:
 607  0000 89            	pushw	x
 608  0001 5203          	subw	sp,#3
 609       00000003      OFST:	set	3
 612                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 614                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 616                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 618                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 620                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 622                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 624                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 626                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 626                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 628  0003 c6525c        	ld	a,21084
 629  0006 a4f0          	and	a,#240
 630  0008 c7525c        	ld	21084,a
 631                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 631                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 631                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 631                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 633  000b 7b0c          	ld	a,(OFST+9,sp)
 634  000d a408          	and	a,#8
 635  000f 6b03          	ld	(OFST+0,sp),a
 637  0011 7b0b          	ld	a,(OFST+8,sp)
 638  0013 a402          	and	a,#2
 639  0015 1a03          	or	a,(OFST+0,sp)
 640  0017 6b02          	ld	(OFST-1,sp),a
 642  0019 7b08          	ld	a,(OFST+5,sp)
 643  001b a404          	and	a,#4
 644  001d 6b01          	ld	(OFST-2,sp),a
 646  001f 9f            	ld	a,xl
 647  0020 a401          	and	a,#1
 648  0022 1a01          	or	a,(OFST-2,sp)
 649  0024 1a02          	or	a,(OFST-1,sp)
 650  0026 ca525c        	or	a,21084
 651  0029 c7525c        	ld	21084,a
 652                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 652                     ; 185                           (uint8_t)TIM1_OCMode);
 654  002c c65258        	ld	a,21080
 655  002f a48f          	and	a,#143
 656  0031 1a04          	or	a,(OFST+1,sp)
 657  0033 c75258        	ld	21080,a
 658                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 660  0036 c6526f        	ld	a,21103
 661  0039 a4fc          	and	a,#252
 662  003b c7526f        	ld	21103,a
 663                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 663                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 665  003e 7b0e          	ld	a,(OFST+11,sp)
 666  0040 a402          	and	a,#2
 667  0042 6b03          	ld	(OFST+0,sp),a
 669  0044 7b0d          	ld	a,(OFST+10,sp)
 670  0046 a401          	and	a,#1
 671  0048 1a03          	or	a,(OFST+0,sp)
 672  004a ca526f        	or	a,21103
 673  004d c7526f        	ld	21103,a
 674                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 676  0050 7b09          	ld	a,(OFST+6,sp)
 677  0052 c75265        	ld	21093,a
 678                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 680  0055 7b0a          	ld	a,(OFST+7,sp)
 681  0057 c75266        	ld	21094,a
 682                     ; 196 }
 685  005a 5b05          	addw	sp,#5
 686  005c 81            	ret
 790                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 790                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 790                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 790                     ; 220                   uint16_t TIM1_Pulse,
 790                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 790                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 790                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 790                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 790                     ; 225 {
 791                     .text:	section	.text,new
 792  0000               _TIM1_OC2Init:
 794  0000 89            	pushw	x
 795  0001 5203          	subw	sp,#3
 796       00000003      OFST:	set	3
 799                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 801                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 803                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 805                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 807                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 809                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 811                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 813                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 813                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 815  0003 c6525c        	ld	a,21084
 816  0006 a40f          	and	a,#15
 817  0008 c7525c        	ld	21084,a
 818                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 818                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 818                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 818                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 820  000b 7b0c          	ld	a,(OFST+9,sp)
 821  000d a480          	and	a,#128
 822  000f 6b03          	ld	(OFST+0,sp),a
 824  0011 7b0b          	ld	a,(OFST+8,sp)
 825  0013 a420          	and	a,#32
 826  0015 1a03          	or	a,(OFST+0,sp)
 827  0017 6b02          	ld	(OFST-1,sp),a
 829  0019 7b08          	ld	a,(OFST+5,sp)
 830  001b a440          	and	a,#64
 831  001d 6b01          	ld	(OFST-2,sp),a
 833  001f 9f            	ld	a,xl
 834  0020 a410          	and	a,#16
 835  0022 1a01          	or	a,(OFST-2,sp)
 836  0024 1a02          	or	a,(OFST-1,sp)
 837  0026 ca525c        	or	a,21084
 838  0029 c7525c        	ld	21084,a
 839                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 839                     ; 249                           (uint8_t)TIM1_OCMode);
 841  002c c65259        	ld	a,21081
 842  002f a48f          	and	a,#143
 843  0031 1a04          	or	a,(OFST+1,sp)
 844  0033 c75259        	ld	21081,a
 845                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 847  0036 c6526f        	ld	a,21103
 848  0039 a4f3          	and	a,#243
 849  003b c7526f        	ld	21103,a
 850                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 850                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 852  003e 7b0e          	ld	a,(OFST+11,sp)
 853  0040 a408          	and	a,#8
 854  0042 6b03          	ld	(OFST+0,sp),a
 856  0044 7b0d          	ld	a,(OFST+10,sp)
 857  0046 a404          	and	a,#4
 858  0048 1a03          	or	a,(OFST+0,sp)
 859  004a ca526f        	or	a,21103
 860  004d c7526f        	ld	21103,a
 861                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 863  0050 7b09          	ld	a,(OFST+6,sp)
 864  0052 c75267        	ld	21095,a
 865                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 867  0055 7b0a          	ld	a,(OFST+7,sp)
 868  0057 c75268        	ld	21096,a
 869                     ; 260 }
 872  005a 5b05          	addw	sp,#5
 873  005c 81            	ret
 977                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 977                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
 977                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 977                     ; 284                   uint16_t TIM1_Pulse,
 977                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 977                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 977                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 977                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 977                     ; 289 {
 978                     .text:	section	.text,new
 979  0000               _TIM1_OC3Init:
 981  0000 89            	pushw	x
 982  0001 5203          	subw	sp,#3
 983       00000003      OFST:	set	3
 986                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 988                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 990                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 992                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 994                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 996                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 998                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1000                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1000                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1002  0003 c6525d        	ld	a,21085
1003  0006 a4f0          	and	a,#240
1004  0008 c7525d        	ld	21085,a
1005                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1005                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1005                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1005                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1007  000b 7b0c          	ld	a,(OFST+9,sp)
1008  000d a408          	and	a,#8
1009  000f 6b03          	ld	(OFST+0,sp),a
1011  0011 7b0b          	ld	a,(OFST+8,sp)
1012  0013 a402          	and	a,#2
1013  0015 1a03          	or	a,(OFST+0,sp)
1014  0017 6b02          	ld	(OFST-1,sp),a
1016  0019 7b08          	ld	a,(OFST+5,sp)
1017  001b a404          	and	a,#4
1018  001d 6b01          	ld	(OFST-2,sp),a
1020  001f 9f            	ld	a,xl
1021  0020 a401          	and	a,#1
1022  0022 1a01          	or	a,(OFST-2,sp)
1023  0024 1a02          	or	a,(OFST-1,sp)
1024  0026 ca525d        	or	a,21085
1025  0029 c7525d        	ld	21085,a
1026                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1026                     ; 312                           (uint8_t)TIM1_OCMode);
1028  002c c6525a        	ld	a,21082
1029  002f a48f          	and	a,#143
1030  0031 1a04          	or	a,(OFST+1,sp)
1031  0033 c7525a        	ld	21082,a
1032                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1034  0036 c6526f        	ld	a,21103
1035  0039 a4cf          	and	a,#207
1036  003b c7526f        	ld	21103,a
1037                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1037                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1039  003e 7b0e          	ld	a,(OFST+11,sp)
1040  0040 a420          	and	a,#32
1041  0042 6b03          	ld	(OFST+0,sp),a
1043  0044 7b0d          	ld	a,(OFST+10,sp)
1044  0046 a410          	and	a,#16
1045  0048 1a03          	or	a,(OFST+0,sp)
1046  004a ca526f        	or	a,21103
1047  004d c7526f        	ld	21103,a
1048                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1050  0050 7b09          	ld	a,(OFST+6,sp)
1051  0052 c75269        	ld	21097,a
1052                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1054  0055 7b0a          	ld	a,(OFST+7,sp)
1055  0057 c7526a        	ld	21098,a
1056                     ; 323 }
1059  005a 5b05          	addw	sp,#5
1060  005c 81            	ret
1134                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1134                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1134                     ; 340                   uint16_t TIM1_Pulse,
1134                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1134                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1134                     ; 343 {
1135                     .text:	section	.text,new
1136  0000               _TIM1_OC4Init:
1138  0000 89            	pushw	x
1139  0001 88            	push	a
1140       00000001      OFST:	set	1
1143                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1145                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1147                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1149                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1151                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1153  0002 c6525d        	ld	a,21085
1154  0005 a4cf          	and	a,#207
1155  0007 c7525d        	ld	21085,a
1156                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1156                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1158  000a 7b08          	ld	a,(OFST+7,sp)
1159  000c a420          	and	a,#32
1160  000e 6b01          	ld	(OFST+0,sp),a
1162  0010 9f            	ld	a,xl
1163  0011 a410          	and	a,#16
1164  0013 1a01          	or	a,(OFST+0,sp)
1165  0015 ca525d        	or	a,21085
1166  0018 c7525d        	ld	21085,a
1167                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1167                     ; 358                           TIM1_OCMode);
1169  001b c6525b        	ld	a,21083
1170  001e a48f          	and	a,#143
1171  0020 1a02          	or	a,(OFST+1,sp)
1172  0022 c7525b        	ld	21083,a
1173                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1175  0025 0d09          	tnz	(OFST+8,sp)
1176  0027 270a          	jreq	L534
1177                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1179  0029 c6526f        	ld	a,21103
1180  002c aadf          	or	a,#223
1181  002e c7526f        	ld	21103,a
1183  0031 2004          	jra	L734
1184  0033               L534:
1185                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1187  0033 721d526f      	bres	21103,#6
1188  0037               L734:
1189                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1191  0037 7b06          	ld	a,(OFST+5,sp)
1192  0039 c7526b        	ld	21099,a
1193                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1195  003c 7b07          	ld	a,(OFST+6,sp)
1196  003e c7526c        	ld	21100,a
1197                     ; 373 }
1200  0041 5b03          	addw	sp,#3
1201  0043 81            	ret
1406                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1406                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1406                     ; 390                      uint8_t TIM1_DeadTime,
1406                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1406                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1406                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1406                     ; 394 {
1407                     .text:	section	.text,new
1408  0000               _TIM1_BDTRConfig:
1410  0000 89            	pushw	x
1411  0001 88            	push	a
1412       00000001      OFST:	set	1
1415                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1417                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1419                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1421                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1423                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1425                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1427  0002 7b06          	ld	a,(OFST+5,sp)
1428  0004 c7526e        	ld	21102,a
1429                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1429                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1429                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1431  0007 7b07          	ld	a,(OFST+6,sp)
1432  0009 1a08          	or	a,(OFST+7,sp)
1433  000b 1a09          	or	a,(OFST+8,sp)
1434  000d 6b01          	ld	(OFST+0,sp),a
1436  000f 9f            	ld	a,xl
1437  0010 1a02          	or	a,(OFST+1,sp)
1438  0012 1a01          	or	a,(OFST+0,sp)
1439  0014 c7526d        	ld	21101,a
1440                     ; 409 }
1443  0017 5b03          	addw	sp,#3
1444  0019 81            	ret
1646                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1646                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1646                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1646                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1646                     ; 427                  uint8_t TIM1_ICFilter)
1646                     ; 428 {
1647                     .text:	section	.text,new
1648  0000               _TIM1_ICInit:
1650  0000 89            	pushw	x
1651       00000000      OFST:	set	0
1654                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1656                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1658                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1660                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1662                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1664                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
1666  0001 9e            	ld	a,xh
1667  0002 4d            	tnz	a
1668  0003 2614          	jrne	L766
1669                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
1669                     ; 440                (uint8_t)TIM1_ICSelection,
1669                     ; 441                (uint8_t)TIM1_ICFilter);
1671  0005 7b07          	ld	a,(OFST+7,sp)
1672  0007 88            	push	a
1673  0008 7b06          	ld	a,(OFST+6,sp)
1674  000a 97            	ld	xl,a
1675  000b 7b03          	ld	a,(OFST+3,sp)
1676  000d 95            	ld	xh,a
1677  000e cd0000        	call	L3_TI1_Config
1679  0011 84            	pop	a
1680                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1682  0012 7b06          	ld	a,(OFST+6,sp)
1683  0014 cd0000        	call	_TIM1_SetIC1Prescaler
1686  0017 2046          	jra	L176
1687  0019               L766:
1688                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
1690  0019 7b01          	ld	a,(OFST+1,sp)
1691  001b a101          	cp	a,#1
1692  001d 2614          	jrne	L376
1693                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
1693                     ; 449                (uint8_t)TIM1_ICSelection,
1693                     ; 450                (uint8_t)TIM1_ICFilter);
1695  001f 7b07          	ld	a,(OFST+7,sp)
1696  0021 88            	push	a
1697  0022 7b06          	ld	a,(OFST+6,sp)
1698  0024 97            	ld	xl,a
1699  0025 7b03          	ld	a,(OFST+3,sp)
1700  0027 95            	ld	xh,a
1701  0028 cd0000        	call	L5_TI2_Config
1703  002b 84            	pop	a
1704                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1706  002c 7b06          	ld	a,(OFST+6,sp)
1707  002e cd0000        	call	_TIM1_SetIC2Prescaler
1710  0031 202c          	jra	L176
1711  0033               L376:
1712                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
1714  0033 7b01          	ld	a,(OFST+1,sp)
1715  0035 a102          	cp	a,#2
1716  0037 2614          	jrne	L776
1717                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
1717                     ; 458                (uint8_t)TIM1_ICSelection,
1717                     ; 459                (uint8_t)TIM1_ICFilter);
1719  0039 7b07          	ld	a,(OFST+7,sp)
1720  003b 88            	push	a
1721  003c 7b06          	ld	a,(OFST+6,sp)
1722  003e 97            	ld	xl,a
1723  003f 7b03          	ld	a,(OFST+3,sp)
1724  0041 95            	ld	xh,a
1725  0042 cd0000        	call	L7_TI3_Config
1727  0045 84            	pop	a
1728                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1730  0046 7b06          	ld	a,(OFST+6,sp)
1731  0048 cd0000        	call	_TIM1_SetIC3Prescaler
1734  004b 2012          	jra	L176
1735  004d               L776:
1736                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
1736                     ; 467                (uint8_t)TIM1_ICSelection,
1736                     ; 468                (uint8_t)TIM1_ICFilter);
1738  004d 7b07          	ld	a,(OFST+7,sp)
1739  004f 88            	push	a
1740  0050 7b06          	ld	a,(OFST+6,sp)
1741  0052 97            	ld	xl,a
1742  0053 7b03          	ld	a,(OFST+3,sp)
1743  0055 95            	ld	xh,a
1744  0056 cd0000        	call	L11_TI4_Config
1746  0059 84            	pop	a
1747                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1749  005a 7b06          	ld	a,(OFST+6,sp)
1750  005c cd0000        	call	_TIM1_SetIC4Prescaler
1752  005f               L176:
1753                     ; 472 }
1756  005f 85            	popw	x
1757  0060 81            	ret
1853                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1853                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1853                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1853                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1853                     ; 492                      uint8_t TIM1_ICFilter)
1853                     ; 493 {
1854                     .text:	section	.text,new
1855  0000               _TIM1_PWMIConfig:
1857  0000 89            	pushw	x
1858  0001 89            	pushw	x
1859       00000002      OFST:	set	2
1862                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1864                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1866                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1868                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1870                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1872                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1874                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1876  0002 9f            	ld	a,xl
1877  0003 a101          	cp	a,#1
1878  0005 2706          	jreq	L157
1879                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
1881  0007 a601          	ld	a,#1
1882  0009 6b01          	ld	(OFST-1,sp),a
1885  000b 2002          	jra	L357
1886  000d               L157:
1887                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
1889  000d 0f01          	clr	(OFST-1,sp)
1891  000f               L357:
1892                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1894  000f 7b07          	ld	a,(OFST+5,sp)
1895  0011 a101          	cp	a,#1
1896  0013 2606          	jrne	L557
1897                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
1899  0015 a602          	ld	a,#2
1900  0017 6b02          	ld	(OFST+0,sp),a
1903  0019 2004          	jra	L757
1904  001b               L557:
1905                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
1907  001b a601          	ld	a,#1
1908  001d 6b02          	ld	(OFST+0,sp),a
1910  001f               L757:
1911                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
1913  001f 0d03          	tnz	(OFST+1,sp)
1914  0021 2626          	jrne	L167
1915                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1915                     ; 527                (uint8_t)TIM1_ICFilter);
1917  0023 7b09          	ld	a,(OFST+7,sp)
1918  0025 88            	push	a
1919  0026 7b08          	ld	a,(OFST+6,sp)
1920  0028 97            	ld	xl,a
1921  0029 7b05          	ld	a,(OFST+3,sp)
1922  002b 95            	ld	xh,a
1923  002c cd0000        	call	L3_TI1_Config
1925  002f 84            	pop	a
1926                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1928  0030 7b08          	ld	a,(OFST+6,sp)
1929  0032 cd0000        	call	_TIM1_SetIC1Prescaler
1931                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1933  0035 7b09          	ld	a,(OFST+7,sp)
1934  0037 88            	push	a
1935  0038 7b03          	ld	a,(OFST+1,sp)
1936  003a 97            	ld	xl,a
1937  003b 7b02          	ld	a,(OFST+0,sp)
1938  003d 95            	ld	xh,a
1939  003e cd0000        	call	L5_TI2_Config
1941  0041 84            	pop	a
1942                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1944  0042 7b08          	ld	a,(OFST+6,sp)
1945  0044 cd0000        	call	_TIM1_SetIC2Prescaler
1948  0047 2024          	jra	L367
1949  0049               L167:
1950                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1950                     ; 542                (uint8_t)TIM1_ICFilter);
1952  0049 7b09          	ld	a,(OFST+7,sp)
1953  004b 88            	push	a
1954  004c 7b08          	ld	a,(OFST+6,sp)
1955  004e 97            	ld	xl,a
1956  004f 7b05          	ld	a,(OFST+3,sp)
1957  0051 95            	ld	xh,a
1958  0052 cd0000        	call	L5_TI2_Config
1960  0055 84            	pop	a
1961                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1963  0056 7b08          	ld	a,(OFST+6,sp)
1964  0058 cd0000        	call	_TIM1_SetIC2Prescaler
1966                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1968  005b 7b09          	ld	a,(OFST+7,sp)
1969  005d 88            	push	a
1970  005e 7b03          	ld	a,(OFST+1,sp)
1971  0060 97            	ld	xl,a
1972  0061 7b02          	ld	a,(OFST+0,sp)
1973  0063 95            	ld	xh,a
1974  0064 cd0000        	call	L3_TI1_Config
1976  0067 84            	pop	a
1977                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1979  0068 7b08          	ld	a,(OFST+6,sp)
1980  006a cd0000        	call	_TIM1_SetIC1Prescaler
1982  006d               L367:
1983                     ; 553 }
1986  006d 5b04          	addw	sp,#4
1987  006f 81            	ret
2042                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2042                     ; 562 {
2043                     .text:	section	.text,new
2044  0000               _TIM1_Cmd:
2048                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2050                     ; 567   if (NewState != DISABLE)
2052  0000 4d            	tnz	a
2053  0001 2706          	jreq	L3101
2054                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2056  0003 72105250      	bset	21072,#0
2058  0007 2004          	jra	L5101
2059  0009               L3101:
2060                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2062  0009 72115250      	bres	21072,#0
2063  000d               L5101:
2064                     ; 575 }
2067  000d 81            	ret
2103                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2103                     ; 584 {
2104                     .text:	section	.text,new
2105  0000               _TIM1_CtrlPWMOutputs:
2109                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2111                     ; 590   if (NewState != DISABLE)
2113  0000 4d            	tnz	a
2114  0001 2706          	jreq	L5301
2115                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2117  0003 721e526d      	bset	21101,#7
2119  0007 2004          	jra	L7301
2120  0009               L5301:
2121                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2123  0009 721f526d      	bres	21101,#7
2124  000d               L7301:
2125                     ; 598 }
2128  000d 81            	ret
2235                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2235                     ; 618 {
2236                     .text:	section	.text,new
2237  0000               _TIM1_ITConfig:
2239  0000 89            	pushw	x
2240       00000000      OFST:	set	0
2243                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2245                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2247                     ; 623   if (NewState != DISABLE)
2249  0001 9f            	ld	a,xl
2250  0002 4d            	tnz	a
2251  0003 2709          	jreq	L7011
2252                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2254  0005 9e            	ld	a,xh
2255  0006 ca5254        	or	a,21076
2256  0009 c75254        	ld	21076,a
2258  000c 2009          	jra	L1111
2259  000e               L7011:
2260                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2262  000e 7b01          	ld	a,(OFST+1,sp)
2263  0010 43            	cpl	a
2264  0011 c45254        	and	a,21076
2265  0014 c75254        	ld	21076,a
2266  0017               L1111:
2267                     ; 633 }
2270  0017 85            	popw	x
2271  0018 81            	ret
2295                     ; 640 void TIM1_InternalClockConfig(void)
2295                     ; 641 {
2296                     .text:	section	.text,new
2297  0000               _TIM1_InternalClockConfig:
2301                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2303  0000 c65252        	ld	a,21074
2304  0003 a4f8          	and	a,#248
2305  0005 c75252        	ld	21074,a
2306                     ; 644 }
2309  0008 81            	ret
2426                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2426                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2426                     ; 664                               uint8_t ExtTRGFilter)
2426                     ; 665 {
2427                     .text:	section	.text,new
2428  0000               _TIM1_ETRClockMode1Config:
2430  0000 89            	pushw	x
2431       00000000      OFST:	set	0
2434                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2436                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2438                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2440  0001 7b05          	ld	a,(OFST+5,sp)
2441  0003 88            	push	a
2442  0004 9f            	ld	a,xl
2443  0005 97            	ld	xl,a
2444  0006 7b02          	ld	a,(OFST+2,sp)
2445  0008 95            	ld	xh,a
2446  0009 cd0000        	call	_TIM1_ETRConfig
2448  000c 84            	pop	a
2449                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2449                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2451  000d c65252        	ld	a,21074
2452  0010 a488          	and	a,#136
2453  0012 aa77          	or	a,#119
2454  0014 c75252        	ld	21074,a
2455                     ; 676 }
2458  0017 85            	popw	x
2459  0018 81            	ret
2517                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2517                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2517                     ; 696                               uint8_t ExtTRGFilter)
2517                     ; 697 {
2518                     .text:	section	.text,new
2519  0000               _TIM1_ETRClockMode2Config:
2521  0000 89            	pushw	x
2522       00000000      OFST:	set	0
2525                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2527                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2529                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2531  0001 7b05          	ld	a,(OFST+5,sp)
2532  0003 88            	push	a
2533  0004 9f            	ld	a,xl
2534  0005 97            	ld	xl,a
2535  0006 7b02          	ld	a,(OFST+2,sp)
2536  0008 95            	ld	xh,a
2537  0009 cd0000        	call	_TIM1_ETRConfig
2539  000c 84            	pop	a
2540                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
2542  000d 721c5253      	bset	21075,#6
2543                     ; 707 }
2546  0011 85            	popw	x
2547  0012 81            	ret
2603                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2603                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2603                     ; 727                     uint8_t ExtTRGFilter)
2603                     ; 728 {
2604                     .text:	section	.text,new
2605  0000               _TIM1_ETRConfig:
2607  0000 89            	pushw	x
2608       00000000      OFST:	set	0
2611                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2613                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
2613                     ; 733                          (uint8_t)ExtTRGFilter );
2615  0001 9f            	ld	a,xl
2616  0002 1a01          	or	a,(OFST+1,sp)
2617  0004 1a05          	or	a,(OFST+5,sp)
2618  0006 ca5253        	or	a,21075
2619  0009 c75253        	ld	21075,a
2620                     ; 734 }
2623  000c 85            	popw	x
2624  000d 81            	ret
2713                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2713                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2713                     ; 753                                  uint8_t ICFilter)
2713                     ; 754 {
2714                     .text:	section	.text,new
2715  0000               _TIM1_TIxExternalClockConfig:
2717  0000 89            	pushw	x
2718       00000000      OFST:	set	0
2721                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2723                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2725                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2727                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2729  0001 9e            	ld	a,xh
2730  0002 a160          	cp	a,#96
2731  0004 260e          	jrne	L1131
2732                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2734  0006 7b05          	ld	a,(OFST+5,sp)
2735  0008 88            	push	a
2736  0009 9f            	ld	a,xl
2737  000a ae0001        	ldw	x,#1
2738  000d 95            	ld	xh,a
2739  000e cd0000        	call	L5_TI2_Config
2741  0011 84            	pop	a
2743  0012 200d          	jra	L3131
2744  0014               L1131:
2745                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2747  0014 7b05          	ld	a,(OFST+5,sp)
2748  0016 88            	push	a
2749  0017 7b03          	ld	a,(OFST+3,sp)
2750  0019 ae0001        	ldw	x,#1
2751  001c 95            	ld	xh,a
2752  001d cd0000        	call	L3_TI1_Config
2754  0020 84            	pop	a
2755  0021               L3131:
2756                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
2758  0021 7b01          	ld	a,(OFST+1,sp)
2759  0023 cd0000        	call	_TIM1_SelectInputTrigger
2761                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
2763  0026 c65252        	ld	a,21074
2764  0029 aa07          	or	a,#7
2765  002b c75252        	ld	21074,a
2766                     ; 775 }
2769  002e 85            	popw	x
2770  002f 81            	ret
2855                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2855                     ; 788 {
2856                     .text:	section	.text,new
2857  0000               _TIM1_SelectInputTrigger:
2859  0000 88            	push	a
2860       00000000      OFST:	set	0
2863                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2865                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
2867  0001 c65252        	ld	a,21074
2868  0004 a48f          	and	a,#143
2869  0006 1a01          	or	a,(OFST+1,sp)
2870  0008 c75252        	ld	21074,a
2871                     ; 794 }
2874  000b 84            	pop	a
2875  000c 81            	ret
2911                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2911                     ; 804 {
2912                     .text:	section	.text,new
2913  0000               _TIM1_UpdateDisableConfig:
2917                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2919                     ; 809   if (NewState != DISABLE)
2921  0000 4d            	tnz	a
2922  0001 2706          	jreq	L1731
2923                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
2925  0003 72125250      	bset	21072,#1
2927  0007 2004          	jra	L3731
2928  0009               L1731:
2929                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
2931  0009 72135250      	bres	21072,#1
2932  000d               L3731:
2933                     ; 817 }
2936  000d 81            	ret
2994                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2994                     ; 828 {
2995                     .text:	section	.text,new
2996  0000               _TIM1_UpdateRequestConfig:
3000                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3002                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3004  0000 4d            	tnz	a
3005  0001 2706          	jreq	L3241
3006                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3008  0003 72145250      	bset	21072,#2
3010  0007 2004          	jra	L5241
3011  0009               L3241:
3012                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3014  0009 72155250      	bres	21072,#2
3015  000d               L5241:
3016                     ; 841 }
3019  000d 81            	ret
3055                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3055                     ; 850 {
3056                     .text:	section	.text,new
3057  0000               _TIM1_SelectHallSensor:
3061                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3063                     ; 855   if (NewState != DISABLE)
3065  0000 4d            	tnz	a
3066  0001 2706          	jreq	L5441
3067                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3069  0003 721e5251      	bset	21073,#7
3071  0007 2004          	jra	L7441
3072  0009               L5441:
3073                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3075  0009 721f5251      	bres	21073,#7
3076  000d               L7441:
3077                     ; 863 }
3080  000d 81            	ret
3137                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3137                     ; 874 {
3138                     .text:	section	.text,new
3139  0000               _TIM1_SelectOnePulseMode:
3143                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3145                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3147  0000 4d            	tnz	a
3148  0001 2706          	jreq	L7741
3149                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3151  0003 72165250      	bset	21072,#3
3153  0007 2004          	jra	L1051
3154  0009               L7741:
3155                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3157  0009 72175250      	bres	21072,#3
3158  000d               L1051:
3159                     ; 888 }
3162  000d 81            	ret
3260                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3260                     ; 904 {
3261                     .text:	section	.text,new
3262  0000               _TIM1_SelectOutputTrigger:
3264  0000 88            	push	a
3265       00000000      OFST:	set	0
3268                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3270                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3270                     ; 910                         (uint8_t) TIM1_TRGOSource);
3272  0001 c65251        	ld	a,21073
3273  0004 a48f          	and	a,#143
3274  0006 1a01          	or	a,(OFST+1,sp)
3275  0008 c75251        	ld	21073,a
3276                     ; 911 }
3279  000b 84            	pop	a
3280  000c 81            	ret
3354                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3354                     ; 924 {
3355                     .text:	section	.text,new
3356  0000               _TIM1_SelectSlaveMode:
3358  0000 88            	push	a
3359       00000000      OFST:	set	0
3362                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3364                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
3364                     ; 930                          (uint8_t)TIM1_SlaveMode);
3366  0001 c65252        	ld	a,21074
3367  0004 a4f8          	and	a,#248
3368  0006 1a01          	or	a,(OFST+1,sp)
3369  0008 c75252        	ld	21074,a
3370                     ; 931 }
3373  000b 84            	pop	a
3374  000c 81            	ret
3410                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3410                     ; 940 {
3411                     .text:	section	.text,new
3412  0000               _TIM1_SelectMasterSlaveMode:
3416                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3418                     ; 945   if (NewState != DISABLE)
3420  0000 4d            	tnz	a
3421  0001 2706          	jreq	L3161
3422                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
3424  0003 721e5252      	bset	21074,#7
3426  0007 2004          	jra	L5161
3427  0009               L3161:
3428                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3430  0009 721f5252      	bres	21074,#7
3431  000d               L5161:
3432                     ; 953 }
3435  000d 81            	ret
3521                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3521                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3521                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3521                     ; 978 {
3522                     .text:	section	.text,new
3523  0000               _TIM1_EncoderInterfaceConfig:
3525  0000 89            	pushw	x
3526       00000000      OFST:	set	0
3529                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3531                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3533                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3535                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3537  0001 9f            	ld	a,xl
3538  0002 4d            	tnz	a
3539  0003 2706          	jreq	L7561
3540                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
3542  0005 7212525c      	bset	21084,#1
3544  0009 2004          	jra	L1661
3545  000b               L7561:
3546                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
3548  000b 7213525c      	bres	21084,#1
3549  000f               L1661:
3550                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3552  000f 0d05          	tnz	(OFST+5,sp)
3553  0011 2706          	jreq	L3661
3554                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
3556  0013 721a525c      	bset	21084,#5
3558  0017 2004          	jra	L5661
3559  0019               L3661:
3560                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
3562  0019 721b525c      	bres	21084,#5
3563  001d               L5661:
3564                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
3564                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
3566  001d c65252        	ld	a,21074
3567  0020 a4f0          	and	a,#240
3568  0022 1a01          	or	a,(OFST+1,sp)
3569  0024 c75252        	ld	21074,a
3570                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
3570                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
3572  0027 c65258        	ld	a,21080
3573  002a a4fc          	and	a,#252
3574  002c aa01          	or	a,#1
3575  002e c75258        	ld	21080,a
3576                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
3576                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
3578  0031 c65259        	ld	a,21081
3579  0034 a4fc          	and	a,#252
3580  0036 aa01          	or	a,#1
3581  0038 c75259        	ld	21081,a
3582                     ; 1011 }
3585  003b 85            	popw	x
3586  003c 81            	ret
3653                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
3653                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3653                     ; 1025 {
3654                     .text:	section	.text,new
3655  0000               _TIM1_PrescalerConfig:
3657  0000 89            	pushw	x
3658       00000000      OFST:	set	0
3661                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3663                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
3665  0001 9e            	ld	a,xh
3666  0002 c75260        	ld	21088,a
3667                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
3669  0005 9f            	ld	a,xl
3670  0006 c75261        	ld	21089,a
3671                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
3673  0009 7b05          	ld	a,(OFST+5,sp)
3674  000b c75257        	ld	21079,a
3675                     ; 1035 }
3678  000e 85            	popw	x
3679  000f 81            	ret
3715                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3715                     ; 1049 {
3716                     .text:	section	.text,new
3717  0000               _TIM1_CounterModeConfig:
3719  0000 88            	push	a
3720       00000000      OFST:	set	0
3723                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3725                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
3725                     ; 1056                         | (uint8_t)TIM1_CounterMode);
3727  0001 c65250        	ld	a,21072
3728  0004 a48f          	and	a,#143
3729  0006 1a01          	or	a,(OFST+1,sp)
3730  0008 c75250        	ld	21072,a
3731                     ; 1057 }
3734  000b 84            	pop	a
3735  000c 81            	ret
3793                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3793                     ; 1068 {
3794                     .text:	section	.text,new
3795  0000               _TIM1_ForcedOC1Config:
3797  0000 88            	push	a
3798       00000000      OFST:	set	0
3801                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3803                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
3803                     ; 1074                            (uint8_t)TIM1_ForcedAction);
3805  0001 c65258        	ld	a,21080
3806  0004 a48f          	and	a,#143
3807  0006 1a01          	or	a,(OFST+1,sp)
3808  0008 c75258        	ld	21080,a
3809                     ; 1075 }
3812  000b 84            	pop	a
3813  000c 81            	ret
3849                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3849                     ; 1086 {
3850                     .text:	section	.text,new
3851  0000               _TIM1_ForcedOC2Config:
3853  0000 88            	push	a
3854       00000000      OFST:	set	0
3857                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3859                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3859                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
3861  0001 c65259        	ld	a,21081
3862  0004 a48f          	and	a,#143
3863  0006 1a01          	or	a,(OFST+1,sp)
3864  0008 c75259        	ld	21081,a
3865                     ; 1093 }
3868  000b 84            	pop	a
3869  000c 81            	ret
3905                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3905                     ; 1105 {
3906                     .text:	section	.text,new
3907  0000               _TIM1_ForcedOC3Config:
3909  0000 88            	push	a
3910       00000000      OFST:	set	0
3913                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3915                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
3915                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
3917  0001 c6525a        	ld	a,21082
3918  0004 a48f          	and	a,#143
3919  0006 1a01          	or	a,(OFST+1,sp)
3920  0008 c7525a        	ld	21082,a
3921                     ; 1112 }
3924  000b 84            	pop	a
3925  000c 81            	ret
3961                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3961                     ; 1124 {
3962                     .text:	section	.text,new
3963  0000               _TIM1_ForcedOC4Config:
3965  0000 88            	push	a
3966       00000000      OFST:	set	0
3969                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3971                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3971                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
3973  0001 c6525b        	ld	a,21083
3974  0004 a48f          	and	a,#143
3975  0006 1a01          	or	a,(OFST+1,sp)
3976  0008 c7525b        	ld	21083,a
3977                     ; 1131 }
3980  000b 84            	pop	a
3981  000c 81            	ret
4017                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4017                     ; 1140 {
4018                     .text:	section	.text,new
4019  0000               _TIM1_ARRPreloadConfig:
4023                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4025                     ; 1145   if (NewState != DISABLE)
4027  0000 4d            	tnz	a
4028  0001 2706          	jreq	L5502
4029                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4031  0003 721e5250      	bset	21072,#7
4033  0007 2004          	jra	L7502
4034  0009               L5502:
4035                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4037  0009 721f5250      	bres	21072,#7
4038  000d               L7502:
4039                     ; 1153 }
4042  000d 81            	ret
4077                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4077                     ; 1162 {
4078                     .text:	section	.text,new
4079  0000               _TIM1_SelectCOM:
4083                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4085                     ; 1167   if (NewState != DISABLE)
4087  0000 4d            	tnz	a
4088  0001 2706          	jreq	L7702
4089                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4091  0003 72145251      	bset	21073,#2
4093  0007 2004          	jra	L1012
4094  0009               L7702:
4095                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4097  0009 72155251      	bres	21073,#2
4098  000d               L1012:
4099                     ; 1175 }
4102  000d 81            	ret
4138                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
4138                     ; 1184 {
4139                     .text:	section	.text,new
4140  0000               _TIM1_CCPreloadControl:
4144                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4146                     ; 1189   if (NewState != DISABLE)
4148  0000 4d            	tnz	a
4149  0001 2706          	jreq	L1212
4150                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
4152  0003 72105251      	bset	21073,#0
4154  0007 2004          	jra	L3212
4155  0009               L1212:
4156                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4158  0009 72115251      	bres	21073,#0
4159  000d               L3212:
4160                     ; 1197 }
4163  000d 81            	ret
4199                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4199                     ; 1206 {
4200                     .text:	section	.text,new
4201  0000               _TIM1_OC1PreloadConfig:
4205                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4207                     ; 1211   if (NewState != DISABLE)
4209  0000 4d            	tnz	a
4210  0001 2706          	jreq	L3412
4211                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4213  0003 72165258      	bset	21080,#3
4215  0007 2004          	jra	L5412
4216  0009               L3412:
4217                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4219  0009 72175258      	bres	21080,#3
4220  000d               L5412:
4221                     ; 1219 }
4224  000d 81            	ret
4260                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4260                     ; 1228 {
4261                     .text:	section	.text,new
4262  0000               _TIM1_OC2PreloadConfig:
4266                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4268                     ; 1233   if (NewState != DISABLE)
4270  0000 4d            	tnz	a
4271  0001 2706          	jreq	L5612
4272                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4274  0003 72165259      	bset	21081,#3
4276  0007 2004          	jra	L7612
4277  0009               L5612:
4278                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4280  0009 72175259      	bres	21081,#3
4281  000d               L7612:
4282                     ; 1241 }
4285  000d 81            	ret
4321                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4321                     ; 1250 {
4322                     .text:	section	.text,new
4323  0000               _TIM1_OC3PreloadConfig:
4327                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4329                     ; 1255   if (NewState != DISABLE)
4331  0000 4d            	tnz	a
4332  0001 2706          	jreq	L7022
4333                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4335  0003 7216525a      	bset	21082,#3
4337  0007 2004          	jra	L1122
4338  0009               L7022:
4339                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4341  0009 7217525a      	bres	21082,#3
4342  000d               L1122:
4343                     ; 1263 }
4346  000d 81            	ret
4382                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4382                     ; 1272 {
4383                     .text:	section	.text,new
4384  0000               _TIM1_OC4PreloadConfig:
4388                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4390                     ; 1277   if (NewState != DISABLE)
4392  0000 4d            	tnz	a
4393  0001 2706          	jreq	L1322
4394                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4396  0003 7216525b      	bset	21083,#3
4398  0007 2004          	jra	L3322
4399  0009               L1322:
4400                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4402  0009 7217525b      	bres	21083,#3
4403  000d               L3322:
4404                     ; 1285 }
4407  000d 81            	ret
4442                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
4442                     ; 1294 {
4443                     .text:	section	.text,new
4444  0000               _TIM1_OC1FastConfig:
4448                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4450                     ; 1299   if (NewState != DISABLE)
4452  0000 4d            	tnz	a
4453  0001 2706          	jreq	L3522
4454                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4456  0003 72145258      	bset	21080,#2
4458  0007 2004          	jra	L5522
4459  0009               L3522:
4460                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4462  0009 72155258      	bres	21080,#2
4463  000d               L5522:
4464                     ; 1307 }
4467  000d 81            	ret
4502                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
4502                     ; 1316 {
4503                     .text:	section	.text,new
4504  0000               _TIM1_OC2FastConfig:
4508                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4510                     ; 1321   if (NewState != DISABLE)
4512  0000 4d            	tnz	a
4513  0001 2706          	jreq	L5722
4514                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4516  0003 72145259      	bset	21081,#2
4518  0007 2004          	jra	L7722
4519  0009               L5722:
4520                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4522  0009 72155259      	bres	21081,#2
4523  000d               L7722:
4524                     ; 1329 }
4527  000d 81            	ret
4562                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
4562                     ; 1338 {
4563                     .text:	section	.text,new
4564  0000               _TIM1_OC3FastConfig:
4568                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4570                     ; 1343   if (NewState != DISABLE)
4572  0000 4d            	tnz	a
4573  0001 2706          	jreq	L7132
4574                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4576  0003 7214525a      	bset	21082,#2
4578  0007 2004          	jra	L1232
4579  0009               L7132:
4580                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4582  0009 7215525a      	bres	21082,#2
4583  000d               L1232:
4584                     ; 1351 }
4587  000d 81            	ret
4622                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
4622                     ; 1360 {
4623                     .text:	section	.text,new
4624  0000               _TIM1_OC4FastConfig:
4628                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4630                     ; 1365   if (NewState != DISABLE)
4632  0000 4d            	tnz	a
4633  0001 2706          	jreq	L1432
4634                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4636  0003 7214525b      	bset	21083,#2
4638  0007 2004          	jra	L3432
4639  0009               L1432:
4640                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4642  0009 7215525b      	bres	21083,#2
4643  000d               L3432:
4644                     ; 1373 }
4647  000d 81            	ret
4752                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4752                     ; 1390 {
4753                     .text:	section	.text,new
4754  0000               _TIM1_GenerateEvent:
4758                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4760                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
4762  0000 c75257        	ld	21079,a
4763                     ; 1396 }
4766  0003 81            	ret
4802                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4802                     ; 1407 {
4803                     .text:	section	.text,new
4804  0000               _TIM1_OC1PolarityConfig:
4808                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4810                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4812  0000 4d            	tnz	a
4813  0001 2706          	jreq	L5242
4814                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4816  0003 7212525c      	bset	21084,#1
4818  0007 2004          	jra	L7242
4819  0009               L5242:
4820                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4822  0009 7213525c      	bres	21084,#1
4823  000d               L7242:
4824                     ; 1420 }
4827  000d 81            	ret
4863                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4863                     ; 1431 {
4864                     .text:	section	.text,new
4865  0000               _TIM1_OC1NPolarityConfig:
4869                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4871                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4873  0000 4d            	tnz	a
4874  0001 2706          	jreq	L7442
4875                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4877  0003 7216525c      	bset	21084,#3
4879  0007 2004          	jra	L1542
4880  0009               L7442:
4881                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
4883  0009 7217525c      	bres	21084,#3
4884  000d               L1542:
4885                     ; 1444 }
4888  000d 81            	ret
4924                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4924                     ; 1455 {
4925                     .text:	section	.text,new
4926  0000               _TIM1_OC2PolarityConfig:
4930                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4932                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4934  0000 4d            	tnz	a
4935  0001 2706          	jreq	L1742
4936                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4938  0003 721a525c      	bset	21084,#5
4940  0007 2004          	jra	L3742
4941  0009               L1742:
4942                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4944  0009 721b525c      	bres	21084,#5
4945  000d               L3742:
4946                     ; 1468 }
4949  000d 81            	ret
4985                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4985                     ; 1479 {
4986                     .text:	section	.text,new
4987  0000               _TIM1_OC2NPolarityConfig:
4991                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4993                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4995  0000 4d            	tnz	a
4996  0001 2706          	jreq	L3152
4997                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4999  0003 721e525c      	bset	21084,#7
5001  0007 2004          	jra	L5152
5002  0009               L3152:
5003                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
5005  0009 721f525c      	bres	21084,#7
5006  000d               L5152:
5007                     ; 1492 }
5010  000d 81            	ret
5046                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5046                     ; 1503 {
5047                     .text:	section	.text,new
5048  0000               _TIM1_OC3PolarityConfig:
5052                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5054                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5056  0000 4d            	tnz	a
5057  0001 2706          	jreq	L5352
5058                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
5060  0003 7212525d      	bset	21085,#1
5062  0007 2004          	jra	L7352
5063  0009               L5352:
5064                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
5066  0009 7213525d      	bres	21085,#1
5067  000d               L7352:
5068                     ; 1516 }
5071  000d 81            	ret
5107                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5107                     ; 1528 {
5108                     .text:	section	.text,new
5109  0000               _TIM1_OC3NPolarityConfig:
5113                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5115                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5117  0000 4d            	tnz	a
5118  0001 2706          	jreq	L7552
5119                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5121  0003 7216525d      	bset	21085,#3
5123  0007 2004          	jra	L1652
5124  0009               L7552:
5125                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5127  0009 7217525d      	bres	21085,#3
5128  000d               L1652:
5129                     ; 1541 }
5132  000d 81            	ret
5168                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5168                     ; 1552 {
5169                     .text:	section	.text,new
5170  0000               _TIM1_OC4PolarityConfig:
5174                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5176                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5178  0000 4d            	tnz	a
5179  0001 2706          	jreq	L1062
5180                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
5182  0003 721a525d      	bset	21085,#5
5184  0007 2004          	jra	L3062
5185  0009               L1062:
5186                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
5188  0009 721b525d      	bres	21085,#5
5189  000d               L3062:
5190                     ; 1565 }
5193  000d 81            	ret
5238                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5238                     ; 1580 {
5239                     .text:	section	.text,new
5240  0000               _TIM1_CCxCmd:
5242  0000 89            	pushw	x
5243       00000000      OFST:	set	0
5246                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5248                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5250                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
5252  0001 9e            	ld	a,xh
5253  0002 4d            	tnz	a
5254  0003 2610          	jrne	L7262
5255                     ; 1588     if (NewState != DISABLE)
5257  0005 9f            	ld	a,xl
5258  0006 4d            	tnz	a
5259  0007 2706          	jreq	L1362
5260                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
5262  0009 7210525c      	bset	21084,#0
5264  000d 2040          	jra	L5362
5265  000f               L1362:
5266                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5268  000f 7211525c      	bres	21084,#0
5269  0013 203a          	jra	L5362
5270  0015               L7262:
5271                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
5273  0015 7b01          	ld	a,(OFST+1,sp)
5274  0017 a101          	cp	a,#1
5275  0019 2610          	jrne	L7362
5276                     ; 1601     if (NewState != DISABLE)
5278  001b 0d02          	tnz	(OFST+2,sp)
5279  001d 2706          	jreq	L1462
5280                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
5282  001f 7218525c      	bset	21084,#4
5284  0023 202a          	jra	L5362
5285  0025               L1462:
5286                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5288  0025 7219525c      	bres	21084,#4
5289  0029 2024          	jra	L5362
5290  002b               L7362:
5291                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
5293  002b 7b01          	ld	a,(OFST+1,sp)
5294  002d a102          	cp	a,#2
5295  002f 2610          	jrne	L7462
5296                     ; 1613     if (NewState != DISABLE)
5298  0031 0d02          	tnz	(OFST+2,sp)
5299  0033 2706          	jreq	L1562
5300                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
5302  0035 7210525d      	bset	21085,#0
5304  0039 2014          	jra	L5362
5305  003b               L1562:
5306                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5308  003b 7211525d      	bres	21085,#0
5309  003f 200e          	jra	L5362
5310  0041               L7462:
5311                     ; 1625     if (NewState != DISABLE)
5313  0041 0d02          	tnz	(OFST+2,sp)
5314  0043 2706          	jreq	L7562
5315                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
5317  0045 7218525d      	bset	21085,#4
5319  0049 2004          	jra	L5362
5320  004b               L7562:
5321                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5323  004b 7219525d      	bres	21085,#4
5324  004f               L5362:
5325                     ; 1634 }
5328  004f 85            	popw	x
5329  0050 81            	ret
5374                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5374                     ; 1648 {
5375                     .text:	section	.text,new
5376  0000               _TIM1_CCxNCmd:
5378  0000 89            	pushw	x
5379       00000000      OFST:	set	0
5382                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5384                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5386                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
5388  0001 9e            	ld	a,xh
5389  0002 4d            	tnz	a
5390  0003 2610          	jrne	L5072
5391                     ; 1656     if (NewState != DISABLE)
5393  0005 9f            	ld	a,xl
5394  0006 4d            	tnz	a
5395  0007 2706          	jreq	L7072
5396                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5398  0009 7214525c      	bset	21084,#2
5400  000d 202a          	jra	L3172
5401  000f               L7072:
5402                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
5404  000f 7215525c      	bres	21084,#2
5405  0013 2024          	jra	L3172
5406  0015               L5072:
5407                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
5409  0015 7b01          	ld	a,(OFST+1,sp)
5410  0017 a101          	cp	a,#1
5411  0019 2610          	jrne	L5172
5412                     ; 1668     if (NewState != DISABLE)
5414  001b 0d02          	tnz	(OFST+2,sp)
5415  001d 2706          	jreq	L7172
5416                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5418  001f 721c525c      	bset	21084,#6
5420  0023 2014          	jra	L3172
5421  0025               L7172:
5422                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
5424  0025 721d525c      	bres	21084,#6
5425  0029 200e          	jra	L3172
5426  002b               L5172:
5427                     ; 1680     if (NewState != DISABLE)
5429  002b 0d02          	tnz	(OFST+2,sp)
5430  002d 2706          	jreq	L5272
5431                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5433  002f 7214525d      	bset	21085,#2
5435  0033 2004          	jra	L3172
5436  0035               L5272:
5437                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
5439  0035 7215525d      	bres	21085,#2
5440  0039               L3172:
5441                     ; 1689 }
5444  0039 85            	popw	x
5445  003a 81            	ret
5490                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5490                     ; 1713 {
5491                     .text:	section	.text,new
5492  0000               _TIM1_SelectOCxM:
5494  0000 89            	pushw	x
5495       00000000      OFST:	set	0
5498                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5500                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5502                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
5504  0001 9e            	ld	a,xh
5505  0002 4d            	tnz	a
5506  0003 2610          	jrne	L3572
5507                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5509  0005 7211525c      	bres	21084,#0
5510                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
5510                     ; 1725                             | (uint8_t)TIM1_OCMode);
5512  0009 c65258        	ld	a,21080
5513  000c a48f          	and	a,#143
5514  000e 1a02          	or	a,(OFST+2,sp)
5515  0010 c75258        	ld	21080,a
5517  0013 203a          	jra	L5572
5518  0015               L3572:
5519                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
5521  0015 7b01          	ld	a,(OFST+1,sp)
5522  0017 a101          	cp	a,#1
5523  0019 2610          	jrne	L7572
5524                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5526  001b 7219525c      	bres	21084,#4
5527                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5527                     ; 1734                             | (uint8_t)TIM1_OCMode);
5529  001f c65259        	ld	a,21081
5530  0022 a48f          	and	a,#143
5531  0024 1a02          	or	a,(OFST+2,sp)
5532  0026 c75259        	ld	21081,a
5534  0029 2024          	jra	L5572
5535  002b               L7572:
5536                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
5538  002b 7b01          	ld	a,(OFST+1,sp)
5539  002d a102          	cp	a,#2
5540  002f 2610          	jrne	L3672
5541                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5543  0031 7211525d      	bres	21085,#0
5544                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
5544                     ; 1743                             | (uint8_t)TIM1_OCMode);
5546  0035 c6525a        	ld	a,21082
5547  0038 a48f          	and	a,#143
5548  003a 1a02          	or	a,(OFST+2,sp)
5549  003c c7525a        	ld	21082,a
5551  003f 200e          	jra	L5572
5552  0041               L3672:
5553                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5555  0041 7219525d      	bres	21085,#4
5556                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5556                     ; 1752                             | (uint8_t)TIM1_OCMode);
5558  0045 c6525b        	ld	a,21083
5559  0048 a48f          	and	a,#143
5560  004a 1a02          	or	a,(OFST+2,sp)
5561  004c c7525b        	ld	21083,a
5562  004f               L5572:
5563                     ; 1754 }
5566  004f 85            	popw	x
5567  0050 81            	ret
5601                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
5601                     ; 1763 {
5602                     .text:	section	.text,new
5603  0000               _TIM1_SetCounter:
5607                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
5609  0000 9e            	ld	a,xh
5610  0001 c7525e        	ld	21086,a
5611                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
5613  0004 9f            	ld	a,xl
5614  0005 c7525f        	ld	21087,a
5615                     ; 1767 }
5618  0008 81            	ret
5652                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
5652                     ; 1776 {
5653                     .text:	section	.text,new
5654  0000               _TIM1_SetAutoreload:
5658                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
5660  0000 9e            	ld	a,xh
5661  0001 c75262        	ld	21090,a
5662                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
5664  0004 9f            	ld	a,xl
5665  0005 c75263        	ld	21091,a
5666                     ; 1780  }
5669  0008 81            	ret
5703                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
5703                     ; 1789 {
5704                     .text:	section	.text,new
5705  0000               _TIM1_SetCompare1:
5709                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
5711  0000 9e            	ld	a,xh
5712  0001 c75265        	ld	21093,a
5713                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
5715  0004 9f            	ld	a,xl
5716  0005 c75266        	ld	21094,a
5717                     ; 1793 }
5720  0008 81            	ret
5754                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
5754                     ; 1802 {
5755                     .text:	section	.text,new
5756  0000               _TIM1_SetCompare2:
5760                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
5762  0000 9e            	ld	a,xh
5763  0001 c75267        	ld	21095,a
5764                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
5766  0004 9f            	ld	a,xl
5767  0005 c75268        	ld	21096,a
5768                     ; 1806 }
5771  0008 81            	ret
5805                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
5805                     ; 1815 {
5806                     .text:	section	.text,new
5807  0000               _TIM1_SetCompare3:
5811                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
5813  0000 9e            	ld	a,xh
5814  0001 c75269        	ld	21097,a
5815                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
5817  0004 9f            	ld	a,xl
5818  0005 c7526a        	ld	21098,a
5819                     ; 1819 }
5822  0008 81            	ret
5856                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
5856                     ; 1828 {
5857                     .text:	section	.text,new
5858  0000               _TIM1_SetCompare4:
5862                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
5864  0000 9e            	ld	a,xh
5865  0001 c7526b        	ld	21099,a
5866                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
5868  0004 9f            	ld	a,xl
5869  0005 c7526c        	ld	21100,a
5870                     ; 1832 }
5873  0008 81            	ret
5909                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5909                     ; 1845 {
5910                     .text:	section	.text,new
5911  0000               _TIM1_SetIC1Prescaler:
5913  0000 88            	push	a
5914       00000000      OFST:	set	0
5917                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5919                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
5919                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
5921  0001 c65258        	ld	a,21080
5922  0004 a4f3          	and	a,#243
5923  0006 1a01          	or	a,(OFST+1,sp)
5924  0008 c75258        	ld	21080,a
5925                     ; 1852 }
5928  000b 84            	pop	a
5929  000c 81            	ret
5965                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5965                     ; 1865 {
5966                     .text:	section	.text,new
5967  0000               _TIM1_SetIC2Prescaler:
5969  0000 88            	push	a
5970       00000000      OFST:	set	0
5973                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5975                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
5975                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
5977  0001 c65259        	ld	a,21081
5978  0004 a4f3          	and	a,#243
5979  0006 1a01          	or	a,(OFST+1,sp)
5980  0008 c75259        	ld	21081,a
5981                     ; 1873 }
5984  000b 84            	pop	a
5985  000c 81            	ret
6021                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
6021                     ; 1886 {
6022                     .text:	section	.text,new
6023  0000               _TIM1_SetIC3Prescaler:
6025  0000 88            	push	a
6026       00000000      OFST:	set	0
6029                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
6031                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
6031                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
6033  0001 c6525a        	ld	a,21082
6034  0004 a4f3          	and	a,#243
6035  0006 1a01          	or	a,(OFST+1,sp)
6036  0008 c7525a        	ld	21082,a
6037                     ; 1894 }
6040  000b 84            	pop	a
6041  000c 81            	ret
6077                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6077                     ; 1907 {
6078                     .text:	section	.text,new
6079  0000               _TIM1_SetIC4Prescaler:
6081  0000 88            	push	a
6082       00000000      OFST:	set	0
6085                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6087                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
6087                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
6089  0001 c6525b        	ld	a,21083
6090  0004 a4f3          	and	a,#243
6091  0006 1a01          	or	a,(OFST+1,sp)
6092  0008 c7525b        	ld	21083,a
6093                     ; 1915 }
6096  000b 84            	pop	a
6097  000c 81            	ret
6149                     ; 1922 uint16_t TIM1_GetCapture1(void)
6149                     ; 1923 {
6150                     .text:	section	.text,new
6151  0000               _TIM1_GetCapture1:
6153  0000 5204          	subw	sp,#4
6154       00000004      OFST:	set	4
6157                     ; 1926   uint16_t tmpccr1 = 0;
6159                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
6163                     ; 1929   tmpccr1h = TIM1->CCR1H;
6165  0002 c65265        	ld	a,21093
6166  0005 6b02          	ld	(OFST-2,sp),a
6168                     ; 1930   tmpccr1l = TIM1->CCR1L;
6170  0007 c65266        	ld	a,21094
6171  000a 6b01          	ld	(OFST-3,sp),a
6173                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
6175  000c 7b01          	ld	a,(OFST-3,sp)
6176  000e 5f            	clrw	x
6177  000f 97            	ld	xl,a
6178  0010 1f03          	ldw	(OFST-1,sp),x
6180                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6182  0012 7b02          	ld	a,(OFST-2,sp)
6183  0014 5f            	clrw	x
6184  0015 97            	ld	xl,a
6185  0016 4f            	clr	a
6186  0017 02            	rlwa	x,a
6187  0018 01            	rrwa	x,a
6188  0019 1a04          	or	a,(OFST+0,sp)
6189  001b 01            	rrwa	x,a
6190  001c 1a03          	or	a,(OFST-1,sp)
6191  001e 01            	rrwa	x,a
6192  001f 1f03          	ldw	(OFST-1,sp),x
6194                     ; 1935   return (uint16_t)tmpccr1;
6196  0021 1e03          	ldw	x,(OFST-1,sp)
6199  0023 5b04          	addw	sp,#4
6200  0025 81            	ret
6252                     ; 1943 uint16_t TIM1_GetCapture2(void)
6252                     ; 1944 {
6253                     .text:	section	.text,new
6254  0000               _TIM1_GetCapture2:
6256  0000 5204          	subw	sp,#4
6257       00000004      OFST:	set	4
6260                     ; 1947   uint16_t tmpccr2 = 0;
6262                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
6266                     ; 1950   tmpccr2h = TIM1->CCR2H;
6268  0002 c65267        	ld	a,21095
6269  0005 6b02          	ld	(OFST-2,sp),a
6271                     ; 1951   tmpccr2l = TIM1->CCR2L;
6273  0007 c65268        	ld	a,21096
6274  000a 6b01          	ld	(OFST-3,sp),a
6276                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
6278  000c 7b01          	ld	a,(OFST-3,sp)
6279  000e 5f            	clrw	x
6280  000f 97            	ld	xl,a
6281  0010 1f03          	ldw	(OFST-1,sp),x
6283                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6285  0012 7b02          	ld	a,(OFST-2,sp)
6286  0014 5f            	clrw	x
6287  0015 97            	ld	xl,a
6288  0016 4f            	clr	a
6289  0017 02            	rlwa	x,a
6290  0018 01            	rrwa	x,a
6291  0019 1a04          	or	a,(OFST+0,sp)
6292  001b 01            	rrwa	x,a
6293  001c 1a03          	or	a,(OFST-1,sp)
6294  001e 01            	rrwa	x,a
6295  001f 1f03          	ldw	(OFST-1,sp),x
6297                     ; 1956   return (uint16_t)tmpccr2;
6299  0021 1e03          	ldw	x,(OFST-1,sp)
6302  0023 5b04          	addw	sp,#4
6303  0025 81            	ret
6355                     ; 1964 uint16_t TIM1_GetCapture3(void)
6355                     ; 1965 {
6356                     .text:	section	.text,new
6357  0000               _TIM1_GetCapture3:
6359  0000 5204          	subw	sp,#4
6360       00000004      OFST:	set	4
6363                     ; 1967   uint16_t tmpccr3 = 0;
6365                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
6369                     ; 1970   tmpccr3h = TIM1->CCR3H;
6371  0002 c65269        	ld	a,21097
6372  0005 6b02          	ld	(OFST-2,sp),a
6374                     ; 1971   tmpccr3l = TIM1->CCR3L;
6376  0007 c6526a        	ld	a,21098
6377  000a 6b01          	ld	(OFST-3,sp),a
6379                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
6381  000c 7b01          	ld	a,(OFST-3,sp)
6382  000e 5f            	clrw	x
6383  000f 97            	ld	xl,a
6384  0010 1f03          	ldw	(OFST-1,sp),x
6386                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6388  0012 7b02          	ld	a,(OFST-2,sp)
6389  0014 5f            	clrw	x
6390  0015 97            	ld	xl,a
6391  0016 4f            	clr	a
6392  0017 02            	rlwa	x,a
6393  0018 01            	rrwa	x,a
6394  0019 1a04          	or	a,(OFST+0,sp)
6395  001b 01            	rrwa	x,a
6396  001c 1a03          	or	a,(OFST-1,sp)
6397  001e 01            	rrwa	x,a
6398  001f 1f03          	ldw	(OFST-1,sp),x
6400                     ; 1976   return (uint16_t)tmpccr3;
6402  0021 1e03          	ldw	x,(OFST-1,sp)
6405  0023 5b04          	addw	sp,#4
6406  0025 81            	ret
6458                     ; 1984 uint16_t TIM1_GetCapture4(void)
6458                     ; 1985 {
6459                     .text:	section	.text,new
6460  0000               _TIM1_GetCapture4:
6462  0000 5204          	subw	sp,#4
6463       00000004      OFST:	set	4
6466                     ; 1987   uint16_t tmpccr4 = 0;
6468                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
6472                     ; 1990   tmpccr4h = TIM1->CCR4H;
6474  0002 c6526b        	ld	a,21099
6475  0005 6b02          	ld	(OFST-2,sp),a
6477                     ; 1991   tmpccr4l = TIM1->CCR4L;
6479  0007 c6526c        	ld	a,21100
6480  000a 6b01          	ld	(OFST-3,sp),a
6482                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
6484  000c 7b01          	ld	a,(OFST-3,sp)
6485  000e 5f            	clrw	x
6486  000f 97            	ld	xl,a
6487  0010 1f03          	ldw	(OFST-1,sp),x
6489                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
6491  0012 7b02          	ld	a,(OFST-2,sp)
6492  0014 5f            	clrw	x
6493  0015 97            	ld	xl,a
6494  0016 4f            	clr	a
6495  0017 02            	rlwa	x,a
6496  0018 01            	rrwa	x,a
6497  0019 1a04          	or	a,(OFST+0,sp)
6498  001b 01            	rrwa	x,a
6499  001c 1a03          	or	a,(OFST-1,sp)
6500  001e 01            	rrwa	x,a
6501  001f 1f03          	ldw	(OFST-1,sp),x
6503                     ; 1996   return (uint16_t)tmpccr4;
6505  0021 1e03          	ldw	x,(OFST-1,sp)
6508  0023 5b04          	addw	sp,#4
6509  0025 81            	ret
6543                     ; 2004 uint16_t TIM1_GetCounter(void)
6543                     ; 2005 {
6544                     .text:	section	.text,new
6545  0000               _TIM1_GetCounter:
6547  0000 89            	pushw	x
6548       00000002      OFST:	set	2
6551                     ; 2006   uint16_t tmpcntr = 0;
6553                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
6555  0001 c6525e        	ld	a,21086
6556  0004 5f            	clrw	x
6557  0005 97            	ld	xl,a
6558  0006 4f            	clr	a
6559  0007 02            	rlwa	x,a
6560  0008 1f01          	ldw	(OFST-1,sp),x
6562                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
6564  000a c6525f        	ld	a,21087
6565  000d 5f            	clrw	x
6566  000e 97            	ld	xl,a
6567  000f 01            	rrwa	x,a
6568  0010 1a02          	or	a,(OFST+0,sp)
6569  0012 01            	rrwa	x,a
6570  0013 1a01          	or	a,(OFST-1,sp)
6571  0015 01            	rrwa	x,a
6574  0016 5b02          	addw	sp,#2
6575  0018 81            	ret
6609                     ; 2019 uint16_t TIM1_GetPrescaler(void)
6609                     ; 2020 {
6610                     .text:	section	.text,new
6611  0000               _TIM1_GetPrescaler:
6613  0000 89            	pushw	x
6614       00000002      OFST:	set	2
6617                     ; 2021   uint16_t temp = 0;
6619                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
6621  0001 c65260        	ld	a,21088
6622  0004 5f            	clrw	x
6623  0005 97            	ld	xl,a
6624  0006 4f            	clr	a
6625  0007 02            	rlwa	x,a
6626  0008 1f01          	ldw	(OFST-1,sp),x
6628                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
6630  000a c65261        	ld	a,21089
6631  000d 5f            	clrw	x
6632  000e 97            	ld	xl,a
6633  000f 01            	rrwa	x,a
6634  0010 1a02          	or	a,(OFST+0,sp)
6635  0012 01            	rrwa	x,a
6636  0013 1a01          	or	a,(OFST-1,sp)
6637  0015 01            	rrwa	x,a
6640  0016 5b02          	addw	sp,#2
6641  0018 81            	ret
6815                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6815                     ; 2048 {
6816                     .text:	section	.text,new
6817  0000               _TIM1_GetFlagStatus:
6819  0000 89            	pushw	x
6820  0001 89            	pushw	x
6821       00000002      OFST:	set	2
6824                     ; 2049   FlagStatus bitstatus = RESET;
6826                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
6830                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6832                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
6834  0002 9f            	ld	a,xl
6835  0003 c45255        	and	a,21077
6836  0006 6b01          	ld	(OFST-1,sp),a
6838                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
6840  0008 7b03          	ld	a,(OFST+1,sp)
6841  000a 6b02          	ld	(OFST+0,sp),a
6843                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
6845  000c c65256        	ld	a,21078
6846  000f 1402          	and	a,(OFST+0,sp)
6847  0011 1a01          	or	a,(OFST-1,sp)
6848  0013 2706          	jreq	L5643
6849                     ; 2060     bitstatus = SET;
6851  0015 a601          	ld	a,#1
6852  0017 6b02          	ld	(OFST+0,sp),a
6855  0019 2002          	jra	L7643
6856  001b               L5643:
6857                     ; 2064     bitstatus = RESET;
6859  001b 0f02          	clr	(OFST+0,sp)
6861  001d               L7643:
6862                     ; 2066   return (FlagStatus)(bitstatus);
6864  001d 7b02          	ld	a,(OFST+0,sp)
6867  001f 5b04          	addw	sp,#4
6868  0021 81            	ret
6903                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6903                     ; 2088 {
6904                     .text:	section	.text,new
6905  0000               _TIM1_ClearFlag:
6907  0000 89            	pushw	x
6908       00000000      OFST:	set	0
6911                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6913                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
6915  0001 9f            	ld	a,xl
6916  0002 43            	cpl	a
6917  0003 c75255        	ld	21077,a
6918                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
6918                     ; 2095                         (uint8_t)0x1E);
6920  0006 7b01          	ld	a,(OFST+1,sp)
6921  0008 43            	cpl	a
6922  0009 a41e          	and	a,#30
6923  000b c75256        	ld	21078,a
6924                     ; 2096 }
6927  000e 85            	popw	x
6928  000f 81            	ret
6992                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6992                     ; 2113 {
6993                     .text:	section	.text,new
6994  0000               _TIM1_GetITStatus:
6996  0000 88            	push	a
6997  0001 89            	pushw	x
6998       00000002      OFST:	set	2
7001                     ; 2114   ITStatus bitstatus = RESET;
7003                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
7007                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
7009                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
7011  0002 c45255        	and	a,21077
7012  0005 6b01          	ld	(OFST-1,sp),a
7014                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
7016  0007 c65254        	ld	a,21076
7017  000a 1403          	and	a,(OFST+1,sp)
7018  000c 6b02          	ld	(OFST+0,sp),a
7020                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
7022  000e 0d01          	tnz	(OFST-1,sp)
7023  0010 270a          	jreq	L1453
7025  0012 0d02          	tnz	(OFST+0,sp)
7026  0014 2706          	jreq	L1453
7027                     ; 2126     bitstatus = SET;
7029  0016 a601          	ld	a,#1
7030  0018 6b02          	ld	(OFST+0,sp),a
7033  001a 2002          	jra	L3453
7034  001c               L1453:
7035                     ; 2130     bitstatus = RESET;
7037  001c 0f02          	clr	(OFST+0,sp)
7039  001e               L3453:
7040                     ; 2132   return (ITStatus)(bitstatus);
7042  001e 7b02          	ld	a,(OFST+0,sp)
7045  0020 5b03          	addw	sp,#3
7046  0022 81            	ret
7082                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
7082                     ; 2150 {
7083                     .text:	section	.text,new
7084  0000               _TIM1_ClearITPendingBit:
7088                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
7090                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
7092  0000 43            	cpl	a
7093  0001 c75255        	ld	21077,a
7094                     ; 2156 }
7097  0004 81            	ret
7149                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
7149                     ; 2175                        uint8_t TIM1_ICSelection,
7149                     ; 2176                        uint8_t TIM1_ICFilter)
7149                     ; 2177 {
7150                     .text:	section	.text,new
7151  0000               L3_TI1_Config:
7153  0000 89            	pushw	x
7154  0001 88            	push	a
7155       00000001      OFST:	set	1
7158                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7160  0002 7211525c      	bres	21084,#0
7161                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
7161                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7163  0006 7b06          	ld	a,(OFST+5,sp)
7164  0008 97            	ld	xl,a
7165  0009 a610          	ld	a,#16
7166  000b 42            	mul	x,a
7167  000c 9f            	ld	a,xl
7168  000d 1a03          	or	a,(OFST+2,sp)
7169  000f 6b01          	ld	(OFST+0,sp),a
7171  0011 c65258        	ld	a,21080
7172  0014 a40c          	and	a,#12
7173  0016 1a01          	or	a,(OFST+0,sp)
7174  0018 c75258        	ld	21080,a
7175                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7177  001b 0d02          	tnz	(OFST+1,sp)
7178  001d 2706          	jreq	L1163
7179                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
7181  001f 7212525c      	bset	21084,#1
7183  0023 2004          	jra	L3163
7184  0025               L1163:
7185                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
7187  0025 7213525c      	bres	21084,#1
7188  0029               L3163:
7189                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7191  0029 7210525c      	bset	21084,#0
7192                     ; 2197 }
7195  002d 5b03          	addw	sp,#3
7196  002f 81            	ret
7248                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
7248                     ; 2216                        uint8_t TIM1_ICSelection,
7248                     ; 2217                        uint8_t TIM1_ICFilter)
7248                     ; 2218 {
7249                     .text:	section	.text,new
7250  0000               L5_TI2_Config:
7252  0000 89            	pushw	x
7253  0001 88            	push	a
7254       00000001      OFST:	set	1
7257                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7259  0002 7219525c      	bres	21084,#4
7260                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
7260                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7262  0006 7b06          	ld	a,(OFST+5,sp)
7263  0008 97            	ld	xl,a
7264  0009 a610          	ld	a,#16
7265  000b 42            	mul	x,a
7266  000c 9f            	ld	a,xl
7267  000d 1a03          	or	a,(OFST+2,sp)
7268  000f 6b01          	ld	(OFST+0,sp),a
7270  0011 c65259        	ld	a,21081
7271  0014 a40c          	and	a,#12
7272  0016 1a01          	or	a,(OFST+0,sp)
7273  0018 c75259        	ld	21081,a
7274                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7276  001b 0d02          	tnz	(OFST+1,sp)
7277  001d 2706          	jreq	L3463
7278                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
7280  001f 721a525c      	bset	21084,#5
7282  0023 2004          	jra	L5463
7283  0025               L3463:
7284                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7286  0025 721b525c      	bres	21084,#5
7287  0029               L5463:
7288                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7290  0029 7218525c      	bset	21084,#4
7291                     ; 2236 }
7294  002d 5b03          	addw	sp,#3
7295  002f 81            	ret
7347                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
7347                     ; 2255                        uint8_t TIM1_ICSelection,
7347                     ; 2256                        uint8_t TIM1_ICFilter)
7347                     ; 2257 {
7348                     .text:	section	.text,new
7349  0000               L7_TI3_Config:
7351  0000 89            	pushw	x
7352  0001 88            	push	a
7353       00000001      OFST:	set	1
7356                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
7358  0002 7211525d      	bres	21085,#0
7359                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
7359                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7361  0006 7b06          	ld	a,(OFST+5,sp)
7362  0008 97            	ld	xl,a
7363  0009 a610          	ld	a,#16
7364  000b 42            	mul	x,a
7365  000c 9f            	ld	a,xl
7366  000d 1a03          	or	a,(OFST+2,sp)
7367  000f 6b01          	ld	(OFST+0,sp),a
7369  0011 c6525a        	ld	a,21082
7370  0014 a40c          	and	a,#12
7371  0016 1a01          	or	a,(OFST+0,sp)
7372  0018 c7525a        	ld	21082,a
7373                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7375  001b 0d02          	tnz	(OFST+1,sp)
7376  001d 2706          	jreq	L5763
7377                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
7379  001f 7212525d      	bset	21085,#1
7381  0023 2004          	jra	L7763
7382  0025               L5763:
7383                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
7385  0025 7213525d      	bres	21085,#1
7386  0029               L7763:
7387                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7389  0029 7210525d      	bset	21085,#0
7390                     ; 2276 }
7393  002d 5b03          	addw	sp,#3
7394  002f 81            	ret
7446                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
7446                     ; 2295                        uint8_t TIM1_ICSelection,
7446                     ; 2296                        uint8_t TIM1_ICFilter)
7446                     ; 2297 {
7447                     .text:	section	.text,new
7448  0000               L11_TI4_Config:
7450  0000 89            	pushw	x
7451  0001 88            	push	a
7452       00000001      OFST:	set	1
7455                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
7457  0002 7219525d      	bres	21085,#4
7458                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
7458                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7460  0006 7b06          	ld	a,(OFST+5,sp)
7461  0008 97            	ld	xl,a
7462  0009 a610          	ld	a,#16
7463  000b 42            	mul	x,a
7464  000c 9f            	ld	a,xl
7465  000d 1a03          	or	a,(OFST+2,sp)
7466  000f 6b01          	ld	(OFST+0,sp),a
7468  0011 c6525b        	ld	a,21083
7469  0014 a40c          	and	a,#12
7470  0016 1a01          	or	a,(OFST+0,sp)
7471  0018 c7525b        	ld	21083,a
7472                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7474  001b 0d02          	tnz	(OFST+1,sp)
7475  001d 2706          	jreq	L7273
7476                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
7478  001f 721a525d      	bset	21085,#5
7480  0023 2004          	jra	L1373
7481  0025               L7273:
7482                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
7484  0025 721b525d      	bres	21085,#5
7485  0029               L1373:
7486                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7488  0029 7218525d      	bset	21085,#4
7489                     ; 2317 }
7492  002d 5b03          	addw	sp,#3
7493  002f 81            	ret
7506                     	xdef	_TIM1_ClearITPendingBit
7507                     	xdef	_TIM1_GetITStatus
7508                     	xdef	_TIM1_ClearFlag
7509                     	xdef	_TIM1_GetFlagStatus
7510                     	xdef	_TIM1_GetPrescaler
7511                     	xdef	_TIM1_GetCounter
7512                     	xdef	_TIM1_GetCapture4
7513                     	xdef	_TIM1_GetCapture3
7514                     	xdef	_TIM1_GetCapture2
7515                     	xdef	_TIM1_GetCapture1
7516                     	xdef	_TIM1_SetIC4Prescaler
7517                     	xdef	_TIM1_SetIC3Prescaler
7518                     	xdef	_TIM1_SetIC2Prescaler
7519                     	xdef	_TIM1_SetIC1Prescaler
7520                     	xdef	_TIM1_SetCompare4
7521                     	xdef	_TIM1_SetCompare3
7522                     	xdef	_TIM1_SetCompare2
7523                     	xdef	_TIM1_SetCompare1
7524                     	xdef	_TIM1_SetAutoreload
7525                     	xdef	_TIM1_SetCounter
7526                     	xdef	_TIM1_SelectOCxM
7527                     	xdef	_TIM1_CCxNCmd
7528                     	xdef	_TIM1_CCxCmd
7529                     	xdef	_TIM1_OC4PolarityConfig
7530                     	xdef	_TIM1_OC3NPolarityConfig
7531                     	xdef	_TIM1_OC3PolarityConfig
7532                     	xdef	_TIM1_OC2NPolarityConfig
7533                     	xdef	_TIM1_OC2PolarityConfig
7534                     	xdef	_TIM1_OC1NPolarityConfig
7535                     	xdef	_TIM1_OC1PolarityConfig
7536                     	xdef	_TIM1_GenerateEvent
7537                     	xdef	_TIM1_OC4FastConfig
7538                     	xdef	_TIM1_OC3FastConfig
7539                     	xdef	_TIM1_OC2FastConfig
7540                     	xdef	_TIM1_OC1FastConfig
7541                     	xdef	_TIM1_OC4PreloadConfig
7542                     	xdef	_TIM1_OC3PreloadConfig
7543                     	xdef	_TIM1_OC2PreloadConfig
7544                     	xdef	_TIM1_OC1PreloadConfig
7545                     	xdef	_TIM1_CCPreloadControl
7546                     	xdef	_TIM1_SelectCOM
7547                     	xdef	_TIM1_ARRPreloadConfig
7548                     	xdef	_TIM1_ForcedOC4Config
7549                     	xdef	_TIM1_ForcedOC3Config
7550                     	xdef	_TIM1_ForcedOC2Config
7551                     	xdef	_TIM1_ForcedOC1Config
7552                     	xdef	_TIM1_CounterModeConfig
7553                     	xdef	_TIM1_PrescalerConfig
7554                     	xdef	_TIM1_EncoderInterfaceConfig
7555                     	xdef	_TIM1_SelectMasterSlaveMode
7556                     	xdef	_TIM1_SelectSlaveMode
7557                     	xdef	_TIM1_SelectOutputTrigger
7558                     	xdef	_TIM1_SelectOnePulseMode
7559                     	xdef	_TIM1_SelectHallSensor
7560                     	xdef	_TIM1_UpdateRequestConfig
7561                     	xdef	_TIM1_UpdateDisableConfig
7562                     	xdef	_TIM1_SelectInputTrigger
7563                     	xdef	_TIM1_TIxExternalClockConfig
7564                     	xdef	_TIM1_ETRConfig
7565                     	xdef	_TIM1_ETRClockMode2Config
7566                     	xdef	_TIM1_ETRClockMode1Config
7567                     	xdef	_TIM1_InternalClockConfig
7568                     	xdef	_TIM1_ITConfig
7569                     	xdef	_TIM1_CtrlPWMOutputs
7570                     	xdef	_TIM1_Cmd
7571                     	xdef	_TIM1_PWMIConfig
7572                     	xdef	_TIM1_ICInit
7573                     	xdef	_TIM1_BDTRConfig
7574                     	xdef	_TIM1_OC4Init
7575                     	xdef	_TIM1_OC3Init
7576                     	xdef	_TIM1_OC2Init
7577                     	xdef	_TIM1_OC1Init
7578                     	xdef	_TIM1_TimeBaseInit
7579                     	xdef	_TIM1_DeInit
7598                     	end
