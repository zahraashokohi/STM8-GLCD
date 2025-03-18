#ifndef	_GLCD_H
#define _GLCD_H

#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "font.h"

#define GLCD_D0_GPIO       GPIOA
#define GLCD_D0_PIN	       GPIO_PIN_1
#define GLCD_D1_GPIO       GPIOA
#define GLCD_D1_PIN	       GPIO_PIN_2
#define GLCD_D2_GPIO       GPIOA
#define GLCD_D2_PIN	       GPIO_PIN_3
#define GLCD_D3_GPIO       GPIOD
#define GLCD_D3_PIN	       GPIO_PIN_1
#define GLCD_D4_GPIO       GPIOD
#define GLCD_D4_PIN	       GPIO_PIN_2
#define GLCD_D5_GPIO       GPIOD
#define GLCD_D5_PIN	       GPIO_PIN_3
#define GLCD_D6_GPIO       GPIOD
#define GLCD_D6_PIN	       GPIO_PIN_4
#define GLCD_D7_GPIO       GPIOD
#define GLCD_D7_PIN	       GPIO_PIN_5


#define GLCD_RS_PIN         GPIO_PIN_3
#define GLCD_RS_GPIO				GPIOC
#define GLCD_RW_PIN         GPIO_PIN_4
#define GLCD_RW_GPIO     		GPIOC
#define GLCD_EN_PIN         GPIO_PIN_5
#define GLCD_EN_GPIO     		GPIOC
#define GLCD_CS1_PIN        GPIO_PIN_6
#define GLCD_CS1_GPIO    		GPIOC
#define GLCD_CS2_PIN        GPIO_PIN_7
#define GLCD_CS2_GPIO    		GPIOC

#define GLCD_EN_Delay 			3

void glcd_gpio_init(void);
void glcd_gpio_write_pin(GPIO_TypeDef* GPIO, GPIO_Pin_TypeDef Pin, BitAction Value);
void trigger(void);
void Delay_us(uint16_t us);
void Delay_ms(uint16_t ms);
void glcd_on(void);
void glcd_off(void);
void set_start_line(byte line);
void goto_col(unsigned int x);
void goto_row(unsigned int y);
void goto_xy(unsigned int x,unsigned int y);
void glcd_write(byte b);
void glcd_clrln(byte ln);
void glcd_clear(void);
byte is_busy(void);
byte glcd_read(byte column);
byte get_point(unsigned int x,unsigned int y);
void point_at(unsigned int x,unsigned int y,byte color);
void h_line(unsigned int x,unsigned int y,byte l,byte s,byte c);
void v_line(unsigned int x,unsigned int y,signed int l,byte s,byte c);
void line(unsigned int x1,unsigned int y1,
          unsigned int x2,unsigned int y2,
          byte s,byte c);
void rectangle(unsigned int x1,unsigned int y1,
               unsigned int x2,unsigned int y2,
               byte s,byte c);
void cuboid(unsigned int x11,unsigned int y11,
            unsigned int x12,unsigned int y12,
            unsigned int x21,unsigned int y21,
            unsigned int x22,unsigned int y22,
            byte s,byte c);
void h_parallelogram(unsigned int x1,unsigned int y1,
                     unsigned int x2,unsigned int y2,
                     byte l,byte s,byte c);
void v_parallelogram(unsigned int x1,unsigned int y1,
                     unsigned int x2,unsigned int y2,
                     byte l,byte s,byte c);
										 void h_parallelepiped(unsigned int x11,unsigned int y11,
                      unsigned int x12,unsigned int y12,byte l1,
                      unsigned int x21,unsigned int y21,
                      unsigned int x22,unsigned int y22,byte l2,
                      byte s,byte c);
void v_parallelepiped(unsigned int x11,unsigned int y11,
                      unsigned int x12,unsigned int y12,byte l1,
                      unsigned int x21,unsigned int y21,
                      unsigned int x22,unsigned int y22,byte l2,
                      byte s,byte c);		
void circle(unsigned int x0,unsigned int y0,
            unsigned int r,byte s,byte c);	
void putIt(int c,int x,int y);
void enlarge(char *large,unsigned char c,byte size);	
void putItSz(int c,int x,int y,byte sz);
void glcd_putchar(byte c,int x,int y,byte l,byte sz);
void bmp_disp(flash byte *bmp,unsigned int x1,unsigned int y1,
                              unsigned int x2,unsigned int y2);
void glcd_puts(byte *c,int x,int y,unsigned char l,byte sz,signed char space);															



#endif
