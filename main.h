#ifndef _MAIN_H_
#define _MAIN_H_

#define Mode_FullErase		0
#define Mode_SingleErase	1
#define Mode_Add					2

extern uint32_t CurrentTime;
extern uint32_t ButtonStartTime;

const int16_t Relay_OpenTime		= 800;

const uint16_t Mode_FullErase_Time 		= 0x7FFF;
const uint16_t Mode_SingleErase_Time	= 250;
const uint16_t Mode_Add_Time	 				= 500;

const uint16_t Time_FullErase 	= 9000;//ms
const uint16_t Time_SingleErase = 4000;//ms
const uint16_t Time_Add 				= 1000;//ms

const uint16_t Time_Led					= 50;

const uint16_t Mode_Timeout			= 7000;
const uint16_t Mode_TimeoutMax	= 0x7FFF;

const uint16_t Led_BlinkTime 		= 150;

#define LearnMode_Group					0
#define LearnMode_Single				1

#define LearnMode								LearnMode_Single


//#define Debug_FillDatabase

#ifdef Debug_FillDatabase
static const uint8_t mDefaultRemotes_Length = 16;
static const uint32_t mDefaultRemotes[16] = {
	//-------------- 1 (UTAB) ------------
	0x00880480, //A 
	0x00480480, //B
	0x00280480, //C
	0x00180480, //D
	//-------------- 2 (UTAB) ------------
	0x0084E254, //A
	0x0044E254, //B
	0x0024E254, //C
	0x0014E254, //D
	//-------------- 3 (Baleli) ----------
	0x008E4CAA, //A
	0x004E4CAA, //B
	0x002E4CAA, //C
	0x001E4CAA, //D
	//-------------- 4 (Baleli) ----------
	0x008F38ED, //A
	0x004F38ED, //B
	0x002F38ED, //C
	0x001F38ED, //D
};
#endif //Debug_FillDatabase


#endif //_MAIN_H_