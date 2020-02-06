;LR_1
.include "m16def.inc"	;1

ldi r16,0x04	;2
out sph,r16		;3
ldi r16,0x5f	;4
out spl,r16 	;5

m: ;call pp1	;6
   ;call pp2	;7
   call pp3		;8
   jmp m		;9

pp2: ldi xh,0	 ;10
	 ldi xl,0x60 ;11
	 ldi r16,212 ;12
	 st x+,r16	 ;13
	 ldi r16,30	 ;14
	 st x+,r16	 ;15
	 ldi r16,0x0e;16
	 st x+,r16	 ;17
	 ldi r16,0x02;18
	 st x+,r16	 ;19
	 ret		 ;20

pp3: ldi r16,212 ;21
	 push r16	 ;22
	 ldi r16,30	 ;23
	 push r16	 ;24
	 ldi r16,0x0e;25
	 push r16	 ;26
	 ldi r16,0x02;27
	 push r16	 ;28
	 pop r4		 ;29
	 pop r3		 ;30
	 pop r2		 ;31
	 pop r1		 ;32
	 ret		 ;33
	 
