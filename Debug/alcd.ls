   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.9 - 06 Feb 2019
  74                     ; 65 void ALCD_Init(uint8_t rows, uint8_t columns){
  76                     .text:	section	.text,new
  77  0000               _ALCD_Init:
  79  0000 89            	pushw	x
  80       00000000      OFST:	set	0
  83                     ; 66 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  85  0001 4f            	clr	a
  86  0002 cd0000        	call	_CLK_HSIPrescalerConfig
  88                     ; 68 	GPIO_Init(ALCD_D4_GPIO, ALCD_D4_Pin, GPIO_MODE_OUT_PP_LOW_FAST);
  90  0005 4be0          	push	#224
  91  0007 4b02          	push	#2
  92  0009 ae500f        	ldw	x,#20495
  93  000c cd0000        	call	_GPIO_Init
  95  000f 85            	popw	x
  96                     ; 69 	GPIO_Init(ALCD_D5_GPIO, ALCD_D5_Pin, GPIO_MODE_OUT_PP_LOW_FAST);
  98  0010 4be0          	push	#224
  99  0012 4b04          	push	#4
 100  0014 ae500f        	ldw	x,#20495
 101  0017 cd0000        	call	_GPIO_Init
 103  001a 85            	popw	x
 104                     ; 70 	GPIO_Init(ALCD_D6_GPIO, ALCD_D6_Pin, GPIO_MODE_OUT_PP_LOW_FAST);
 106  001b 4be0          	push	#224
 107  001d 4b08          	push	#8
 108  001f ae500f        	ldw	x,#20495
 109  0022 cd0000        	call	_GPIO_Init
 111  0025 85            	popw	x
 112                     ; 71 	GPIO_Init(ALCD_D7_GPIO, ALCD_D7_Pin, GPIO_MODE_OUT_PP_LOW_FAST);
 114  0026 4be0          	push	#224
 115  0028 4b10          	push	#16
 116  002a ae500f        	ldw	x,#20495
 117  002d cd0000        	call	_GPIO_Init
 119  0030 85            	popw	x
 120                     ; 72 	GPIO_Init(ALCD_RS_GPIO, ALCD_RS_Pin, GPIO_MODE_OUT_PP_LOW_FAST);
 122  0031 4be0          	push	#224
 123  0033 4b02          	push	#2
 124  0035 ae5000        	ldw	x,#20480
 125  0038 cd0000        	call	_GPIO_Init
 127  003b 85            	popw	x
 128                     ; 73 	GPIO_Init(ALCD_RW_GPIO, ALCD_RW_Pin, GPIO_MODE_OUT_PP_LOW_FAST);
 130  003c 4be0          	push	#224
 131  003e 4b04          	push	#4
 132  0040 ae5000        	ldw	x,#20480
 133  0043 cd0000        	call	_GPIO_Init
 135  0046 85            	popw	x
 136                     ; 74 	GPIO_Init(ALCD_EN_GPIO, ALCD_EN_Pin, GPIO_MODE_OUT_PP_LOW_FAST);
 138  0047 4be0          	push	#224
 139  0049 4b08          	push	#8
 140  004b ae5000        	ldw	x,#20480
 141  004e cd0000        	call	_GPIO_Init
 143  0051 85            	popw	x
 144                     ; 76 	ALCD_RW_Low();
 146  0052 4b04          	push	#4
 147  0054 ae5000        	ldw	x,#20480
 148  0057 cd0000        	call	_GPIO_WriteLow
 150  005a 84            	pop	a
 151                     ; 78 	mOptions.Rows = rows;
 153  005b 7b01          	ld	a,(OFST+1,sp)
 154  005d b703          	ld	_mOptions+3,a
 155                     ; 79 	mOptions.Cols = columns;
 157  005f 7b02          	ld	a,(OFST+2,sp)
 158  0061 b704          	ld	_mOptions+4,a
 159                     ; 80 	mOptions.CurrentX = 0;
 161  0063 3f05          	clr	_mOptions+5
 162                     ; 81 	mOptions.CurrentY = 0;
 164  0065 3f06          	clr	_mOptions+6
 165                     ; 82 	mOptions.DisplayFunction = ALCD_4BITMODE | ALCD_5x8DOTS | ALCD_1LINE;
 167  0067 3f01          	clr	_mOptions+1
 168                     ; 83 	if (rows > 1)
 170  0069 7b01          	ld	a,(OFST+1,sp)
 171  006b a102          	cp	a,#2
 172  006d 2504          	jrult	L33
 173                     ; 84 		mOptions.DisplayFunction |= ALCD_2LINE;
 175  006f 72160001      	bset	_mOptions+1,#3
 176  0073               L33:
 177                     ; 87 	ALCD_WriteCmd4Bit(0x03);
 179  0073 a603          	ld	a,#3
 180  0075 cd0000        	call	_ALCD_WriteCmd4Bit
 182                     ; 88 	ALCD_Delay(4500);
 184  0078 ae1194        	ldw	x,#4500
 185  007b 89            	pushw	x
 186  007c ae0000        	ldw	x,#0
 187  007f 89            	pushw	x
 188  0080 cd0000        	call	_ALCD_Delay
 190  0083 5b04          	addw	sp,#4
 191                     ; 91 	ALCD_WriteCmd4Bit(0x03);
 193  0085 a603          	ld	a,#3
 194  0087 cd0000        	call	_ALCD_WriteCmd4Bit
 196                     ; 92 	ALCD_Delay(4500);
 198  008a ae1194        	ldw	x,#4500
 199  008d 89            	pushw	x
 200  008e ae0000        	ldw	x,#0
 201  0091 89            	pushw	x
 202  0092 cd0000        	call	_ALCD_Delay
 204  0095 5b04          	addw	sp,#4
 205                     ; 95 	ALCD_WriteCmd4Bit(0x03);
 207  0097 a603          	ld	a,#3
 208  0099 cd0000        	call	_ALCD_WriteCmd4Bit
 210                     ; 96 	ALCD_Delay(4500);	
 212  009c ae1194        	ldw	x,#4500
 213  009f 89            	pushw	x
 214  00a0 ae0000        	ldw	x,#0
 215  00a3 89            	pushw	x
 216  00a4 cd0000        	call	_ALCD_Delay
 218  00a7 5b04          	addw	sp,#4
 219                     ; 99 	ALCD_WriteCmd4Bit(0x02);
 221  00a9 a602          	ld	a,#2
 222  00ab cd0000        	call	_ALCD_WriteCmd4Bit
 224                     ; 100 	ALCD_Delay(100);
 226  00ae ae0064        	ldw	x,#100
 227  00b1 89            	pushw	x
 228  00b2 ae0000        	ldw	x,#0
 229  00b5 89            	pushw	x
 230  00b6 cd0000        	call	_ALCD_Delay
 232  00b9 5b04          	addw	sp,#4
 233                     ; 103 	ALCD_WriteCmd(ALCD_FUNCTIONSET | mOptions.DisplayFunction);
 235  00bb b601          	ld	a,_mOptions+1
 236  00bd aa20          	or	a,#32
 237  00bf cd0000        	call	_ALCD_WriteCmd
 239                     ; 106 	mOptions.DisplayControl = ALCD_DISPLAYON;
 241  00c2 35040000      	mov	_mOptions,#4
 242                     ; 107 	ALCD_DisplayOn();
 244  00c6 cd0000        	call	_ALCD_DisplayOn
 246                     ; 109 	ALCD_Clear();
 248  00c9 cd0000        	call	_ALCD_Clear
 250                     ; 112 	mOptions.DisplayMode = ALCD_ENTRYLEFT | ALCD_ENTRYSHIFTDECREMENT;
 252  00cc 35020002      	mov	_mOptions+2,#2
 253                     ; 113 	ALCD_WriteCmd(ALCD_ENTRYMODESET | mOptions.DisplayMode);
 255  00d0 a606          	ld	a,#6
 256  00d2 cd0000        	call	_ALCD_WriteCmd
 258                     ; 116 	ALCD_Delay(4500);
 260  00d5 ae1194        	ldw	x,#4500
 261  00d8 89            	pushw	x
 262  00d9 ae0000        	ldw	x,#0
 263  00dc 89            	pushw	x
 264  00dd cd0000        	call	_ALCD_Delay
 266  00e0 5b04          	addw	sp,#4
 267                     ; 117 }
 270  00e2 85            	popw	x
 271  00e3 81            	ret
 297                     ; 119 void ALCD_Clear(void){
 298                     .text:	section	.text,new
 299  0000               _ALCD_Clear:
 303                     ; 120 	mOptions.CurrentX = 0;
 305  0000 3f05          	clr	_mOptions+5
 306                     ; 121 	mOptions.CurrentY = 0;
 308  0002 3f06          	clr	_mOptions+6
 309                     ; 122 	ALCD_WriteCmd(ALCD_CLEARDISPLAY);
 311  0004 a601          	ld	a,#1
 312  0006 cd0000        	call	_ALCD_WriteCmd
 314                     ; 123 	ALCD_Delay(4000);
 316  0009 ae0fa0        	ldw	x,#4000
 317  000c 89            	pushw	x
 318  000d ae0000        	ldw	x,#0
 319  0010 89            	pushw	x
 320  0011 cd0000        	call	_ALCD_Delay
 322  0014 5b04          	addw	sp,#4
 323                     ; 124 }
 326  0016 81            	ret
 351                     ; 125 void ALCD_DisplayOn(void){
 352                     .text:	section	.text,new
 353  0000               _ALCD_DisplayOn:
 357                     ; 126 	mOptions.DisplayControl |= ALCD_DISPLAYON;
 359  0000 72140000      	bset	_mOptions,#2
 360                     ; 127 	ALCD_WriteCmd(ALCD_DISPLAYCONTROL | mOptions.DisplayControl);
 362  0004 b600          	ld	a,_mOptions
 363  0006 aa08          	or	a,#8
 364  0008 cd0000        	call	_ALCD_WriteCmd
 366                     ; 128 }
 369  000b 81            	ret
 394                     ; 129 void ALCD_DisplayOff(void){
 395                     .text:	section	.text,new
 396  0000               _ALCD_DisplayOff:
 400                     ; 130 	mOptions.DisplayControl &= ~ALCD_DISPLAYON;
 402  0000 72150000      	bres	_mOptions,#2
 403                     ; 131 	ALCD_WriteCmd(ALCD_DISPLAYCONTROL | mOptions.DisplayControl);
 405  0004 b600          	ld	a,_mOptions
 406  0006 aa08          	or	a,#8
 407  0008 cd0000        	call	_ALCD_WriteCmd
 409                     ; 132 }
 412  000b 81            	ret
 437                     ; 133 void ALCD_CursorOn(void){
 438                     .text:	section	.text,new
 439  0000               _ALCD_CursorOn:
 443                     ; 134 	mOptions.DisplayControl |= ALCD_CURSORON;
 445  0000 72120000      	bset	_mOptions,#1
 446                     ; 135 	ALCD_WriteCmd(ALCD_DISPLAYCONTROL | mOptions.DisplayControl);
 448  0004 b600          	ld	a,_mOptions
 449  0006 aa08          	or	a,#8
 450  0008 cd0000        	call	_ALCD_WriteCmd
 452                     ; 136 }
 455  000b 81            	ret
 480                     ; 137 void ALCD_CursorOff(void){
 481                     .text:	section	.text,new
 482  0000               _ALCD_CursorOff:
 486                     ; 138 	mOptions.DisplayControl &= ~ALCD_CURSORON;
 488  0000 72130000      	bres	_mOptions,#1
 489                     ; 139 	ALCD_WriteCmd(ALCD_DISPLAYCONTROL | mOptions.DisplayControl);
 491  0004 b600          	ld	a,_mOptions
 492  0006 aa08          	or	a,#8
 493  0008 cd0000        	call	_ALCD_WriteCmd
 495                     ; 140 }
 498  000b 81            	ret
 523                     ; 141 void ALCD_BlinkOn(void){
 524                     .text:	section	.text,new
 525  0000               _ALCD_BlinkOn:
 529                     ; 142 	mOptions.DisplayControl |= ALCD_BLINKON;
 531  0000 72100000      	bset	_mOptions,#0
 532                     ; 143 	ALCD_WriteCmd(ALCD_DISPLAYCONTROL | mOptions.DisplayControl);
 534  0004 b600          	ld	a,_mOptions
 535  0006 aa08          	or	a,#8
 536  0008 cd0000        	call	_ALCD_WriteCmd
 538                     ; 144 }
 541  000b 81            	ret
 566                     ; 145 void ALCD_BlinkOff(void){
 567                     .text:	section	.text,new
 568  0000               _ALCD_BlinkOff:
 572                     ; 146 	mOptions.DisplayControl &= ~ALCD_BLINKON;
 574  0000 72110000      	bres	_mOptions,#0
 575                     ; 147 	ALCD_WriteCmd(ALCD_DISPLAYCONTROL | mOptions.DisplayControl);
 577  0004 b600          	ld	a,_mOptions
 578  0006 aa08          	or	a,#8
 579  0008 cd0000        	call	_ALCD_WriteCmd
 581                     ; 148 }
 584  000b 81            	ret
 587                     .const:	section	.text
 588  0000               L521_row_offsets:
 589  0000 00            	dc.b	0
 590  0001 40            	dc.b	64
 591  0002 14            	dc.b	20
 592  0003 54            	dc.b	84
 645                     ; 149 void ALCD_GotoXY(uint8_t x, uint8_t y){
 646                     .text:	section	.text,new
 647  0000               _ALCD_GotoXY:
 649  0000 89            	pushw	x
 650       00000000      OFST:	set	0
 653                     ; 153 	if (y >= mOptions.Rows)
 655  0001 9f            	ld	a,xl
 656  0002 b103          	cp	a,_mOptions+3
 657  0004 2502          	jrult	L551
 658                     ; 154 		y = 0;
 660  0006 0f02          	clr	(OFST+2,sp)
 661  0008               L551:
 662                     ; 157 	mOptions.CurrentX = x;
 664  0008 7b01          	ld	a,(OFST+1,sp)
 665  000a b705          	ld	_mOptions+5,a
 666                     ; 158 	mOptions.CurrentY = y;
 668  000c 7b02          	ld	a,(OFST+2,sp)
 669  000e b706          	ld	_mOptions+6,a
 670                     ; 161 	ALCD_WriteCmd(ALCD_SETDDRAMADDR | (x + row_offsets[y]));
 672  0010 7b02          	ld	a,(OFST+2,sp)
 673  0012 5f            	clrw	x
 674  0013 97            	ld	xl,a
 675  0014 d60000        	ld	a,(L521_row_offsets,x)
 676  0017 1b01          	add	a,(OFST+1,sp)
 677  0019 aa80          	or	a,#128
 678  001b cd0000        	call	_ALCD_WriteCmd
 680                     ; 162 }
 683  001e 85            	popw	x
 684  001f 81            	ret
 719                     ; 163 void ALCD_PutChar(char c){
 720                     .text:	section	.text,new
 721  0000               _ALCD_PutChar:
 725                     ; 164 	ALCD_WriteData(c);
 727  0000 cd0000        	call	_ALCD_WriteData
 729                     ; 165 }
 732  0003 81            	ret
 769                     ; 166 void ALCD_Puts(const char* str){
 770                     .text:	section	.text,new
 771  0000               _ALCD_Puts:
 773  0000 89            	pushw	x
 774       00000000      OFST:	set	0
 777  0001 2022          	jra	L512
 778  0003               L312:
 779                     ; 168 		ALCD_WriteData(*str++);
 781  0003 1e01          	ldw	x,(OFST+1,sp)
 782  0005 1c0001        	addw	x,#1
 783  0008 1f01          	ldw	(OFST+1,sp),x
 784  000a 1d0001        	subw	x,#1
 785  000d f6            	ld	a,(x)
 786  000e cd0000        	call	_ALCD_WriteData
 788                     ; 169 		if (++mOptions.CurrentX >= mOptions.Cols){
 790  0011 3c05          	inc	_mOptions+5
 791  0013 b605          	ld	a,_mOptions+5
 792  0015 b104          	cp	a,_mOptions+4
 793  0017 250c          	jrult	L512
 794                     ; 170 			mOptions.CurrentX = 0;
 796  0019 3f05          	clr	_mOptions+5
 797                     ; 171 			if (++mOptions.CurrentY >= mOptions.Rows){
 799  001b 3c06          	inc	_mOptions+6
 800  001d b606          	ld	a,_mOptions+6
 801  001f b103          	cp	a,_mOptions+3
 802  0021 2502          	jrult	L512
 803                     ; 172 				mOptions.CurrentY = 0;
 805  0023 3f06          	clr	_mOptions+6
 806  0025               L512:
 807                     ; 167 	while ('\0' != *str){
 809  0025 1e01          	ldw	x,(OFST+1,sp)
 810  0027 7d            	tnz	(x)
 811  0028 26d9          	jrne	L312
 812                     ; 176 }
 815  002a 85            	popw	x
 816  002b 81            	ret
 870                     ; 177 void ALCD_PutCharXY(char c, uint8_t x, uint8_t y){
 871                     .text:	section	.text,new
 872  0000               _ALCD_PutCharXY:
 874  0000 89            	pushw	x
 875       00000000      OFST:	set	0
 878                     ; 178 	ALCD_GotoXY(x, y);
 880  0001 7b05          	ld	a,(OFST+5,sp)
 881  0003 97            	ld	xl,a
 882  0004 7b02          	ld	a,(OFST+2,sp)
 883  0006 95            	ld	xh,a
 884  0007 cd0000        	call	_ALCD_GotoXY
 886                     ; 179 	ALCD_PutChar(c);
 888  000a 7b01          	ld	a,(OFST+1,sp)
 889  000c cd0000        	call	_ALCD_PutChar
 891                     ; 180 }
 894  000f 85            	popw	x
 895  0010 81            	ret
 950                     ; 181 void ALCD_PutsXY(const char* str, uint8_t x, uint8_t y){
 951                     .text:	section	.text,new
 952  0000               _ALCD_PutsXY:
 954  0000 89            	pushw	x
 955       00000000      OFST:	set	0
 958                     ; 182 	ALCD_GotoXY(x, y);
 960  0001 7b06          	ld	a,(OFST+6,sp)
 961  0003 97            	ld	xl,a
 962  0004 7b05          	ld	a,(OFST+5,sp)
 963  0006 95            	ld	xh,a
 964  0007 cd0000        	call	_ALCD_GotoXY
 966                     ; 183 	ALCD_Puts(str);
 968  000a 1e01          	ldw	x,(OFST+1,sp)
 969  000c cd0000        	call	_ALCD_Puts
 971                     ; 184 }
 974  000f 85            	popw	x
 975  0010 81            	ret
1009                     	switch	.const
1010  0004               L04:
1011  0004 00000003      	dc.l	3
1012                     ; 187 void ALCD_Delay(uint32_t us){
1013                     .text:	section	.text,new
1014  0000               _ALCD_Delay:
1016       00000000      OFST:	set	0
1019                     ; 188 	us /= 3;
1021  0000 96            	ldw	x,sp
1022  0001 1c0003        	addw	x,#OFST+3
1023  0004 cd0000        	call	c_ltor
1025  0007 ae0004        	ldw	x,#L04
1026  000a cd0000        	call	c_ludv
1028  000d 96            	ldw	x,sp
1029  000e 1c0003        	addw	x,#OFST+3
1030  0011 cd0000        	call	c_rtol
1033  0014               L123:
1034                     ; 189 	while (us--){}
1036  0014 96            	ldw	x,sp
1037  0015 1c0003        	addw	x,#OFST+3
1038  0018 cd0000        	call	c_ltor
1040  001b 96            	ldw	x,sp
1041  001c 1c0003        	addw	x,#OFST+3
1042  001f a601          	ld	a,#1
1043  0021 cd0000        	call	c_lgsbc
1045  0024 cd0000        	call	c_lrzmp
1047  0027 26eb          	jrne	L123
1048                     ; 190 }
1051  0029 81            	ret
1265                     ; 191 void ALCD_WritePin(GPIO_TypeDef* GPIO, GPIO_Pin_TypeDef Pin, BitAction val){
1266                     .text:	section	.text,new
1267  0000               _ALCD_WritePin:
1269  0000 89            	pushw	x
1270       00000000      OFST:	set	0
1273                     ; 192 	if (RESET == val){
1275  0001 0d06          	tnz	(OFST+6,sp)
1276  0003 2609          	jrne	L744
1277                     ; 193 		GPIO_WriteLow(GPIO, Pin);
1279  0005 7b05          	ld	a,(OFST+5,sp)
1280  0007 88            	push	a
1281  0008 cd0000        	call	_GPIO_WriteLow
1283  000b 84            	pop	a
1285  000c 2009          	jra	L154
1286  000e               L744:
1287                     ; 196 		GPIO_WriteHigh(GPIO, Pin);
1289  000e 7b05          	ld	a,(OFST+5,sp)
1290  0010 88            	push	a
1291  0011 1e02          	ldw	x,(OFST+2,sp)
1292  0013 cd0000        	call	_GPIO_WriteHigh
1294  0016 84            	pop	a
1295  0017               L154:
1296                     ; 198 }
1299  0017 85            	popw	x
1300  0018 81            	ret
1336                     ; 199 void ALCD_WriteCmd4Bit(uint8_t cmd){
1337                     .text:	section	.text,new
1338  0000               _ALCD_WriteCmd4Bit:
1340  0000 88            	push	a
1341       00000000      OFST:	set	0
1344                     ; 200 	ALCD_WritePin(ALCD_D4_GPIO, ALCD_D4_Pin, cmd & 0x01);
1346  0001 a401          	and	a,#1
1347  0003 88            	push	a
1348  0004 4b02          	push	#2
1349  0006 ae500f        	ldw	x,#20495
1350  0009 cd0000        	call	_ALCD_WritePin
1352  000c 85            	popw	x
1353                     ; 201 	cmd >>= 1;
1355  000d 0401          	srl	(OFST+1,sp)
1356                     ; 202 	ALCD_WritePin(ALCD_D5_GPIO, ALCD_D5_Pin, cmd & 0x01);
1358  000f 7b01          	ld	a,(OFST+1,sp)
1359  0011 a401          	and	a,#1
1360  0013 88            	push	a
1361  0014 4b04          	push	#4
1362  0016 ae500f        	ldw	x,#20495
1363  0019 cd0000        	call	_ALCD_WritePin
1365  001c 85            	popw	x
1366                     ; 203 	cmd >>= 1;
1368  001d 0401          	srl	(OFST+1,sp)
1369                     ; 204 	ALCD_WritePin(ALCD_D5_GPIO, ALCD_D6_Pin, cmd & 0x01);
1371  001f 7b01          	ld	a,(OFST+1,sp)
1372  0021 a401          	and	a,#1
1373  0023 88            	push	a
1374  0024 4b08          	push	#8
1375  0026 ae500f        	ldw	x,#20495
1376  0029 cd0000        	call	_ALCD_WritePin
1378  002c 85            	popw	x
1379                     ; 205 	cmd >>= 1;
1381  002d 0401          	srl	(OFST+1,sp)
1382                     ; 206 	ALCD_WritePin(ALCD_D5_GPIO, ALCD_D7_Pin, cmd & 0x01);
1384  002f 7b01          	ld	a,(OFST+1,sp)
1385  0031 a401          	and	a,#1
1386  0033 88            	push	a
1387  0034 4b10          	push	#16
1388  0036 ae500f        	ldw	x,#20495
1389  0039 cd0000        	call	_ALCD_WritePin
1391  003c 85            	popw	x
1392                     ; 208 	ALCD_LatchData();;
1394  003d cd0000        	call	_ALCD_LatchData
1396                     ; 209 }
1400  0040 84            	pop	a
1401  0041 81            	ret
1437                     ; 210 void ALCD_WriteCmd(uint8_t cmd){
1438                     .text:	section	.text,new
1439  0000               _ALCD_WriteCmd:
1441  0000 88            	push	a
1442       00000000      OFST:	set	0
1445                     ; 211 	ALCD_RS_Low();
1447  0001 4b02          	push	#2
1448  0003 ae5000        	ldw	x,#20480
1449  0006 cd0000        	call	_GPIO_WriteLow
1451  0009 84            	pop	a
1452                     ; 212 	ALCD_WriteCmd4Bit(cmd >> 4);
1454  000a 7b01          	ld	a,(OFST+1,sp)
1455  000c 4e            	swap	a
1456  000d a40f          	and	a,#15
1457  000f cd0000        	call	_ALCD_WriteCmd4Bit
1459                     ; 213 	ALCD_WriteCmd4Bit(cmd);
1461  0012 7b01          	ld	a,(OFST+1,sp)
1462  0014 cd0000        	call	_ALCD_WriteCmd4Bit
1464                     ; 214 }
1467  0017 84            	pop	a
1468  0018 81            	ret
1504                     ; 215 void ALCD_WriteData(uint8_t data){
1505                     .text:	section	.text,new
1506  0000               _ALCD_WriteData:
1508  0000 88            	push	a
1509       00000000      OFST:	set	0
1512                     ; 216 	ALCD_RS_High();
1514  0001 4b02          	push	#2
1515  0003 ae5000        	ldw	x,#20480
1516  0006 cd0000        	call	_GPIO_WriteHigh
1518  0009 84            	pop	a
1519                     ; 217 	ALCD_WriteCmd4Bit(data >> 4);
1521  000a 7b01          	ld	a,(OFST+1,sp)
1522  000c 4e            	swap	a
1523  000d a40f          	and	a,#15
1524  000f cd0000        	call	_ALCD_WriteCmd4Bit
1526                     ; 218 	ALCD_WriteCmd4Bit(data);
1528  0012 7b01          	ld	a,(OFST+1,sp)
1529  0014 cd0000        	call	_ALCD_WriteCmd4Bit
1531                     ; 219 }
1534  0017 84            	pop	a
1535  0018 81            	ret
1561                     ; 220 void ALCD_LatchData(void){
1562                     .text:	section	.text,new
1563  0000               _ALCD_LatchData:
1567                     ; 221 		ALCD_EN_Low();
1569  0000 4b08          	push	#8
1570  0002 ae5000        	ldw	x,#20480
1571  0005 cd0000        	call	_GPIO_WriteLow
1573  0008 84            	pop	a
1574                     ; 222 		ALCD_Delay(20);
1576  0009 ae0014        	ldw	x,#20
1577  000c 89            	pushw	x
1578  000d ae0000        	ldw	x,#0
1579  0010 89            	pushw	x
1580  0011 cd0000        	call	_ALCD_Delay
1582  0014 5b04          	addw	sp,#4
1583                     ; 223 		ALCD_EN_High();
1585  0016 4b08          	push	#8
1586  0018 ae5000        	ldw	x,#20480
1587  001b cd0000        	call	_GPIO_WriteHigh
1589  001e 84            	pop	a
1590                     ; 224 		ALCD_Delay(20);
1592  001f ae0014        	ldw	x,#20
1593  0022 89            	pushw	x
1594  0023 ae0000        	ldw	x,#0
1595  0026 89            	pushw	x
1596  0027 cd0000        	call	_ALCD_Delay
1598  002a 5b04          	addw	sp,#4
1599                     ; 225 }
1602  002c 81            	ret
1683                     	xdef	_ALCD_LatchData
1684                     	xdef	_ALCD_WriteData
1685                     	xdef	_ALCD_WriteCmd
1686                     	xdef	_ALCD_WriteCmd4Bit
1687                     	xdef	_ALCD_WritePin
1688                     	xdef	_ALCD_Delay
1689                     	switch	.ubsct
1690  0000               _mOptions:
1691  0000 000000000000  	ds.b	7
1692                     	xdef	_mOptions
1693                     	xdef	_ALCD_PutsXY
1694                     	xdef	_ALCD_PutCharXY
1695                     	xdef	_ALCD_Puts
1696                     	xdef	_ALCD_PutChar
1697                     	xdef	_ALCD_GotoXY
1698                     	xdef	_ALCD_BlinkOff
1699                     	xdef	_ALCD_BlinkOn
1700                     	xdef	_ALCD_CursorOff
1701                     	xdef	_ALCD_CursorOn
1702                     	xdef	_ALCD_DisplayOff
1703                     	xdef	_ALCD_DisplayOn
1704                     	xdef	_ALCD_Clear
1705                     	xdef	_ALCD_Init
1706                     	xref	_GPIO_WriteLow
1707                     	xref	_GPIO_WriteHigh
1708                     	xref	_GPIO_Init
1709                     	xref	_CLK_HSIPrescalerConfig
1710                     	xref.b	c_x
1730                     	xref	c_lrzmp
1731                     	xref	c_lgsbc
1732                     	xref	c_rtol
1733                     	xref	c_ludv
1734                     	xref	c_ltor
1735                     	end
