;Laba_5,6
.include "m16def.inc" ;1
 ldi r16, 0x04 		  ;2
 out sph, r16 		  ;3
 ldi r16, 0x5f 		  ;4
 out spl, r16 		  ;5
 ldi xh, 0 			  ;6
 ldi xl, 0x60		  ;7
 ldi yh, 0 			  ;8
 ldi yl, 0x70		  ;9
 m: call pp1		  ;10
 jmp m 			      ;11

pp1:LD R16 ,X+		  ;12
 ldi r30, 0xF0		  ;13
 ldi r31, 0x0F		  ;14
 and r30, r16		  ;15
 LSR r30		      ;16
 LSR r30			  ;17
 LSR r30			  ;18
 LSR r30			  ;19
 and r31, r16		  ;20
 add r30, r31		  ;21
 cpi r30, 15		  ;22
 BRLO k				  ;23
 subi r30, 15		  ;24
 cpi r30, 15		  ;25
 BRLO k			      ;26
 subi r30, 15		  ;27
 k:ST Y+ , r30		  ;28
ret					  ;29
  
