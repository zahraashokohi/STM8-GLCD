#include "Led.h"
#include "stm8s.h"
#include "stm8s_gpio.h"

typedef struct _Led
{
	GPIO_TypeDef*	GPIO;
	uint8_t			Pin;
	
}Led;

#define Led_Config(Name)	{ ##Name ##_GPIO, ##Name ##_Pin},

const Led Leds[Led_Num] = 
{
	//Led 0 --> Status
	Led_Config(Led_0)
	//Led 1 --> Remote
	Led_Config(Led_1)
};

const uint8_t Leds_Length = Led_Num;

void Led_Init(void)
{
	uint8_t i;
	for (i = 0; i < Leds_Length; i++)
	{
		#ifdef Led_Active_Low
		GPIO_Init(Leds[i].GPIO, Leds[i].Pin, GPIO_MODE_OUT_OD_LOW_FAST);
		#else
		GPIO_Init(Leds[i].GPIO, Leds[i].Pin, GPIO_MODE_OUT_PP_LOW_FAST);
		#endif
		Led_Write(i, Led_Off);
	}
}
void Led_Set(LedName led)
{
	GPIO_WriteHigh(Leds[led].GPIO, Leds[led].Pin);
	//Leds[led].GPIO->ODR |= Leds[led].Pin;
}
void Led_Clear(LedName led)
{
	GPIO_WriteLow(Leds[led].GPIO, Leds[led].Pin);
	//Leds[led].GPIO->ODR &= ~Leds[led].Pin;
}
void Led_Toggle(LedName led)
{
	GPIO_WriteReverse(Leds[led].GPIO, Leds[led].Pin);
}
void Led_Write(LedName led, LedState state)
{
	#ifdef Led_Active_Low
    if (state == Led_Off){
		Led_Set(led);
    }
    else {
		Led_Clear(led);
    }
	#else
	if (state == Led_Off){
		Led_Clear(led);
    }
    else {
		Led_Set(led);
    }
	#endif
}
