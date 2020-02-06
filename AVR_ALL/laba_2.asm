;LR_2
.include "m16def.inc"	;1

ldi r16,0x04		;2
out sph,r16			;3
ldi r16,0x5f		;4
out spl,r16 		;5

m: ;call pp1		;6
   ;call pp2		;7
   call pp3			;8
   jmp m			;9

pp1: ldi r16, 0x0f  ;10
 ldi r17,0x45 		;11
 ldi r18,0x67 		;12
 ldi r19,0x89 		;13
 ldi r20,0xab 		;14
 and r17,r16 		;15
 andi r17,0b00000010 ;16
 or r18,r16 		;17
 tst r16 			;18
 eor r19,r16 		;19
 eor r19,r19 		;20
 mov r17,r20 		;21
 and r17,r16 		;22
 swap r16 			;23
 and r18,r16 		;24
 or r17,r18 		;25
 bst r16,7 			;26
 bld r20,2 			;27
 sei 				;28
 cli 				;29
 ret 				;30
 
 pp2: ldi r18,0xff		;31
 	  ldi r16,0b00110101;32
 	  mov r5,r16		;33
 	  bst r5,5			;34
	  bld r17,5			;35
	  bst r5,4			;36
	  bld r17,4			;37
	  cpi r17,0b00110000;38
	  breq k			;39
 ret					;40
 k:	  lsl r18			;41
 ret					;42
 
 pp3: ldi r16,0x0F 		;33
 	  lsl r16			;34
	  lsr r16			;35
	  rol r16			;36
	  ror r16			;37
      asr r16			;38
 ret 					;39
