
_main:

;D5.c,1 :: 		void main() {
;D5.c,2 :: 		trisb = 0x00;  //Setting PortB as Output
	CLRF       TRISB+0
;D5.c,7 :: 		for(i=0; i<10; i++)  //Initializing
	CLRF       R9+0
	CLRF       R9+1
L_main0:
	MOVLW      128
	XORWF      R9+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      10
	SUBWF      R9+0, 0
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;D5.c,9 :: 		portb = 0xff;      //Turning all PortB ON
	MOVLW      255
	MOVWF      PORTB+0
;D5.c,10 :: 		delay_ms(500);     //500ms delay = o.5sec
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
;D5.c,11 :: 		portb = 0x00;      //Turning al PortB OFF
	CLRF       PORTB+0
;D5.c,12 :: 		delay_ms(500);     //500ms delay = o.5sec
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
;D5.c,7 :: 		for(i=0; i<10; i++)  //Initializing
	INCF       R9+0, 1
	BTFSC      STATUS+0, 2
	INCF       R9+1, 1
;D5.c,14 :: 		}
	GOTO       L_main0
L_main1:
;D5.c,19 :: 		for(i=0; i<10; i++)
	CLRF       R7+0
	CLRF       R7+1
L_main5:
	MOVLW      128
	XORWF      R7+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      10
	SUBWF      R7+0, 0
L__main27:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;D5.c,21 :: 		portb.f0 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 0
;D5.c,22 :: 		portb.f1 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 1
;D5.c,23 :: 		portb.f2 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 2
;D5.c,24 :: 		portb.f3 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 3
;D5.c,25 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;D5.c,26 :: 		portb = 0x00;      //Turning al PortB OFF
	CLRF       PORTB+0
;D5.c,27 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;D5.c,19 :: 		for(i=0; i<10; i++)
	INCF       R7+0, 1
	BTFSC      STATUS+0, 2
	INCF       R7+1, 1
;D5.c,28 :: 		}
	GOTO       L_main5
L_main6:
;D5.c,33 :: 		for(i=0; i<10; i++)
	CLRF       R5+0
	CLRF       R5+1
L_main10:
	MOVLW      128
	XORWF      R5+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      10
	SUBWF      R5+0, 0
L__main28:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;D5.c,35 :: 		portb.f4 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 4
;D5.c,36 :: 		portb.f5 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 5
;D5.c,37 :: 		portb.f6 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 6
;D5.c,38 :: 		portb.f7 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 7
;D5.c,39 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;D5.c,40 :: 		portb = 0x00;      //Turning al PortB OFF
	CLRF       PORTB+0
;D5.c,41 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;D5.c,33 :: 		for(i=0; i<10; i++)
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;D5.c,42 :: 		}
	GOTO       L_main10
L_main11:
;D5.c,46 :: 		for(i=0; i<10; i++)
	CLRF       R3+0
	CLRF       R3+1
L_main15:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVLW      10
	SUBWF      R3+0, 0
L__main29:
	BTFSC      STATUS+0, 0
	GOTO       L_main16
;D5.c,48 :: 		portb.f0 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 0
;D5.c,49 :: 		portb.f2 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 2
;D5.c,50 :: 		portb.f4 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 4
;D5.c,51 :: 		portb.f6 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 6
;D5.c,52 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;D5.c,53 :: 		portb = 0x00;      //Turning al PortB OFF
	CLRF       PORTB+0
;D5.c,54 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;D5.c,46 :: 		for(i=0; i<10; i++)
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;D5.c,55 :: 		}
	GOTO       L_main15
L_main16:
;D5.c,60 :: 		for(i=0; i<10; i++)
	CLRF       R1+0
	CLRF       R1+1
L_main20:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      10
	SUBWF      R1+0, 0
L__main30:
	BTFSC      STATUS+0, 0
	GOTO       L_main21
;D5.c,62 :: 		portb.f1 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 1
;D5.c,63 :: 		portb.f3 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 3
;D5.c,64 :: 		portb.f5 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 5
;D5.c,65 :: 		portb.f7 = 0xff;      //Turning ON the first four ports on PortB
	BSF        PORTB+0, 7
;D5.c,66 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
	NOP
;D5.c,67 :: 		portb = 0x00;      //Turning al PortB OFF
	CLRF       PORTB+0
;D5.c,68 :: 		delay_ms(500);     //500ms delay = o.5sec
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;D5.c,60 :: 		for(i=0; i<10; i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;D5.c,69 :: 		}
	GOTO       L_main20
L_main21:
;D5.c,75 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
