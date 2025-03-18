#ifndef _LED_H_
#define _LED_H_
#include "stm8s.h"

#define Led_Num			2

#define Led_0_GPIO		GPIOC
#define Led_0_Pin			GPIO_PIN_4
#define Led_1_GPIO		GPIOC
#define Led_1_Pin			GPIO_PIN_3

#define Led_Active_Low

typedef enum _LedState 
{
	Led_Off		= 0,
	Led_On		= 1
	
}LedState;

typedef enum _LedName 
{
	StatusLed 	= 0,
	RemoteLed		= 1
	
}LedName;


void Led_Init(void);
void Led_Set(LedName led);
void Led_Clear(LedName led);
void Led_Toggle(LedName led);
void Led_Write(LedName led, LedState state);

#endif // _LED_H_