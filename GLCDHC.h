#ifndef	_GLCDHC_H
#define _GLCDHC_H

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stdlib.h"
#include "math.h"
#include "string.h"


typedef unsigned char byte;

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

#pragma used+

static int prevLet = 193;
static byte stat = 0;
static byte prevX = 0;
static byte prevY = 0;

void Delay_us(uint16_t us)
{
	//Clock / 1000 / 3 * ms
	uint32_t Count = 2666 * us;
	while (Count--){}
}

void Delay_ms(uint16_t ms)
{
	//Clock / 1000 / 3 * ms
	uint32_t Count = 2666 * ms;
	while (Count--){}
}
void glcd_gpio_write_pin(GPIO_TypeDef* GPIO, GPIO_Pin_TypeDef Pin, BitAction Value)
{
	if (RESET == Value)
	{
		GPIO_WriteLow(GPIO, Pin);
	}
	else 
	{
		GPIO_WriteHigh(GPIO, Pin);
	}
}
void trigger()
{
   //GLCD_EN high
	 glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,1);
   Delay_us(GLCD_EN_Delay);
	 //GLCD_EN low
	 glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,0);
   Delay_us(GLCD_EN_Delay);
}

void glcd_gpio_init()
{
	GPIO_Init(GLCD_D0_GPIO, GLCD_D0_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_D1_GPIO, GLCD_D1_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_D2_GPIO, GLCD_D2_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_D3_GPIO, GLCD_D3_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_D4_GPIO, GLCD_D4_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_D5_GPIO, GLCD_D5_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_D6_GPIO, GLCD_D6_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_D7_GPIO, GLCD_D7_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	
	GPIO_Init(GLCD_RS_GPIO, GLCD_RS_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_RW_GPIO, GLCD_RW_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GLCD_EN_GPIO, GLCD_EN_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	
}

void glcd_on()
{
    //Activate both chips
    #ifdef GLCD_CS_ActiveLow
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,0);
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,0);
    #else    
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,1);
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,1);
    #endif
				glcd_gpio_write_pin(GLCD_RS_GPIO,GLCD_RS_PIN,0);//GLCD_RS low --> command
				glcd_gpio_write_pin(GLCD_RW_GPIO,GLCD_RW_PIN,0);//GLCD_RW low --> write
				
				glcd_gpio_write_pin(GLCD_D0_GPIO,GLCD_D0_PIN,1);//ON command  
				glcd_gpio_write_pin(GLCD_D1_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D2_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D3_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D4_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D5_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D6_GPIO,GLCD_D0_PIN,0);
				glcd_gpio_write_pin(GLCD_D7_GPIO,GLCD_D0_PIN,0);
    trigger();     
} 

