.global main

main:
ldi r24, 0b00000010
sts 0x24, r24 ; set the DDRB
sts 0x25, r24 ; set the value on digital pin 9
rjmp repeat

repeat:
call predelay
call delay
ldi r24, 0b00000000
sts 0x25, r24
call predelay
call delay
ldi r24, 0b00000010
sts 0x25, r24
rjmp repeat

predelay:
ldi r16, 100
ldi r17, 100
ldi r18, 100
ret

; delay method created with help of chatGPT
delay:
dec r16
brne delay
dec r17 
brne delay
dec r18
brne delay
rjmp delayassist

delayassist:
ret