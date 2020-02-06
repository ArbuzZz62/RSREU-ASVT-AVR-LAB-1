; LR_7
.include "m16def.inc" ;1
ldi r16, 0x04 ;2
out sph, r16 ;3
ldi r16, 0x5f ;4
out spl, r6 ;5
 call pp1 ;6
;call pp2 ;7
 ;call pp3 ;8
m: jmp m ;9
pp1: ldi r16, 0xff ;10
ldi r19, 0xFF ;        //в этот регистре -+1
out ddra, r16 ;11
out ddrb, r16 ;12
out ddrc, r16 ;13
ldi r16, 0 ;14
out ddrd, r16 ;15
m1: inc r17 ;16
out porta, r17 ;17
add r18, r19 ;18 //реверсивный счетчик 
out portb, r18 ;19
in r2, pind ;20
out portc, r2 ;21
cpi r18, 0
BREQ pp3
jmp m1 ;22
ret ;23
pp2: ldi r16, 0x07 ;11
out ddrc, r16 ;12
m2: sbi portc, 0 ;13
call tau ;14
cbi portc, 2 ;15
call tau ;16
sbi portc, 1 ;17
call tau ;18
cbi portc, 0 ;19
call tau ;20
sbi portc, 2 ;21
call tau ;22
cbi portc, 1 ;23
call tau ;24
jmp m2 ;25
tau: nop ;26
nop ;27
ret ;28
ret ;25
pp3: ;26
ldi r20, 0xff
sub r20, r19
mov r19, r20
inc r19
jmp m1
ret ;27
