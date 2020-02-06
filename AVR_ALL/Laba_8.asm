;LR_8
.include"m16def.inc";1
.org 0 ;2
jmp start ;3
.org 0x002 ;4
jmp pp0 ;5
.org 0x004 ;6
jmp pp1 ;7
start: ;8
ldi r16, 0x04 ;9
out sph, r16 ;10
ldi r16, 0x5f ;11
out spl, r16 ;12
ldi r16, 0xc0 ;13
out gicr, r16 ;14
ldi r16, 0x0f ;15 ;model prerivaniy
out mcucr, r16 ;16
sbi ddrd, 2 ;17		;cbi->sbi
sbi ddrd, 3 ;18		;-||-
ldi r16, 0xff ;19
out ddrc, r16 ;20
sei ;21
ldi r18, 1 ;22
m1: add r17, r18 ;23
 out portc, r17 ;24
 rjmp m1 ;25
pp0: ;26
 ldi r18, 1 ;27
 reti ;28
pp1: ;29
 ldi r18, -1 ;30
 reti ;31
