#line 1 "ES_Port.c"
#line 1 "ES_Port.c"

#line 23 "ES_Port.c"
 



#line 1 "./ES_Port.h"

#line 20 "./ES_Port.h"
 

#line 23 "./ES_Port.h"



#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
 


#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"

typedef void* va_list;
#line 8 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 12 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"


#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"



#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
 
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"


typedef unsigned char FILE;

 
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

extern FILE *stderr;
extern FILE *stdout;


int putc (auto char c, auto FILE *f);
int vsprintf (auto char *buf, auto const far  rom char *fmt, auto va_list ap);
int vprintf (auto const far  rom char *fmt, auto va_list ap);
int sprintf (auto char *buf, auto const far  rom char *fmt, ...);
int printf (auto const far  rom char *fmt, ...);
int fprintf (auto FILE *f, auto const far  rom char *fmt, ...);
int vfprintf (auto FILE *f, auto const far  rom char *fmt, auto va_list ap);
int puts (auto const far  rom char *s);
int fputs (auto const far  rom char *s, auto FILE *f);

#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
#line 26 "./ES_Port.h"



#line 1 "./BITDEFS.H"

#line 3 "./BITDEFS.H"
 

 

#line 8 "./BITDEFS.H"

#line 10 "./BITDEFS.H"
#line 11 "./BITDEFS.H"
#line 12 "./BITDEFS.H"
#line 13 "./BITDEFS.H"
#line 14 "./BITDEFS.H"
#line 15 "./BITDEFS.H"
#line 16 "./BITDEFS.H"
#line 17 "./BITDEFS.H"
#line 18 "./BITDEFS.H"
#line 19 "./BITDEFS.H"
#line 20 "./BITDEFS.H"
#line 21 "./BITDEFS.H"
#line 22 "./BITDEFS.H"
#line 23 "./BITDEFS.H"
#line 24 "./BITDEFS.H"
#line 25 "./BITDEFS.H"
#line 26 "./BITDEFS.H"
#line 27 "./BITDEFS.H"
#line 28 "./BITDEFS.H"
#line 29 "./BITDEFS.H"
#line 30 "./BITDEFS.H"
#line 31 "./BITDEFS.H"
#line 32 "./BITDEFS.H"
#line 33 "./BITDEFS.H"
#line 34 "./BITDEFS.H"
#line 35 "./BITDEFS.H"
#line 36 "./BITDEFS.H"
#line 37 "./BITDEFS.H"
#line 38 "./BITDEFS.H"
#line 39 "./BITDEFS.H"
#line 40 "./BITDEFS.H"
#line 41 "./BITDEFS.H"

#line 43 "./BITDEFS.H"
#line 44 "./BITDEFS.H"
#line 45 "./BITDEFS.H"
#line 46 "./BITDEFS.H"
#line 47 "./BITDEFS.H"
#line 48 "./BITDEFS.H"
#line 49 "./BITDEFS.H"
#line 50 "./BITDEFS.H"
#line 51 "./BITDEFS.H"
#line 52 "./BITDEFS.H"
#line 53 "./BITDEFS.H"
#line 54 "./BITDEFS.H"
#line 55 "./BITDEFS.H"
#line 56 "./BITDEFS.H"
#line 57 "./BITDEFS.H"
#line 58 "./BITDEFS.H"
#line 59 "./BITDEFS.H"
#line 60 "./BITDEFS.H"
#line 61 "./BITDEFS.H"
#line 62 "./BITDEFS.H"
#line 63 "./BITDEFS.H"
#line 64 "./BITDEFS.H"
#line 65 "./BITDEFS.H"
#line 66 "./BITDEFS.H"
#line 67 "./BITDEFS.H"
#line 68 "./BITDEFS.H"
#line 69 "./BITDEFS.H"
#line 70 "./BITDEFS.H"
#line 71 "./BITDEFS.H"
#line 72 "./BITDEFS.H"
#line 73 "./BITDEFS.H"
#line 74 "./BITDEFS.H"

#line 76 "./BITDEFS.H"

#line 29 "./ES_Port.h"
        
#line 1 "./Bin_Const.h"

#line 3 "./Bin_Const.h"


#line 6 "./Bin_Const.h"
 

 

 


#line 15 "./Bin_Const.h"
 

#line 18 "./Bin_Const.h"

 

#line 27 "./Bin_Const.h"
#line 28 "./Bin_Const.h"

 
 

#line 33 "./Bin_Const.h"

 


#line 37 "./Bin_Const.h"
#line 38 "./Bin_Const.h"

 


#line 44 "./Bin_Const.h"
#line 45 "./Bin_Const.h"

#line 47 "./Bin_Const.h"


#line 52 "./Bin_Const.h"
 
#line 30 "./ES_Port.h"
      
#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 

#line 20 "./ES_Types.h"

 
#line 25 "./ES_Types.h"

#line 27 "./ES_Types.h"


 
 
