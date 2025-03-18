   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  17                     	bsct
  18  0000               _Revice_Flag:
  19  0000 00            	dc.b	0
  20  0001               L3_Time_Falling:
  21  0001 0000          	dc.w	0
  22  0003               L5_Time_Rising:
  23  0003 0000          	dc.w	0
  24  0005               L7_Start_Sync:
  25  0005 0000          	dc.w	0
  26  0007               L11_Bit_Index:
  27  0007 00            	dc.b	0
  98                     ; 26 INTERRUPT_HANDLER(EXT_IRQ, 6)    // Intrupt Of Micro
  98                     ; 27 {
  99                     .text:	section	.text,new
 100  0000               f_EXT_IRQ:
 102  0000 8a            	push	cc
 103  0001 84            	pop	a
 104  0002 a4bf          	and	a,#191
 105  0004 88            	push	a
 106  0005 86            	pop	cc
 107  0006 3b0002        	push	c_x+2
 108  0009 be00          	ldw	x,c_x
 109  000b 89            	pushw	x
 110  000c 3b0002        	push	c_y+2
 111  000f be00          	ldw	x,c_y
 112  0011 89            	pushw	x
 115                     ; 33     if(EXTI->CR1==0x03) // Rising Edge
 117  0012 c650a0        	ld	a,20640
 118  0015 a103          	cp	a,#3
 119  0017 2671          	jrne	L35
 120                     ; 35        EXTI->CR1=0x02; // Make As Falling Edge
 122  0019 350250a0      	mov	20640,#2
 123                     ; 37             Time_Falling =Stop_Read_timer();
 125  001d cd0000        	call	_Stop_Read_timer
 127  0020 bf01          	ldw	L3_Time_Falling,x
 128                     ; 39             if(IS_Valid_Pulse_Len(Time_Rising,Time_Falling)) /*If Valid Pulse Len*/
 130  0022 be03          	ldw	x,L5_Time_Rising
 131  0024 a300c9        	cpw	x,#201
 132  0027 2557          	jrult	L55
 134  0029 be03          	ldw	x,L5_Time_Rising
 135  002b a33e80        	cpw	x,#16000
 136  002e 2450          	jruge	L55
 138  0030 be01          	ldw	x,L3_Time_Falling
 139  0032 a33e80        	cpw	x,#16000
 140  0035 2449          	jruge	L55
 142  0037 be01          	ldw	x,L3_Time_Falling
 143  0039 a300c9        	cpw	x,#201
 144  003c 2542          	jrult	L55
 145                     ; 42                 if(IS_Sync_Start_Pulse(Time_Rising,Time_Falling))
 147  003e be03          	ldw	x,L5_Time_Rising
 148  0040 a619          	ld	a,#25
 149  0042 cd0000        	call	c_bmulx
 151  0045 b301          	cpw	x,L3_Time_Falling
 152  0047 2407          	jruge	L75
 153                     ; 44                     Start_Sync = 1;
 155  0049 ae0001        	ldw	x,#1
 156  004c bf05          	ldw	L7_Start_Sync,x
 158  004e 2035          	jra	L17
 159  0050               L75:
 160                     ; 49                     if(Start_Sync==1)    // Start Sended
 162  0050 be05          	ldw	x,L7_Start_Sync
 163  0052 a30001        	cpw	x,#1
 164  0055 262e          	jrne	L17
 165                     ; 51                         if(Bit_Index < 24)
 167  0057 b607          	ld	a,L11_Bit_Index
 168  0059 a118          	cp	a,#24
 169  005b 2418          	jruge	L56
 170                     ; 53                             Remode_Data[Bit_Index] = !Bit_IS_Zero(Time_Rising,Time_Falling);
 172  005d b607          	ld	a,L11_Bit_Index
 173  005f 5f            	clrw	x
 174  0060 97            	ld	xl,a
 175  0061 89            	pushw	x
 176  0062 be03          	ldw	x,L5_Time_Rising
 177  0064 58            	sllw	x
 178  0065 b301          	cpw	x,L3_Time_Falling
 179  0067 2504          	jrult	L6
 180  0069 a601          	ld	a,#1
 181  006b 2001          	jra	L01
 182  006d               L6:
 183  006d 4f            	clr	a
 184  006e               L01:
 185  006e 85            	popw	x
 186  006f e701          	ld	(_Remode_Data,x),a
 187                     ; 54                             Bit_Index++;
 189  0071 3c07          	inc	L11_Bit_Index
 191  0073 2010          	jra	L17
 192  0075               L56:
 193                     ; 58                             Bit_Index = 0;
 195  0075 3f07          	clr	L11_Bit_Index
 196                     ; 59                             Start_Sync = 0;
 198  0077 5f            	clrw	x
 199  0078 bf05          	ldw	L7_Start_Sync,x
 200                     ; 60                             Revice_Flag = 1;
 202  007a 35010000      	mov	_Revice_Flag,#1
 203  007e 2005          	jra	L17
 204  0080               L55:
 205                     ; 69                 Start_Sync = 0;
 207  0080 5f            	clrw	x
 208  0081 bf05          	ldw	L7_Start_Sync,x
 209                     ; 70                 Bit_Index = 0;
 211  0083 3f07          	clr	L11_Bit_Index
 212  0085               L17:
 213                     ; 73             Start_Timer();
 215  0085 cd0000        	call	_Start_Timer
 218  0088 200c          	jra	L37
 219  008a               L35:
 220                     ; 77         EXTI->CR1=0x03; // Make As Rising Edge
 222  008a 350350a0      	mov	20640,#3
 223                     ; 78         Time_Rising = Stop_Read_timer() ;
 225  008e cd0000        	call	_Stop_Read_timer
 227  0091 bf03          	ldw	L5_Time_Rising,x
 228                     ; 79         Start_Timer();
 230  0093 cd0000        	call	_Start_Timer
 232  0096               L37:
 233                     ; 81 }
 236  0096 85            	popw	x
 237  0097 bf00          	ldw	c_y,x
 238  0099 320002        	pop	c_y+2
 239  009c 85            	popw	x
 240  009d bf00          	ldw	c_x,x
 241  009f 320002        	pop	c_x+2
 242  00a2 80            	iret
 266                     ; 83 unsigned char    IS_Recive_Valid_Remote(void)
 266                     ; 84 {
 268                     .text:	section	.text,new
 269  0000               _IS_Recive_Valid_Remote:
 273                     ; 85     return (Revice_Flag==1);
 275  0000 b600          	ld	a,_Revice_Flag
 276  0002 a101          	cp	a,#1
 277  0004 2604          	jrne	L41
 278  0006 a601          	ld	a,#1
 279  0008 2001          	jra	L61
 280  000a               L41:
 281  000a 4f            	clr	a
 282  000b               L61:
 285  000b 81            	ret
 323                     ; 88 void Get_Remote_Code(unsigned char *Code)
 323                     ; 89 {
 324                     .text:	section	.text,new
 325  0000               _Get_Remote_Code:
 327  0000 89            	pushw	x
 328       00000000      OFST:	set	0
 331                     ; 90     Code[0] = Code[1]= Code[2] = 0;
 333  0001 6f02          	clr	(2,x)
 334  0003 6f01          	clr	(1,x)
 335  0005 7f            	clr	(x)
 336                     ; 92     for( i=0;i<24;i++)
 338  0006 3f00          	clr	_i
 339  0008               L321:
 340                     ; 94         Code[i/8] |= Remode_Data[i]<<(7-(i%8));
 342  0008 b600          	ld	a,_i
 343  000a 5f            	clrw	x
 344  000b 97            	ld	xl,a
 345  000c 57            	sraw	x
 346  000d 57            	sraw	x
 347  000e 57            	sraw	x
 348  000f 72fb01        	addw	x,(OFST+1,sp)
 349  0012 b600          	ld	a,_i
 350  0014 905f          	clrw	y
 351  0016 9097          	ld	yl,a
 352  0018 90e601        	ld	a,(_Remode_Data,y)
 353  001b 88            	push	a
 354  001c b600          	ld	a,_i
 355  001e a407          	and	a,#7
 356  0020 a007          	sub	a,#7
 357  0022 40            	neg	a
 358  0023 905f          	clrw	y
 359  0025 9097          	ld	yl,a
 360  0027 84            	pop	a
 361  0028 905d          	tnzw	y
 362  002a 2705          	jreq	L22
 363  002c               L42:
 364  002c 48            	sll	a
 365  002d 905a          	decw	y
 366  002f 26fb          	jrne	L42
 367  0031               L22:
 368  0031 fa            	or	a,(x)
 369  0032 f7            	ld	(x),a
 370                     ; 92     for( i=0;i<24;i++)
 372  0033 3c00          	inc	_i
 375  0035 b600          	ld	a,_i
 376  0037 a118          	cp	a,#24
 377  0039 25cd          	jrult	L321
 378                     ; 97     Revice_Flag = 0;
 380  003b 3f00          	clr	_Revice_Flag
 381                     ; 98 }
 384  003d 85            	popw	x
 385  003e 81            	ret
 428                     	xdef	f_EXT_IRQ
 429                     	switch	.ubsct
 430  0000               _i:
 431  0000 00            	ds.b	1
 432                     	xdef	_i
 433                     	xdef	_Get_Remote_Code
 434                     	xdef	_IS_Recive_Valid_Remote
 435                     	xdef	_Revice_Flag
 436  0001               _Remode_Data:
 437  0001 000000000000  	ds.b	24
 438                     	xdef	_Remode_Data
 439                     	xref	_Stop_Read_timer
 440                     	xref	_Start_Timer
 441                     	xref.b	c_x
 442                     	xref.b	c_y
 462                     	xref	c_bmulx
 463                     	end