void glcd_off()
{
    //Activate both chips
    #ifdef GLCD_CS_ActiveLow
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,0);
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,0);
    #else
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,1);
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,1);
    #endif
 				glcd_gpio_write_pin(GLCD_RS_GPIO,GLCD_RS_PIN,0);//GLCD_RS low --> command
				glcd_gpio_write_pin(GLCD_RW_GPIO,GLCD_RW_PIN,0);//GLCD_RW low --> write 

				glcd_gpio_write_pin(GLCD_D0_GPIO,GLCD_D0_PIN,0);
				glcd_gpio_write_pin(GLCD_D1_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D2_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D3_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D4_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D5_GPIO,GLCD_D0_PIN,1);
				glcd_gpio_write_pin(GLCD_D6_GPIO,GLCD_D0_PIN,0);
				glcd_gpio_write_pin(GLCD_D7_GPIO,GLCD_D0_PIN,0);//OFF command   
    trigger();      
} 
void set_start_line (byte line)
{
				glcd_gpio_write_pin(GLCD_RS_GPIO,GLCD_RS_PIN,0);//GLCD_RS low --> command
				glcd_gpio_write_pin(GLCD_RW_GPIO,GLCD_RW_PIN,0);//GLCD_RW low --> write 
				//Activate both chips
    #ifdef GLCD_CS_ActiveLow
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,0);
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,0);
    #else    
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,1);
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,1);
    #endif 
				glcd_gpio_write_pin(GLCD_D0_GPIO,GLCD_D0_PIN,((line & (1 << 0)) != 0));
				glcd_gpio_write_pin(GLCD_D1_GPIO,GLCD_D0_PIN,((line & (1 << 1)) != 0));
				glcd_gpio_write_pin(GLCD_D2_GPIO,GLCD_D0_PIN,((line & (1 << 2)) != 0));
				glcd_gpio_write_pin(GLCD_D3_GPIO,GLCD_D0_PIN,((line & (1 << 3)) != 0));
				glcd_gpio_write_pin(GLCD_D4_GPIO,GLCD_D0_PIN,((line & (1 << 4)) != 0));
				glcd_gpio_write_pin(GLCD_D5_GPIO,GLCD_D0_PIN,((line & (1 << 5)) != 0));
				glcd_gpio_write_pin(GLCD_D6_GPIO,GLCD_D0_PIN,((line & (1 << 6)) != 0));
				glcd_gpio_write_pin(GLCD_D7_GPIO,GLCD_D0_PIN,((line & (1 << 7)) != 0));
   // GLCD_Data = 0xC0 | line;     //Set Start Line command  
    trigger();     
}
void goto_col (unsigned int x)
{
   byte pattern;
	glcd_gpio_write_pin(GLCD_RS_GPIO,GLCD_RS_PIN,0);//GLCD_RS low --> command
	glcd_gpio_write_pin(GLCD_RW_GPIO,GLCD_RW_PIN,0);//GLCD_RW low --> write  
   if(x<64)             //left section
   {
      #ifdef GLCD_CS_ActiveLow      
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,0); //select chip 1
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,1);//deselect chip 2
      #else                    
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,1);//select chip 1
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,0);//deselect chip 2
      #endif
      pattern = x;      //put column address on data port    
   }
   else                 //right section
   {
      #ifdef GLCD_CS_ActiveLow

				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,1); //select chip 1
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,0);//deselect chip 2
      #else
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,0); //select chip 1
				glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,1);//deselect chip 2
      #endif
      pattern = x-64;   //put column address on data port
   }    
   pattern = (pattern | 0x40 ) & 0x7F;  //Command format
     	glcd_gpio_write_pin(GLCD_D0_GPIO,GLCD_D0_PIN,((pattern & (1 << 0)) != 0));
			glcd_gpio_write_pin(GLCD_D1_GPIO,GLCD_D0_PIN,((pattern & (1 << 1)) != 0));
			glcd_gpio_write_pin(GLCD_D2_GPIO,GLCD_D0_PIN,((pattern & (1 << 2)) != 0));
			glcd_gpio_write_pin(GLCD_D3_GPIO,GLCD_D0_PIN,((pattern & (1 << 3)) != 0));
			glcd_gpio_write_pin(GLCD_D4_GPIO,GLCD_D0_PIN,((pattern & (1 << 4)) != 0));
			glcd_gpio_write_pin(GLCD_D5_GPIO,GLCD_D0_PIN,((pattern & (1 << 5)) != 0));
			glcd_gpio_write_pin(GLCD_D6_GPIO,GLCD_D0_PIN,((pattern & (1 << 6)) != 0));
			glcd_gpio_write_pin(GLCD_D7_GPIO,GLCD_D0_PIN,((pattern & (1 << 7)) != 0));
   trigger();     
}

