   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
 111                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 111                     ; 54 {
 113                     .text:	section	.text,new
 114  0000               _GPIO_DeInit:
 118                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 120  0000 7f            	clr	(x)
 121                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 123  0001 6f02          	clr	(2,x)
 124                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 126  0003 6f03          	clr	(3,x)
 127                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 129  0005 6f04          	clr	(4,x)
 130                     ; 59 }
 133  0007 81            	ret
 373                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 373                     ; 72 {
 374                     .text:	section	.text,new
 375  0000               _GPIO_Init:
 377  0000 89            	pushw	x
 378       00000000      OFST:	set	0
 381                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 383                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 385                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 387  0001 7b05          	ld	a,(OFST+5,sp)
 388  0003 43            	cpl	a
 389  0004 e404          	and	a,(4,x)
 390  0006 e704          	ld	(4,x),a
 391                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 393  0008 7b06          	ld	a,(OFST+6,sp)
 394  000a a580          	bcp	a,#128
 395  000c 271d          	jreq	L771
 396                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 398  000e 7b06          	ld	a,(OFST+6,sp)
 399  0010 a510          	bcp	a,#16
 400  0012 2706          	jreq	L102
 401                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 403  0014 f6            	ld	a,(x)
 404  0015 1a05          	or	a,(OFST+5,sp)
 405  0017 f7            	ld	(x),a
 407  0018 2007          	jra	L302
 408  001a               L102:
 409                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 411  001a 1e01          	ldw	x,(OFST+1,sp)
 412  001c 7b05          	ld	a,(OFST+5,sp)
 413  001e 43            	cpl	a
 414  001f f4            	and	a,(x)
 415  0020 f7            	ld	(x),a
 416  0021               L302:
 417                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 419  0021 1e01          	ldw	x,(OFST+1,sp)
 420  0023 e602          	ld	a,(2,x)
 421  0025 1a05          	or	a,(OFST+5,sp)
 422  0027 e702          	ld	(2,x),a
 424  0029 2009          	jra	L502
 425  002b               L771:
 426                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 428  002b 1e01          	ldw	x,(OFST+1,sp)
 429  002d 7b05          	ld	a,(OFST+5,sp)
 430  002f 43            	cpl	a
 431  0030 e402          	and	a,(2,x)
 432  0032 e702          	ld	(2,x),a
 433  0034               L502:
 434                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 436  0034 7b06          	ld	a,(OFST+6,sp)
 437  0036 a540          	bcp	a,#64
 438  0038 270a          	jreq	L702
 439                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 441  003a 1e01          	ldw	x,(OFST+1,sp)
 442  003c e603          	ld	a,(3,x)
 443  003e 1a05          	or	a,(OFST+5,sp)
 444  0040 e703          	ld	(3,x),a
 446  0042 2009          	jra	L112
 447  0044               L702:
 448                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 450  0044 1e01          	ldw	x,(OFST+1,sp)
 451  0046 7b05          	ld	a,(OFST+5,sp)
 452  0048 43            	cpl	a
 453  0049 e403          	and	a,(3,x)
 454  004b e703          	ld	(3,x),a
 455  004d               L112:
 456                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 458  004d 7b06          	ld	a,(OFST+6,sp)
 459  004f a520          	bcp	a,#32
 460  0051 270a          	jreq	L312
 461                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 463  0053 1e01          	ldw	x,(OFST+1,sp)
 464  0055 e604          	ld	a,(4,x)
 465  0057 1a05          	or	a,(OFST+5,sp)
 466  0059 e704          	ld	(4,x),a
 468  005b 2009          	jra	L512
 469  005d               L312:
 470                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 472  005d 1e01          	ldw	x,(OFST+1,sp)
 473  005f 7b05          	ld	a,(OFST+5,sp)
 474  0061 43            	cpl	a
 475  0062 e404          	and	a,(4,x)
 476  0064 e704          	ld	(4,x),a
 477  0066               L512:
 478                     ; 131 }
 481  0066 85            	popw	x
 482  0067 81            	ret
 528                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 528                     ; 142 {
 529                     .text:	section	.text,new
 530  0000               _GPIO_Write:
 532  0000 89            	pushw	x
 533       00000000      OFST:	set	0
 536                     ; 143   GPIOx->ODR = PortVal;
 538  0001 7b05          	ld	a,(OFST+5,sp)
 539  0003 1e01          	ldw	x,(OFST+1,sp)
 540  0005 f7            	ld	(x),a
 541                     ; 144 }
 544  0006 85            	popw	x
 545  0007 81            	ret
 592                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 592                     ; 155 {
 593                     .text:	section	.text,new
 594  0000               _GPIO_WriteHigh:
 596  0000 89            	pushw	x
 597       00000000      OFST:	set	0
 600                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 602  0001 f6            	ld	a,(x)
 603  0002 1a05          	or	a,(OFST+5,sp)
 604  0004 f7            	ld	(x),a
 605                     ; 157 }
 608  0005 85            	popw	x
 609  0006 81            	ret
 656                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 656                     ; 168 {
 657                     .text:	section	.text,new
 658  0000               _GPIO_WriteLow:
 660  0000 89            	pushw	x
 661       00000000      OFST:	set	0
 664                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 666  0001 7b05          	ld	a,(OFST+5,sp)
 667  0003 43            	cpl	a
 668  0004 f4            	and	a,(x)
 669  0005 f7            	ld	(x),a
 670                     ; 170 }
 673  0006 85            	popw	x
 674  0007 81            	ret
 721                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 721                     ; 181 {
 722                     .text:	section	.text,new
 723  0000               _GPIO_WriteReverse:
 725  0000 89            	pushw	x
 726       00000000      OFST:	set	0
 729                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 731  0001 f6            	ld	a,(x)
 732  0002 1805          	xor	a,(OFST+5,sp)
 733  0004 f7            	ld	(x),a
 734                     ; 183 }
 737  0005 85            	popw	x
 738  0006 81            	ret
 776                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 776                     ; 192 {
 777                     .text:	section	.text,new
 778  0000               _GPIO_ReadOutputData:
 782                     ; 193   return ((uint8_t)GPIOx->ODR);
 784  0000 f6            	ld	a,(x)
 787  0001 81            	ret
 824                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 824                     ; 203 {
 825                     .text:	section	.text,new
 826  0000               _GPIO_ReadInputData:
 830                     ; 204   return ((uint8_t)GPIOx->IDR);
 832  0000 e601          	ld	a,(1,x)
 835  0002 81            	ret
 903                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 903                     ; 214 {
 904                     .text:	section	.text,new
 905  0000               _GPIO_ReadInputPin:
 907  0000 89            	pushw	x
 908       00000000      OFST:	set	0
 911                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 913  0001 e601          	ld	a,(1,x)
 914  0003 1405          	and	a,(OFST+5,sp)
 917  0005 85            	popw	x
 918  0006 81            	ret
 996                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
 996                     ; 226 {
 997                     .text:	section	.text,new
 998  0000               _GPIO_ExternalPullUpConfig:
1000  0000 89            	pushw	x
1001       00000000      OFST:	set	0
1004                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1006                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1008                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1010  0001 0d06          	tnz	(OFST+6,sp)
1011  0003 2708          	jreq	L374
1012                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1014  0005 e603          	ld	a,(3,x)
1015  0007 1a05          	or	a,(OFST+5,sp)
1016  0009 e703          	ld	(3,x),a
1018  000b 2009          	jra	L574
1019  000d               L374:
1020                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1022  000d 1e01          	ldw	x,(OFST+1,sp)
1023  000f 7b05          	ld	a,(OFST+5,sp)
1024  0011 43            	cpl	a
1025  0012 e403          	and	a,(3,x)
1026  0014 e703          	ld	(3,x),a
1027  0016               L574:
1028                     ; 238 }
1031  0016 85            	popw	x
1032  0017 81            	ret
1045                     	xdef	_GPIO_ExternalPullUpConfig
1046                     	xdef	_GPIO_ReadInputPin
1047                     	xdef	_GPIO_ReadOutputData
1048                     	xdef	_GPIO_ReadInputData
1049                     	xdef	_GPIO_WriteReverse
1050                     	xdef	_GPIO_WriteLow
1051                     	xdef	_GPIO_WriteHigh
1052                     	xdef	_GPIO_Write
1053                     	xdef	_GPIO_Init
1054                     	xdef	_GPIO_DeInit
1073                     	end
