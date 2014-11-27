#include "stm8l.h"

int main() {
	int d,i;
	// Configure pins
	PE_DDR = 0x80;
	PE_CR1 = 0x80;
	// Loop
	do {
		PE_ODR ^= 0x80;
		for(d = 0; d < 29000; d++) {
            for(i=0;i<10; i++){}
        }
	} while(1);
}