void goto_row (unsigned int y)
{    
   byte pattern;   
   glcd_gpio_write_pin(GLCD_RS_GPIO,GLCD_RS_PIN,0);                 //GLCD_RS low --> command
   glcd_gpio_write_pin(GLCD_RW_GPIO,GLCD_RW_PIN,0); 	 //GLCD_RW low --> write    
	 
   pattern = (y | 0xB8 ) & 0xBF; //put row address on data port set command     
	 
	glcd_gpio_write_pin(GLCD_D0_GPIO,GLCD_D0_PIN,((pattern & (1 << 0)) != 0));
	glcd_gpio_write_pin(GLCD_D1_GPIO,GLCD_D0_PIN,((pattern & (1 << 1)) != 0));
	glcd_gpio_write_pin(GLCD_D2_GPIO,GLCD_D0_PIN,((pattern & (1 << 2)) != 0));
	glcd_gpio_write_pin(GLCD_D3_GPIO,GLCD_D0_PIN,((pattern & (1 << 3)) != 0));
	glcd_gpio_write_pin(GLCD_D4_GPIO,GLCD_D0_PIN,((pattern & (1 << 4)) != 0));
	glcd_gpio_write_pin(GLCD_D5_GPIO,GLCD_D0_PIN,((pattern & (1 << 5)) != 0));
	glcd_gpio_write_pin(GLCD_D6_GPIO,GLCD_D0_PIN,((pattern & (1 << 6)) != 0));
	glcd_gpio_write_pin(GLCD_D7_GPIO,GLCD_D0_PIN,((pattern & (1 << 7)) != 0));
	
	trigger();             
}
//----------------------
void goto_xy (unsigned int x,unsigned int y)
{    
    goto_col(x);
    goto_row(y);                                                     
} 

void glcd_write (byte b)
{
	 glcd_gpio_write_pin(GLCD_RS_GPIO,GLCD_RS_PIN,1);          //GLCD_RS high --> data
	 glcd_gpio_write_pin(GLCD_RW_GPIO,GLCD_RW_PIN,0);	 //GLCD_RW low --> write     
	 //put data on data port 
	 glcd_gpio_write_pin(GLCD_D0_GPIO,GLCD_D0_PIN,((b & (1 << 0)) != 0));
	 glcd_gpio_write_pin(GLCD_D1_GPIO,GLCD_D0_PIN,((b & (1 << 1)) != 0));
	 glcd_gpio_write_pin(GLCD_D2_GPIO,GLCD_D0_PIN,((b & (1 << 2)) != 0));
	 glcd_gpio_write_pin(GLCD_D3_GPIO,GLCD_D0_PIN,((b & (1 << 3)) != 0));
	 glcd_gpio_write_pin(GLCD_D4_GPIO,GLCD_D0_PIN,((b & (1 << 4)) != 0));
	 glcd_gpio_write_pin(GLCD_D5_GPIO,GLCD_D0_PIN,((b & (1 << 5)) != 0));
	 glcd_gpio_write_pin(GLCD_D6_GPIO,GLCD_D0_PIN,((b & (1 << 6)) != 0));
	 glcd_gpio_write_pin(GLCD_D7_GPIO,GLCD_D0_PIN,((b & (1 << 7)) != 0));	 
  
//	delay_us(1);   
   trigger();
}
//------------------------
void glcd_clrln (byte ln)
{
    int i;
    goto_xy(0,ln);      //At start of line of left side
    goto_xy(64,ln);     //At start of line of right side (Problem)
    #ifdef GLCD_CS_ActiveLow
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,0);
    #else
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,1);
    #endif    
    for(i=0;i<65;i++)
        glcd_write(0);
}

