#line 1 "C:/Users/YOUNG BILLY/Desktop/microcontroller/mikro/D4.c"
void main() {
TRISA = 0x00;
TRISB = 0x00;
PORTA = 0b00000;
PORTB = 0b00000000;
for(;;)
{
PORTA = 0b11111;
PORTB = 0b00000000;
Delay_ms(500);
PORTA = 0b000000;
PORTB = 0b11111111;
Delay_ms(500);
}
}
