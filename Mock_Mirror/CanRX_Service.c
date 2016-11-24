/****************************************************************************
 Module
   Can_ReceiveService.c

 Revision
   1.0.1

 Description
   ES Framework service for can control

 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 11/10/16 06:49 jw       started implementation of can service
 01/15/12 11:12 jec      revisions for Gen2 framework
 11/07/11 11:26 jec      made the queue static
 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
****************************************************************************/
/*----------------------------- Include Files -----------------------------*/
/* include header files for this state machine as well as any machines at the
   next lower level in the hierarchy that are sub-machines to this machine
*/
//std c libraries
#include "ES_Types.h"

//framework headers
#include "ES_Configure.h"
#include "ES_Framework.h"

//module includes
#include "CanRX_Service.h"

/*----------------------------- Module Defines ----------------------------*/
#define ONE_SEC 25

// Data Identifiers
#define IDLE 0x00
#define LOADING 0x01
#define SPEAKING 0x02
#define LISTENING 0x03
#define LISTENING_IDLE 0x00
#define LISTENING_RIGHT 0x01
#define LISTENING_LEFT 0x02
#define LISTENING_CENTER 0x03

//Pins to Toggle for Debugging
#define IDLE_PIN LATA0
#define LOADING_PIN LATA1
#define SPEAKING_PIN LATA2
#define LISTENING_PIN LATA3
#define LISTENING_LEFT_PIN LATA4
#define LISTENING_RIGHT_PIN LATA5
#define LISTENING_CENTER_PIN LATB0

//Identifiers
#define SIDH 0x00
#define SIDL 0x18
#define EIDH 0x00
#define EIDL 0x01

/*---------------------------- Module Functions ---------------------------*/
/* prototypes for private functions for this machine.They should be functions
   relevant to the behavior of this state machine
*/
static void InitCanHardware(void);
static void InitPins(void);
static void ProcessReceive(void);

/*---------------------------- Module Variables ---------------------------*/
static uint8_t MyPriority;

/*------------------------------ Module Code ------------------------------*/
/****************************************************************************
 Function
     InitReceive_XmitService

 Parameters
     uint8_t : the priority of this service

 Returns
     bool, false if error in initialization, true otherwise

 Description
     Saves away the priority, sets up the initial transition and does any
     other required initialization for this state machine

****************************************************************************/
bool InitCanRX_Service( uint8_t Priority )
{
  ES_Event ThisEvent;

  MyPriority = Priority;

   //post the initial transition event
  ThisEvent.EventType = ES_INIT;
  if (ES_PostToService( MyPriority, ThisEvent) == true)
  {
      return true;
  }else
  {
      return false;
  }
}

/****************************************************************************
 Function
     Post_CanTransmitService

 Parameters
     EF_Event ThisEvent , the event to post to the queue

 Returns
     boolean False if the Enqueue operation failed, True otherwise

 Description
     Posts an event to this state machine's queue
 
****************************************************************************/
bool PostCanRX_Service( ES_Event ThisEvent )
{
  return ES_PostToService( MyPriority, ThisEvent);
}


/****************************************************************************
 Function
    RunCan_ReceiveService

 Parameters
   ES_Event : the event to process

 Returns
   ES_Event, ES_NO_EVENT if no error ES_ERROR otherwise

 Description
   add your description here
 
****************************************************************************/
ES_Event RunCanRX_Service( ES_Event ThisEvent )
{
  ES_Event ReturnEvent;

  switch(ThisEvent.EventType) {
      case ES_INIT:
          InitPins();
          InitCanHardware();
          break;
        case IDLE_EVENT:
            IDLE_PIN = 1;
            LOADING_PIN = 0;
            SPEAKING_PIN = 0;
            LISTENING_PIN = 0;
            LISTENING_LEFT_PIN = 0;
            LISTENING_RIGHT_PIN = 0;
            LISTENING_CENTER_PIN = 0;
            break;
        case LOADING_EVENT:
            IDLE_PIN = 0;
            LOADING_PIN = 1;
            SPEAKING_PIN = 0;
            LISTENING_PIN = 0;
            LISTENING_LEFT_PIN = 0;
            LISTENING_RIGHT_PIN = 0;
            LISTENING_CENTER_PIN = 0;
            break;
        case SPEAKING_EVENT:
            IDLE_PIN = 0;
            LOADING_PIN = 0;
            SPEAKING_PIN = 1;
            LISTENING_PIN = 0;
            LISTENING_LEFT_PIN = 0;
            LISTENING_RIGHT_PIN = 0;
            LISTENING_CENTER_PIN = 0;
            break;
        case LISTENING_IDLE_EVENT:
            IDLE_PIN = 0;
            LOADING_PIN = 0;
            SPEAKING_PIN = 0;
            LISTENING_PIN = 1;
            LISTENING_LEFT_PIN = 0;
            LISTENING_RIGHT_PIN = 0;
            LISTENING_CENTER_PIN = 0;
            break;
        case LISTENING_LEFT_EVENT:
            IDLE_PIN = 0;
            LOADING_PIN = 0;
            SPEAKING_PIN = 0;
            LISTENING_PIN = 1;
            LISTENING_LEFT_PIN = 1;
            LISTENING_RIGHT_PIN = 0;
            LISTENING_CENTER_PIN = 0;
            break;   
      case LISTENING_RIGHT_EVENT:
            IDLE_PIN = 0;
            LOADING_PIN = 0;
            SPEAKING_PIN = 0;
            LISTENING_PIN = 1;
            LISTENING_LEFT_PIN = 0;
            LISTENING_RIGHT_PIN = 1;
            LISTENING_CENTER_PIN = 0;
            break;
      case LISTENING_CENTER_EVENT:
            IDLE_PIN = 0;
            LOADING_PIN = 0;
            SPEAKING_PIN = 0;
            LISTENING_PIN = 1;
            LISTENING_LEFT_PIN = 0;
            LISTENING_RIGHT_PIN = 0;
            LISTENING_CENTER_PIN = 1;
            break;
  }
  ReturnEvent.EventType = ES_NO_EVENT; // assume no errors
  return ReturnEvent;
}