#line 34 "./ES_Types.h"

#line 36 "./ES_Types.h"


#line 39 "./ES_Types.h"
#line 31 "./ES_Port.h"

























 
#line 58 "./ES_Port.h"
 
#line 60 "./ES_Port.h"



#line 70 "./ES_Port.h"
 
typedef enum {	ES_Timer_RATE_OFF  	=   (0),
				ES_Timer_RATE_100uS = 4000-1,
				ES_Timer_RATE_500uS = 20000-1,
				ES_Timer_RATE_1mS	= 40000-1,
				ES_Timer_RATE_2mS	= 80000-1,
				ES_Timer_RATE_4mS	= 160000-1,
				ES_Timer_RATE_5mS	= 200000-1,
				ES_Timer_RATE_8mS	= 320000-1,
				ES_Timer_RATE_10mS	= 400000-1,
				ES_Timer_RATE_16mS	= 640000-1,
				ES_Timer_RATE_32mS	= 1280000-1
} TimerRate_t;




#line 88 "./ES_Port.h"
#line 89 "./ES_Port.h"

#line 91 "./ES_Port.h"
#line 92 "./ES_Port.h"


void _HW_Timer_Init(TimerRate_t Rate);
bool _HW_Process_Pending_Ints( void );
uint16_t _HW_GetTickCount(void);




#line 102 "./ES_Port.h"
#line 27 "ES_Port.c"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 28 "ES_Port.c"

#line 1 "./ES_Timers.h"

#line 29 "./ES_Timers.h"
 


#line 33 "./ES_Timers.h"

#line 1 "./ES_Port.h"

#line 20 "./ES_Port.h"
 

#line 70 "./ES_Port.h"
#line 102 "./ES_Port.h"
#line 34 "./ES_Timers.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 35 "./ES_Timers.h"



typedef enum { ES_Timer_ERR           = -1,
               ES_Timer_ACTIVE        =  1,
               ES_Timer_OK            =  0,
               ES_Timer_NOT_ACTIVE    =  0
} ES_TimerReturn_t;

void             ES_Timer_Init(TimerRate_t Rate);
void             ES_Timer_Tick_Resp(void);
ES_TimerReturn_t ES_Timer_InitTimer(uint8_t Num, uint16_t NewTime);
ES_TimerReturn_t ES_Timer_SetTimer(uint8_t Num, uint16_t NewTime);
ES_TimerReturn_t ES_Timer_StartTimer(uint8_t Num);
ES_TimerReturn_t ES_Timer_StopTimer(uint8_t Num);
uint16_t         ES_Timer_GetTime(void);

#line 53 "./ES_Timers.h"
 


#line 29 "ES_Port.c"

#line 1 "./ES_Events.h"

#line 16 "./ES_Events.h"
 


#line 20 "./ES_Events.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 21 "./ES_Events.h"

#line 1 "./ES_Configure.h"

#line 19 "./ES_Configure.h"
 


#line 23 "./ES_Configure.h"

 



#line 29 "./ES_Configure.h"

 


#line 34 "./ES_Configure.h"

 





#line 42 "./ES_Configure.h"

#line 44 "./ES_Configure.h"

#line 46 "./ES_Configure.h"

#line 48 "./ES_Configure.h"

 



 

#line 56 "./ES_Configure.h"

#line 58 "./ES_Configure.h"

#line 60 "./ES_Configure.h"

#line 62 "./ES_Configure.h"

#line 64 "./ES_Configure.h"
#line 65 "./ES_Configure.h"

 

#line 69 "./ES_Configure.h"
#line 78 "./ES_Configure.h"

 

#line 82 "./ES_Configure.h"
#line 91 "./ES_Configure.h"

 

#line 95 "./ES_Configure.h"
#line 104 "./ES_Configure.h"

 

#line 108 "./ES_Configure.h"
#line 117 "./ES_Configure.h"

 

#line 121 "./ES_Configure.h"
#line 130 "./ES_Configure.h"

 

#line 134 "./ES_Configure.h"
#line 143 "./ES_Configure.h"

 

#line 147 "./ES_Configure.h"
#line 156 "./ES_Configure.h"

 

#line 160 "./ES_Configure.h"
#line 169 "./ES_Configure.h"

 

#line 173 "./ES_Configure.h"
#line 182 "./ES_Configure.h"

 

#line 186 "./ES_Configure.h"
#line 195 "./ES_Configure.h"

 

#line 199 "./ES_Configure.h"
#line 208 "./ES_Configure.h"

 

#line 212 "./ES_Configure.h"
#line 221 "./ES_Configure.h"

 

#line 225 "./ES_Configure.h"
#line 234 "./ES_Configure.h"

 

#line 238 "./ES_Configure.h"
#line 247 "./ES_Configure.h"


 


