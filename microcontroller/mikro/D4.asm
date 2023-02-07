
_main:

;D4.c,1 :: 		void main() {
;D4.c,2 :: 		TRISA = 0x00;
	CLRF       TRISA+0
;D4.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;D4.c,4 :: 		PORTA = 0b00000;
	CLRF       PORTA+0
;D4.c,5 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;D4.c,6 :: 		for(;;)
L_main0:
;D4.c,8 :: 		PORTA = 0b11111;
	MOVLW      31
	MOVWF      PORTA+0
;D4.c,9 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;D4.c,10 :: 		Delay_ms(500);
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
;D4.c,11 :: 		PORTA = 0b000000;
	CLRF       PORTA+0
;D4.c,12 :: 		PORTB = 0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;D4.c,13 :: 		Delay_ms(500);
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
;D4.c,14 :: 		}
	GOTO       L_main0
;D4.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
