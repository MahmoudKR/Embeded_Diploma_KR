#include "uart.h"

#define UARTODR *((volatile unsigned int * const )((unsigned int *)0x101f1000))
void Uart_Send_String (unsigned char *P_tx)
{
	while (*P_tx !='\0')
	{
		UARTODR = (unsigned int)(*P_tx);
		P_tx ++;
	} 
}