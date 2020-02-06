;LR_3
.include "m16def.inc";1
ldi r16, 0x04 ;2
out sph, r16 ;3
ldi r16, 0x5f ;4
out spl, r16 ;5
m: ;call pp1 ;6
 ;call pp2 ;7
 ;call pp3 ;8
 call pp4
 call pp5
jmp m ;9
pp1: 
 ldi r16 , 62 ;10
 ldi r17 , 102 ;11
 ldi r18 , 128 ;12
 ldi r19 , 232 ;13
 add r16, r17 ;14
 add r17, r18 ;15
 add r18, r19 ;16
 ret ;17
pp2: 
 ldi r16 , 250 ;18
 ldi r17 , 200 ;19
 mov r0, r16 ;20
 add r0, r17 ;21
 ror r0 ;22
 ret ;23
pp3: 
 ldi r16, 250;24
 ldi r17 , 200 ;25
 ldi r18 , 250 ;26
 ldi r19 , 200 ;27
 eor r1, r1 ;28
 eor r2, r2 ;29
 mov r0, r16 ;30
 add r0, r17 ;31
 adc r1 ,r2 ;32
 add r0, r18 ;33
 adc r1 ,r2 ;34
 add r0, r19 ;35
 adc r1 ,r2 ;36
 ror r1 ;37
 ror r0 ;38
 ror r1 ;39
 ror r0 ;40
 ret ;41
pp4:
 ldi r16, 200 ;42
 ldi r17, 5 ;43
 mul r16, r17 ;44
 ret ;45
pp5:
 ldi r16, 62 ;46
 ldi r17, 128 ;47
 muls r16, r17 ;48
 ret ;49
