#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  DDRB = 0b000010;

  while (1) {
    PORTB = 0b000010;
    _delay_ms(1000);
    PORTB = 0;
    _delay_ms(1000);
  }

  return 0;
}
