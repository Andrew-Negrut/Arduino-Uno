#include <avr/io.h>

int main(void) {
    DDRB = 0b00000010; // set pin 8 as input (0) and pin 9 as output (1)

    while (1) {
        // if pin 8 is high
        if (PINB & 1) {
            PORTB |= (1 << 1); // set pin 9 to high
        }
        else {
            PORTB &= ~(1 << 1); // set pin 9 to low
        }
    }

    return 0;
}