void glcd_clear ()
{
   int i;
   for(i=0;i<8;i++)
      glcd_clrln(i);
}
//-----------------------
byte is_busy ()
{
    byte status = 0;        //Read data here
    
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,0);		//Low Enable
    Delay_us(1);            //tf
    
	  glcd_gpio_write_pin(GLCD_RW_GPIO,GLCD_RW_PIN,1);		//Read
        
    glcd_gpio_write_pin(GLCD_RS_GPIO,GLCD_RS_PIN,0);		//Status         
    Delay_us(1);            //tasu
		
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,1);		//High Enable
    Delay_us(5);            //tr + max(td,twh)->twh
    
    //Dummy read
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,0);		//Low Enable
    Delay_us(5);            //tf + twl + chineese error    
		
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,1);		//High Enable
    Delay_us(1);            //tr + td        
                                  
    status = GLCD_Data_PIN;    //Input data
		
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,0);		//Low Enable
    Delay_us(1);            //tdhr
    #ifdef DEBUG_READ
        printf("S:%x\n\r",status);
    #endif
    return (status & 0x80);           
}
//-----------------------   
byte glcd_read (byte column)
{
    byte read_data = 0; //Read data here
		uint8_t Value;
        //Input 
		GPIO_Init(GLCD_D0_GPIO, GLCD_D0_PIN, GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(GLCD_D1_GPIO, GLCD_D1_PIN, GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(GLCD_D2_GPIO, GLCD_D2_PIN, GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(GLCD_D3_GPIO, GLCD_D3_PIN, GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(GLCD_D4_GPIO, GLCD_D4_PIN, GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(GLCD_D5_GPIO, GLCD_D5_PIN, GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(GLCD_D6_GPIO, GLCD_D6_PIN, GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(GLCD_D7_GPIO, GLCD_D7_PIN, GPIO_MODE_IN_PU_NO_IT);
    
    //while(is_busy());
      
    glcd_gpio_write_pin(GLCD_RW_GPIO, GLCD_RW_PIN,1);		//Read
            
    glcd_gpio_write_pin(GLCD_RS_GPIO, GLCD_RS_PIN, 1);    //Data
    #ifdef GLCD_CS_ActiveLow
        
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,(column>63));
				
    #else         
        
				glcd_gpio_write_pin(GLCD_CS1_GPIO,GLCD_CS1_PIN,(column>64));				//Enable/Disable GLCD_CS1
				
    #endif
    Value = !GLCD_CS1_PIN;  
		glcd_gpio_write_pin(GLCD_CS2_GPIO,GLCD_CS2_PIN,Value);		//Disable/Enable GLCD_CS2
    Delay_us(1);        //tasu
               
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,1); 		//Latch RAM data into ouput register
    Delay_us(1);        //twl + tf
    
    //Dummy read
    //while(is_busy());
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,0);            //Low Enable
    Delay_us(20);       //tf + twl + chineese error    
    
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,1);              //latch data from output register to data bus
    Delay_us(1);        //tr + td(twh)       
                                  
    read_data = GLCD_Data_PIN;    //Input data    
    glcd_gpio_write_pin(GLCD_EN_GPIO,GLCD_EN_PIN,0);              //Low Enable to remove data from the bus 
    Delay_us(1);        //tdhr
    #ifdef DEBUG_READ
        printf("R:%x\n\r",read_data);
    #endif
		//Output again
		GPIO_Init(GLCD_D0_GPIO, GLCD_D0_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	  GPIO_Init(GLCD_D1_GPIO, GLCD_D1_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
		GPIO_Init(GLCD_D2_GPIO, GLCD_D2_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
		GPIO_Init(GLCD_D3_GPIO, GLCD_D3_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
		GPIO_Init(GLCD_D4_GPIO, GLCD_D4_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
		GPIO_Init(GLCD_D5_GPIO, GLCD_D5_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
		GPIO_Init(GLCD_D6_GPIO, GLCD_D6_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
		GPIO_Init(GLCD_D7_GPIO, GLCD_D7_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    return read_data;      
}

/*byte get_point (unsigned int x,unsigned int y)
{
    byte data;
    goto_xy(x,((int)(y/8)));
    data = glcd_read();        
    return data;
} */ 
//----------------------
void point_at (unsigned int x,unsigned int y,byte color)
{
    byte pattern;
    goto_xy(x,(int)(y/8));  
    switch (color)
    {               
        case 0:         //Light spot                        
            pattern = ~(1<<(y%8)) & glcd_read(x);                  
        break;    
        case 1:         //Dark spot            
            pattern = (1<<(y%8)) | glcd_read(x);
            #ifdef DEBUG_GLCD
                Delay_ms(30);/////////////////////////////////////////
            #endif
        break;
    }           
    goto_xy(x,(int)(y/8));                                
    glcd_write(pattern);
}

void h_line (unsigned int x,unsigned int y,byte l,byte s,byte c)
{
    int i;
    for(i=x; i<(l+x); i += (byte)(s+1))
        point_at(i,y,c);
}
//-----------------------
void v_line (unsigned int x,unsigned int y,signed int l,byte s,byte c)
{
    unsigned int i;
    for(i=y; i<(y+l); i += (byte)(s+1))
        point_at(x,i,c);
}
//-----------------------
void line (unsigned int x1,unsigned int y1,
          unsigned int x2,unsigned int y2,
          byte s,byte c)
{
    byte i;
    byte y01;
    
    byte temp;
    
    float a;
    float b;
    
    byte y00;
    byte y010;
    
    if(x1==x2) 
    {    
        v_line(x1,min(y1,y2),abs(y2-y1)+1,s,c);
    }
    else if(y1==y2)
    {
        h_line(min(x1,x2),y1,abs(x2-x1)+1,s,c);
    }
    else    
    {
        if(x1>x2)
        {
            temp = x1;
            x1 = x2;
            x2 = temp;
            temp = y1;
            y1 = y2;
            y2 = temp;
        }
        
        a = (float)(signed)(y2-y1)/(x2-x1);
        b = y1 - a*x1;
        y00 = a*x1 + b;
        y010 = y00;    
                   
        for(i=(x1+1); i<=x2; i ++)
        {
            y01 = a*i + b + 0.5; //+ 0.5 to approximate to the nearest integer
                
            if( (signed char)(y01 - y010) > 1 )
            {
                //-------Subject to error
                v_line((i-1),(byte)(y010+1),(y01-y010-1),s,c);
            }
            else if( (signed char)(y010 - y01) > 1 )
            {
                //-------Subject to error
                v_line((i-1),(byte)(y01+1),(y010-y01-1),s,c);
            } 
                       
            if((i==x2) && (y00 == y01)) h_line(x1,y01,(x2-x1),0,c);                                  
            y010 = y01;       
            if( y00 ==  y01) continue;
            h_line(x1,y00,(i-x1),0,c);
            x1 = i;
            y00 = y01;
        }
        point_at(x2,y2,c); 
    }          
}
void rectangle (unsigned int x1,unsigned int y1,
               unsigned int x2,unsigned int y2,
               byte s,byte c)
{
    h_line(x1,y1,(x2-x1),s,c);
    h_line(x1,y2,(x2-x1),s,c);
    v_line(x1,y1,(y2-y1),s,c);
    v_line(x2,y1,(y2-y1+1),s,c);
}
//-----------------------
void cuboid (unsigned int x11,unsigned int y11,
            unsigned int x12,unsigned int y12,
            unsigned int x21,unsigned int y21,
            unsigned int x22,unsigned int y22,
            byte s,byte c)
{
    rectangle(x11,y11,x12,y12,s,c);
    rectangle(x21,y21,x22,y22,s,c);
    line(x11,y11,x21,y21,s,c);
    line(x12,y11,x22,y21,s,c);
    line(x11,y12,x21,y22,s,c);
    line(x12,y12,x22,y22,s,c);
}
//-----------------------
void h_parallelogram (unsigned int x1,unsigned int y1,
                     unsigned int x2,unsigned int y2,
                     byte l,byte s,byte c)
{
    h_line(x1,y1,l,s,c);
    h_line((x2-l+1),y2,l,s,c);
    line(x1,y1,(x2-l+1),y2,s,c);
    line((x1+l-1),y1,x2,y2,s,c);
}
//-----------------------
void v_parallelogram (unsigned int x1,unsigned int y1,
                     unsigned int x2,unsigned int y2,
                     byte l,byte s,byte c)
{
    v_line(x1,y1,l,s,c);
    v_line(x2,(y2-l+1),l,s,c);
    line(x1,y1,x2,(y2-l+1),s,c);
    line(x1,(y1+l-1),x2,y2,s,c);
}
void h_parallelepiped (unsigned int x11,unsigned int y11,
                      unsigned int x12,unsigned int y12,byte l1,
                      unsigned int x21,unsigned int y21,
                      unsigned int x22,unsigned int y22,byte l2,
                      byte s,byte c)
{
    h_parallelogram(x11,y11,x12,y12,l1,s,c);
    h_parallelogram(x21,y21,x22,y22,l2,s,c);
    line(x11,y11,x21,y21,s,c);
    line(x12,y12,x22,y22,s,c);
    line((x11+l1-1),y11,(x21+l2-1),y21,s,c);
    line((x12-l1+1),y12,(x22-l2+1),y22,s,c);
}
//-----------------------
void v_parallelepiped (unsigned int x11,unsigned int y11,
                      unsigned int x12,unsigned int y12,byte l1,
                      unsigned int x21,unsigned int y21,
                      unsigned int x22,unsigned int y22,byte l2,
                      byte s,byte c)
{
    v_parallelogram(x11,y11,x12,y12,l1,s,c);
    v_parallelogram(x21,y21,x22,y22,l2,s,c);
    line(x11,y11,x21,y21,s,c);
    line(x12,y12,x22,y22,s,c);
    line(x11,(y11+l1-1),x21,(y21+l2-1),s,c);
    line(x12,(y12-l1+1),x22,(y22-l2+1),s,c);
}
void circle (unsigned int x0,unsigned int y0,
            unsigned int r,byte s,byte c)
{
    byte i,y,y00;
    y00 = r;            //Point (0,r) is the 1st point
    for(i=0; i<r; i++)
    {
        y = isqrt((int)r*r - (int)i*i);
        point_at((x0+i),(y0+y),c);
        point_at((x0+i),(y0-y),c);
        point_at((x0-i),(y0+y),c);
        point_at((x0-i),(y0-y),c);        
        if(abs(y00-y)>1)
        {
            v_line(x0+(i-1),y0+min(y00,y)+1,abs(y00-y),s,c);
            v_line(x0+(i-1),y0-max(y00,y),abs(y00-y),s,c);
            v_line(x0-(i-1),y0+min(y00,y)+1,abs(y00-y),s,c);
            v_line(x0-(i-1),y0-max(y00,y),abs(y00-y),s,c);
        }
        y00 = y;   
    }
    v_line(x0+(i-1) ,y0,y ,s,c);
    v_line(x0+(i-1) ,y0-y ,y,s,c);
    v_line(x0-(i-1) ,y0,y ,s,c);
    v_line(x0-(i-1) ,y0-y ,y,s,c);    
}
//void ellipse(unsigned int x0,unsigned int y0,
//             unsigned int a,unsigned int b,
//             byte s,byte c)
//{
//    byte i,y,y00;
//    y00 = 1;
//    for(i=0; i < a; i++)
//    {
//        y = isqrt((int)a*a - (int)i*i);
//        point_at((x0+i)*(a+x0)/a,(y0+y)*(b+y0)/b,c);
//        point_at((x0+i)*(a+x0)/a,(y0-y)*(b+y0)/b,c);
//        point_at((x0-i)*(a+x0)/a,(y0+y)*(b+y0)/b,c);
//        point_at((x0-i)*(a+x0)/a,(y0-y)*(b+y0)/b,c);        
//        /*if(abs(y00-y)>1)
//        {
//            v_line(x0+(i-1),y0+min(y00,y)+1,abs(y00-y),s,c);
//            v_line(x0+(i-1),y0-max(y00,y),abs(y00-y),s,c);
//            v_line(x0-(i-1),y0+min(y00,y)+1,abs(y00-y),s,c);
//            v_line(x0-(i-1),y0-max(y00,y),abs(y00-y),s,c);
//            
//            printf("y=%u y00=%u\n\r",y,y00);
//        }*/
//        y00 = y;   
//    }
//    /*v_line(x0+(i-1) ,y0,y ,s,c);
//    v_line(x0+(i-1) ,y0-y ,y,s,c);
//    v_line(x0-(i-1) ,y0,y ,s,c);
//    v_line(x0-(i-1) ,y0-y ,y,s,c);*/    
//}  
//------------Arabic/English Writing-------
void putIt (int c,int x,int y)
{
   byte i;
  goto_col(x);
  goto_row(y);
  for(i=0;i<8;i++)
  {
     glcd_write(font[(8*c)+i]);
  }
}
//--------------------------
void enlarge (char *large,unsigned char c,byte size)
{
	byte i,j,temp;
	byte k = 0;
	for(i=0;i<size;i++)
	{
		for(j=0;j<8;j++)
		{
			large[i] >>= 1;
			temp = c & 0x01;
			if(temp)
				large[i] |= 0x80;
			if(++k == size)
			{
				c >>= 1;
				k = 0;
			}
		}
	}
}

void putItSz (int c,int x,int y,byte sz)
{
  byte i,j,k;
  //char large[8][sz];  
  char large[8][8];
  
  goto_col(x);
  goto_row(y);
  for(i=0;i<8;i++)
  {                                     
	  enlarge(large[i],font[(8*c)+i],sz);		//c here;GCC (c-1)
  }
  for(j=0;j<sz;j++)
  {
	  for(i=0;i<8;i++)
	  {
		  for(k=0;k<sz;k++)
		  {
			  if(x+k+(sz*i) == 64) goto_xy(64,y);		//Problem 1: Forgot to change 3 to sz
			  glcd_write(large[i][j]);
		  }
	  }
	  goto_xy(x,++y);
  }
}
//--------------------------
void glcd_putchar (byte c,int x,int y,byte l,byte sz)
{
    if(l == 1)
    {       
        switch(c)
    	{
    	case 129:
    		c = 250;
    		break;
    	case 144:
    		c = 251;
    		break;
    	case 152:
    		c = 252;
    		break;
    	case 142:
    		c = 253;
    		break;
    	case 141:
    		c = 254;
    		break;
    	}
        if((c >= 193) && (prevLet >= 193) && (map[prevLet-193][5]) && (map[c-193][4]))
        {
            putIt(map[prevLet-193][stat+1],prevX,prevY);
            stat = 2;
        }else stat = 0;

        if(c >= 193) putItSz(map[c-193][stat],x,y,sz);
        else putItSz(c,x,y,sz);

        prevLet = c;
        prevX = x;
        prevY = y;

    }else putItSz(c,x,y,sz);
}

//---------------------------
void glcd_puts(byte *c,int x,int y,unsigned char l,byte sz,signed char space)
{
   char i = 0;
   char special = 0;
   while((i<strlen(c)) && l==0)
   {
      glcd_putchar(*(c+i),x,y,0,sz);
      x += (8+space)*sz;
      if(x>128-8*sz)
      {
         x=0;
         y += sz;
      }
      i++;
   }

   while((i<strlen(c)) && l==1)
   {
      if((*(c+i) == 225) && (*(c+i+1) == 199))
        special = 249;
      else if((*(c+i) == 225) && (*(c+i+1) == 195))
        special = 231;
      else if((*(c+i) == 225) && (*(c+i+1) == 194))
        special = 232;
      else if((*(c+i) == 225) && (*(c+i+1) == 197))
        special = 233;
      if(special)
      {
        glcd_putchar(special,x-8*sz,y,1,sz);
        i+=2;
        x -= 8*sz;
        special = 0;
      }      
      else
      {
		  glcd_putchar(*(c+i),x-8*sz,y,l,sz);
		  if(*(c+i) == 32)						//If space (i.e. new word)
		  {
			  x -= (8+space)*sz;				//Space between words
		  }
		  else
		  {
			  x -= 8*sz;
		  }
		  i++;
      } 
      if(x < 8*sz+1)
      {
         x=128-8*sz;
         y += sz;
      }
   }
   prevLet = 193;
}
//------------BMP Display--------------------
void bmp_disp (flash byte *bmp,unsigned int x1,unsigned int y1,
                              unsigned int x2,unsigned int y2)
{
    unsigned int i,j;    
    for(i=y1;i<=y2;i++)
    {
        for(j=x1;j<=x2;j++)
        {                       
           goto_xy(j,i);                              
           glcd_write(bmp[(128*i)+j]);
        }                                              
    }
}

#pragma used-


#endif