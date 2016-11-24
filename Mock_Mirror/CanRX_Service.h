/* 
 * File:   CanRX_Service.h
 * Author: jeannywang
 *
 * Created on November 23, 2016, 11:44 PM
 */

#ifndef CANRX_SERVICE_H
#define	CANRX_SERVICE_H

 //the common headers for C99 types 
#include "ES_Types.h"

 //function prototypes
bool InitCanRX_Service( uint8_t Priority );
bool PostCanRX_Service( ES_Event ThisEvent );
ES_Event RunCanRX_Service( ES_Event ThisEvent );
void CanXmitResponse(void); 
void CanReceiveResponse(void);
void CanErrorResponse(void);
void BusErrorResponse(void);

#endif	/* CANRX_SERVICE_H */

