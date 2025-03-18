   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  48                     ; 5 void Start_Timer(void)
  48                     ; 6 {
  50                     .text:	section	.text,new
  51  0000               _Start_Timer:
  55                     ; 7 	TIM1_DeInit();	
  57  0000 cd0000        	call	_TIM1_DeInit
  59                     ; 8 	TIM1_TimeBaseInit(15, 
  59                     ; 9                        TIM1_COUNTERMODE_UP,
  59                     ; 10                        999,TIM1_OPMODE_REPETITIVE);
  61  0003 4b00          	push	#0
  62  0005 ae03e7        	ldw	x,#999
  63  0008 89            	pushw	x
  64  0009 4b00          	push	#0
  65  000b ae000f        	ldw	x,#15
  66  000e cd0000        	call	_TIM1_TimeBaseInit
  68  0011 5b04          	addw	sp,#4
  69                     ; 11 	TIM1_Cmd(ENABLE);
  71  0013 a601          	ld	a,#1
  72  0015 cd0000        	call	_TIM1_Cmd
  74                     ; 12 }
  77  0018 81            	ret
 101                     ; 13 void Stop_Timer(void)
 101                     ; 14 {
 102                     .text:	section	.text,new
 103  0000               _Stop_Timer:
 107                     ; 15 	TIM1_Cmd(DISABLE);		
 109  0000 4f            	clr	a
 110  0001 cd0000        	call	_TIM1_Cmd
 112                     ; 16 }
 115  0004 81            	ret
 168                     ; 17 unsigned int Stop_Read_timer(void)
 168                     ; 18 {
 169                     .text:	section	.text,new
 170  0000               _Stop_Read_timer:
 172  0000 5203          	subw	sp,#3
 173       00000003      OFST:	set	3
 176                     ; 22 	sreg = SREG;
 178  0002 7b03          	ld	a,(OFST+0,sp)
 179  0004 6b03          	ld	(OFST+0,sp),a
 181                     ; 23 	disableInterrupts();
 184  0006 9b            sim
 186                     ; 24 	val = TIM1->CNTRL;
 189  0007 c6525f        	ld	a,21087
 190  000a 5f            	clrw	x
 191  000b 97            	ld	xl,a
 192  000c 1f01          	ldw	(OFST-2,sp),x
 194                     ; 25 	SREG = sreg;
 196                     ; 27 	return val;
 198  000e 1e01          	ldw	x,(OFST-2,sp)
 201  0010 5b03          	addw	sp,#3
 202  0012 81            	ret
 255                     ; 29 unsigned int  Read_timer(void)
 255                     ; 30 {
 256                     .text:	section	.text,new
 257  0000               _Read_timer:
 259  0000 5203          	subw	sp,#3
 260       00000003      OFST:	set	3
 263                     ; 33 	TIM1->CR1=0x00;
 265  0002 725f5250      	clr	21072
 266                     ; 34 	sreg = SREG;
 268  0006 7b03          	ld	a,(OFST+0,sp)
 269  0008 6b03          	ld	(OFST+0,sp),a
 271                     ; 35 	disableInterrupts();
 274  000a 9b            sim
 276                     ; 36 	val = TIM1->CNTRL;
 279  000b c6525f        	ld	a,21087
 280  000e 5f            	clrw	x
 281  000f 97            	ld	xl,a
 282  0010 1f01          	ldw	(OFST-2,sp),x
 284                     ; 37 	SREG = sreg;
 286                     ; 39 	return val;
 288  0012 1e01          	ldw	x,(OFST-2,sp)
 291  0014 5b03          	addw	sp,#3
 292  0016 81            	ret
 305                     	xdef	_Read_timer
 306                     	xdef	_Stop_Read_timer
 307                     	xdef	_Stop_Timer
 308                     	xdef	_Start_Timer
 309                     	xref	_TIM1_Cmd
 310                     	xref	_TIM1_TimeBaseInit
 311                     	xref	_TIM1_DeInit
 330                     	end
