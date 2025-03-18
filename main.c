/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */


#include "stm8s.h"
#include "GLCD.h"



void EnableClocks(void);
void main(void)
{

		enableInterrupts();
    while(1)
    {
				    char str [] = "ò«—  ŒÊ«‰ „ÊÃÊœ   „Ì»«‘œ";
    glcd_init();
    glcd_on();
    glcd_clear();

   glcd_puts(str,127,3,1,1,0);
    }
}  


void EnableClocks(void)
{
	CLK_DeInit();
	CLK_FastHaltWakeUpCmd(ENABLE);
  CLK_HSICmd(ENABLE);
	CLK_HSECmd(DISABLE);
	CLK_CCOCmd(DISABLE);
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	//enable used peripheral clocks
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, ENABLE);

	CLK_SWIMConfig(CLK_SWIMDIVIDER_2);
	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
										DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
}

