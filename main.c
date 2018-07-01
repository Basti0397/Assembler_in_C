/* Includes ------------------------------------------------------------------*/
#include <stdio.h>

#include "TI_Lib.h"
#include "tft.h"

uint32_t Multiply(void);

extern uint32_t VarA;
extern uint32_t VarB;
int main(void)
{
  Init_TI_Board();
  TFT_cls();
	uint32_t res = 0;
	VarA = 2;
	VarB = 38;
	
	res = Multiply();
	char resStr[20];
	sprintf(resStr, "%d", res);
	
	TFT_puts(resStr);
  return 0;

}
