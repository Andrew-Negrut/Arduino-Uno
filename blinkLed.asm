.global main

main:
ldi r24, 0b00000010
sts 0x24, r24 ; set the DDRB
sts 0x25, r24 ; set the value on digital pin 9
call repeat

repeat:
call delay
ldi r24, 0b00000000
sts 0x25, r24
call delay
ldi r24, 0b00000011
sts 0x25, r24
rjmp repeat

delay:
ldi r24, 0b00000000
ldi r24, 0b11111111
ldi r24, 0b00000000
ldi r24, 0b11111111