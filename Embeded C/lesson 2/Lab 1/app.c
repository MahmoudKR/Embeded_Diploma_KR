#include "uart.h"

unsigned char String_Buffer [100]= "Learn_in_Deapth : <Mahmoud>";
void main (void)
{
	Uart_Send_String ( String_Buffer);
}

