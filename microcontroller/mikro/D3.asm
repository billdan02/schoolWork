
_main:

;D3.c,1 :: 		void main() {
;D3.c,2 :: 		TRISB = 0b11111110;
	MOVLW      254
	MOVWF      TRISB+0
;D3.c,3 :: 		TRISA = 0b00011111;
	MOVLW      31
	MOVWF      TRISA+0
;D3.c,4 :: 		do
L_main0:
;D3.c,6 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;D3.c,7 :: 		Delay_ms(500);
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
;D3.c,8 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;D3.c,9 :: 		Delay_ms(500);
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
;D3.c,10 :: 		} while(1);
	GOTO       L_main0
;D3.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