void CanXmitResponse(void) 
{
    TXB0CONbits.TXREQ = 0;
}

void CanRCVResponse(void)
{
    if (RXB0CONbits.RXFUL == 1) {
        ProcessReceive();
        RXB0CONbits.RXFUL = 0; //clear buffer
        
    }
}

void CanErrorResponse(void) 
{
    // For debugging
}

void BusErrorResponse(void)
{
//    For debugging
}

/***************************************************************************
 private functions
 ***************************************************************************/
static void InitCanHardware(void)
{
	// 2. Ensure that the ECAN module is in Configuration
	// mode.
	CANCON = 0x80; //Request Configuration Mode p. 282
	// 3. Select ECAN Operational mode.
    while (CANSTATbits.OPMODE2 != 1);
    CIOCON = 0x20;
	// 4. Set up the Baud Rate registers.
    //114 kbs baud rate
    BRGCON2bits.SEG2PHTS = 1; //freely programmable SEG2PH

    BRGCON1bits.BRP0 = 0;
    BRGCON1bits.BRP1 = 1;
    BRGCON1bits.BRP2 = 1;
    BRGCON1bits.BRP3 = 0;
    
    BRGCON2bits.PRSEG0 = 0; //1 TQ
    BRGCON2bits.PRSEG1 = 0;
    BRGCON2bits.PRSEG2 = 0;
    
    BRGCON2bits.SEG1PH0 = 0; //1 TQ
    BRGCON2bits.SEG1PH1 = 0;
    BRGCON2bits.SEG1PH2 = 0;
    
    BRGCON3bits.SEG2PH0 = 1; //2 TQ
    BRGCON3bits.SEG2PH1 = 0;
    BRGCON3bits.SEG2PH2 = 0;
    
    BRGCON1bits.SJW0 = 0; //1 TQ
    
	// 5. Set up the Filter and Mask registers.
    
    RXB0CONbits.RXB0DBEN = 0; //No Receive Buffer 0 overflow to Receive Buffer 1 
    RXB0CONbits.RXM0 = 0; //Receive all messages Standard or EID
    RXB0CONbits.RXM1 = 0;
    RXF0SIDH = 0x00;
    RXF0SIDL = 0x08;
    RXF0EIDH = 0x00;
    RXF0EIDL = 0x01;
        
    RXM0SIDH = 0x00; 
    RXM0SIDL = 0x00; 
    RXM0EIDH = 0x00;
    RXM0EIDL = 0x01;
    
    // 6. Set the ECAN module to normal mode or any
	// other mode required by the application logic.
    ECANCON = 0x00; // Set in MODE 0 (should be default already)
	CANCON = 0b00010000; //Return to normal request mode
    while (CANSTATbits.OPMODE2 != 0); // wait to return to normal mode
    
    // Enable Interrupts
    RXB0IE = 1; //enable interrupt
    ERRIE = 1; // Can module error
    IRXIE = 1; // CAN Bus error
    
    
	// Clear TXREQ to get buffer ready for transmission
    RXB0IF = 0;
    ERRIF = 0;
    IRXIF = 0;
    TXB0IE = 1; //enable interrupt
    TXB0IF = 0; //clear flag
    TXB0CONbits.TXREQ = 0;
    RXB0CONbits.RXFUL = 0; //make sure buffer is cleared
}

static void InitPins(void) 
{
 // 1. Initial LAT and TRIS bits for RX (RB3)and TX (RB2) CAN.
  PORTB = 0x00; // Clear portB
  LATB = 0x00; // Clear Data Latches
  TRISBbits.TRISB2 = 0; // Set RB2 as output
  TRISBbits.TRISB3 = 1; // Set RB3 as input
  
  // To test functionality
  PORTA = 0x00; // Clear portA
  LATA = 0x00; // Clear Data Latches
  TRISA = 0x00; //set as output
  TRISBbits.TRISB0 = 0;
}

static void ProcessReceive(void)
{
    // Check if Identfiers match
    if (RXB0SIDH == SIDH && RXB0SIDL == SIDL && RXB0EIDH == EIDH && RXB0EIDL == EIDL)  {
        ES_Event Event2Post;
        switch(RXB0D0) { //Read First Data Byte
            case IDLE:
                Event2Post.EventType = IDLE_EVENT;
                break;
            case SPEAKING:
                Event2Post.EventType = SPEAKING_EVENT;
                break;
            case LOADING:
                Event2Post.EventType = LOADING_EVENT;
                break;
            case LISTENING:
                if (RXB0D1 == LISTENING_IDLE) { //Read Second Data Byte
                    Event2Post.EventType = LISTENING_IDLE_EVENT;
                } else if (RXB0D1 == LISTENING_LEFT) {
                    Event2Post.EventType = LISTENING_LEFT_EVENT;
                } else if (RXB0D1 == LISTENING_RIGHT) {
                    Event2Post.EventType = LISTENING_RIGHT_EVENT;
                } else {
                    Event2Post.EventType = LISTENING_CENTER_EVENT;
                }
                break;
        }
        PostCanRX_Service(Event2Post);
    }
}