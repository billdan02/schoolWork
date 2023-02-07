
_main:

;D1.c,1 :: 		void main() {
;D1.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;D1.c,3 :: 		TRISA = 0x1F;
	MOVLW      31
	MOVWF      TRISA+0
;D1.c,5 :: 		do
L_main0:
;D1.c,7 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;D1.c,8 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;D1.c,9 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;D1.c,10 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;D1.c,11 :: 		}while(1);
	GOTO       L_main0
;D1.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
