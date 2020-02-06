; LR_4
.include "m16def.inc";1
ldi r16, 0x04 ;2
out sph, r16 ;3
ldi r16, 0x5f ;4
out spl, r6 ;5
; call pp1 ;6
;call pp2 ;7
 call pp3 ;8
m: jmp m ;9
pp1: ldi xh, 0 ;10
 ldi yh, 0; ;11
 ldi zh, 0; ;12
 ldi xl, 0x60 ;13
 ldi yl, 0x70 ;14
 ldi zl, 0x80 ;15
 ldi r17, 10 ;16
 ldi r18, 20 ;17
 m1:st x+, r17 ;18
 st y+, r18 ;19
 mov r19, r17 ;20
 add r19, r18 ;21
 st z+, r19 ;22
 subi r17, -3 ;23
 subi r18, -5 ;24
 cpi xl, 0x70 ;25
 brne m1 ;26
 ret ;27
pp2:ldi xl, 0x60 ;28
 clr xh ;29
 ldi r16, 1 ;30
 ldi r17, 0 ;31
 m2: st x+, r16 ;32
 add r17, r16 ;33
 brcs m3 ;34
 st x+, r17 ;35
 add r16, r17 ;36
 brcs m3 ;37
 rjmp m2 ;38
 m3:ret;39
pp3: ldi xl, 0x60 ;40
 clr xh 		  ;41
 ldi r16, 1 	  ;42
 ldi r17, 0		  ;43
 ldi r18, 0		  ;44 счетчик 
 ldi r19, 1		  ;45 единица для прибавления к счетчику
 eor r5, r5       ;46 обнуляем  r5
 n2: st x+, r16   ;47 пишем в память
 add r17, r16	  ;48 
 cp r5, r17		  ;49 сравнение
 BRSH k1          ;50 переход, если r5 > r17
 mov r5, r17	  ;51
k1: add r18, r19  ;52 счетчик+1
 brcs n3 		  ;53
 st x+, r17 	  ;54 пишем в память
 add r16, r17	  ;55 
 cp r5, r16		  ;56 сравнение
 BRSH k2 		  ;57 переход, если  r5 > r16
 mov r5, r16	  ;58
k2: add r18, r19  ;59 счетчик +1
 brcs n3 		  ;60
 rjmp n2 		  ;61
n3: ret 		  ;62
 ret 			  ;63