typedef enum {   
                ES_NO_EVENT = 0,
                ES_ERROR,   
                ES_INIT,    
                ES_TIMEOUT,  
                ES_SHORT_TIMEOUT,  
                 
                PATTERN_START,
                PATTERN_END,
                PATTERN_PAUSE,
                PATTERN_UNPAUSE,
                 
                SPI32_TRANSMIT
            } ES_EventTyp_t;

 



#line 272 "./ES_Configure.h"
#line 273 "./ES_Configure.h"
#line 275 "./ES_Configure.h"
#line 276 "./ES_Configure.h"
#line 278 "./ES_Configure.h"
#line 279 "./ES_Configure.h"
#line 281 "./ES_Configure.h"
#line 282 "./ES_Configure.h"
#line 284 "./ES_Configure.h"
#line 285 "./ES_Configure.h"
#line 287 "./ES_Configure.h"
#line 288 "./ES_Configure.h"
#line 290 "./ES_Configure.h"
#line 291 "./ES_Configure.h"
#line 293 "./ES_Configure.h"
#line 294 "./ES_Configure.h"
#line 296 "./ES_Configure.h"

 

#line 300 "./ES_Configure.h"

 

#line 304 "./ES_Configure.h"

 





#line 312 "./ES_Configure.h"
#line 313 "./ES_Configure.h"
#line 314 "./ES_Configure.h"
#line 315 "./ES_Configure.h"
#line 316 "./ES_Configure.h"
#line 317 "./ES_Configure.h"
#line 318 "./ES_Configure.h"
#line 319 "./ES_Configure.h"
#line 320 "./ES_Configure.h"
#line 321 "./ES_Configure.h"
#line 322 "./ES_Configure.h"
#line 323 "./ES_Configure.h"
#line 324 "./ES_Configure.h"
#line 325 "./ES_Configure.h"
#line 326 "./ES_Configure.h"
#line 327 "./ES_Configure.h"
#line 328 "./ES_Configure.h"

 






#line 337 "./ES_Configure.h"
#line 338 "./ES_Configure.h"
#line 339 "./ES_Configure.h"
#line 22 "./ES_Events.h"


typedef struct ES_Event_t {
    ES_EventTyp_t EventType;    
    uint16_t   EventParam;      
}ES_Event;


#line 31 "./ES_Events.h"
#line 30 "ES_Port.c"

#line 1 "./SPI32_HW.h"

#line 12 "./SPI32_HW.h"
 


#line 16 "./SPI32_HW.h"

 



 
void SPI32_Init(void);
void SPI32_SendByte(uint8_t newByte);
void SPI32_EOTResponse(void);

#line 27 "./SPI32_HW.h"
#line 31 "ES_Port.c"


#line 34 "ES_Port.c"
#line 35 "ES_Port.c"
#line 36 "ES_Port.c"
#line 37 "ES_Port.c"

#line 39 "ES_Port.c"







static volatile uint8_t TickCount;





static volatile uint16_t SysTickCounter = 0;




#line 72 "ES_Port.c"
 
void _HW_Timer_Init(TimerRate_t Rate)
{
   
   
   Rate;     
   
#line 80 "ES_Port.c"
 
   PIE1    = 0b00000100;
   
#line 85 "ES_Port.c"
 
   INTCON  = 0b01000000;
    
#line 91 "ES_Port.c"
 
   CCP1CON = 0b00001010;
   
#line 95 "ES_Port.c"
 
   CCPR1L  = 0b00000001;
   
#line 99 "ES_Port.c"
 
   CCPR1H  = 0b00000000;
   
   
#line 107 "ES_Port.c"
 
   T1CON = 0b00100001;

   {GIE = 1;} ;                 
}

void interrupt ISR ( void )
{
   
   static unsigned int LastTime;
   static unsigned int NextTime;

	if (CCP1IF == 1) 
   {
      LastTime = ((unsigned int)CCPR1H << 8)+ CCPR1L;
      NextTime = LastTime + ((32000000L/4/4)/100) ;
      CCPR1H = (unsigned char)(NextTime >> 8);
      CCPR1L = (unsigned char)(NextTime & 0xFF);
      CCP1IF = 0; 
	  TickCount++; 
      SysTickCounter++;     
   }
   if (SSPIF == 1)
   {
       SSPIF = 0; 
       SPI32_EOTResponse(); 
   }

	   
}


#line 154 "ES_Port.c"
 


#line 166 "ES_Port.c"
 


#line 182 "ES_Port.c"
 
uint16_t _HW_GetTickCount(void)
{
   return (SysTickCounter);
}


#line 208 "ES_Port.c"
 
bool _HW_Process_Pending_Ints( void )
{
   while (TickCount > 0)
   {
       
      ES_Timer_Tick_Resp();  
      TickCount--;
   }
   
   return true; 
}


#line 234 "ES_Port.c"
 

#line 255 "ES_Port.c"
 


#line 259 "ES_Port.c"
#line 295 "ES_Port.c"

#line 297 "ES_Port.c"
#line 335 "ES_Port.c"
