   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  46                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  46                     ; 54 {
  47                     .text:	section	.text,new
  48  0000               f_NonHandledInterrupt:
  52                     ; 58 }
  55  0000 80            	iret
  77                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  77                     ; 67 {
  78                     .text:	section	.text,new
  79  0000               f_TRAP_IRQHandler:
  83                     ; 71 }
  86  0000 80            	iret
 108                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 108                     ; 79 
 108                     ; 80 {
 109                     .text:	section	.text,new
 110  0000               f_TLI_IRQHandler:
 114                     ; 84 }
 117  0000 80            	iret
 139                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 139                     ; 92 {
 140                     .text:	section	.text,new
 141  0000               f_AWU_IRQHandler:
 145                     ; 96 }
 148  0000 80            	iret
 170                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 170                     ; 104 {
 171                     .text:	section	.text,new
 172  0000               f_CLK_IRQHandler:
 176                     ; 108 }
 179  0000 80            	iret
 202                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 202                     ; 116 {
 203                     .text:	section	.text,new
 204  0000               f_EXTI_PORTA_IRQHandler:
 208                     ; 120 }
 211  0000 80            	iret
 234                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 234                     ; 128 {
 235                     .text:	section	.text,new
 236  0000               f_EXTI_PORTB_IRQHandler:
 240                     ; 132 }
 243  0000 80            	iret
 266                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 266                     ; 140 {
 267                     .text:	section	.text,new
 268  0000               f_EXTI_PORTC_IRQHandler:
 272                     ; 144 }
 275  0000 80            	iret
 298                     ; 151 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 298                     ; 152 {
 299                     .text:	section	.text,new
 300  0000               f_EXTI_PORTD_IRQHandler:
 304                     ; 156 }
 307  0000 80            	iret
 330                     ; 163 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 330                     ; 164 {
 331                     .text:	section	.text,new
 332  0000               f_EXTI_PORTE_IRQHandler:
 336                     ; 168 }
 339  0000 80            	iret
 361                     ; 215 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 361                     ; 216 {
 362                     .text:	section	.text,new
 363  0000               f_SPI_IRQHandler:
 367                     ; 220 }
 370  0000 80            	iret
 393                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 393                     ; 228 {
 394                     .text:	section	.text,new
 395  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 399                     ; 232 }
 402  0000 80            	iret
 425                     ; 239 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 425                     ; 240 {
 426                     .text:	section	.text,new
 427  0000               f_TIM1_CAP_COM_IRQHandler:
 431                     ; 244 }
 434  0000 80            	iret
 457                     ; 277  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 457                     ; 278  {
 458                     .text:	section	.text,new
 459  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 463                     ; 282  }
 466  0000 80            	iret
 489                     ; 289  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 489                     ; 290  {
 490                     .text:	section	.text,new
 491  0000               f_TIM2_CAP_COM_IRQHandler:
 495                     ; 294  }
 498  0000 80            	iret
 521                     ; 331  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 521                     ; 332  {
 522                     .text:	section	.text,new
 523  0000               f_UART1_TX_IRQHandler:
 527                     ; 336  }
 530  0000 80            	iret
 553                     ; 343  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 553                     ; 344  {
 554                     .text:	section	.text,new
 555  0000               f_UART1_RX_IRQHandler:
 559                     ; 348  }
 562  0000 80            	iret
 584                     ; 382 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 584                     ; 383 {
 585                     .text:	section	.text,new
 586  0000               f_I2C_IRQHandler:
 590                     ; 387 }
 593  0000 80            	iret
 615                     ; 461  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 615                     ; 462  {
 616                     .text:	section	.text,new
 617  0000               f_ADC1_IRQHandler:
 621                     ; 466  }
 624  0000 80            	iret
 647                     ; 487  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 647                     ; 488  {
 648                     .text:	section	.text,new
 649  0000               f_TIM4_UPD_OVF_IRQHandler:
 653                     ; 492  }
 656  0000 80            	iret
 679                     ; 500 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 679                     ; 501 {
 680                     .text:	section	.text,new
 681  0000               f_EEPROM_EEC_IRQHandler:
 685                     ; 505 }
 688  0000 80            	iret
 700                     	xdef	f_EEPROM_EEC_IRQHandler
 701                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 702                     	xdef	f_ADC1_IRQHandler
 703                     	xdef	f_I2C_IRQHandler
 704                     	xdef	f_UART1_RX_IRQHandler
 705                     	xdef	f_UART1_TX_IRQHandler
 706                     	xdef	f_TIM2_CAP_COM_IRQHandler
 707                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 708                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 709                     	xdef	f_TIM1_CAP_COM_IRQHandler
 710                     	xdef	f_SPI_IRQHandler
 711                     	xdef	f_EXTI_PORTE_IRQHandler
 712                     	xdef	f_EXTI_PORTD_IRQHandler
 713                     	xdef	f_EXTI_PORTC_IRQHandler
 714                     	xdef	f_EXTI_PORTB_IRQHandler
 715                     	xdef	f_EXTI_PORTA_IRQHandler
 716                     	xdef	f_CLK_IRQHandler
 717                     	xdef	f_AWU_IRQHandler
 718                     	xdef	f_TLI_IRQHandler
 719                     	xdef	f_TRAP_IRQHandler
 720                     	xdef	f_NonHandledInterrupt
 739                     	end
