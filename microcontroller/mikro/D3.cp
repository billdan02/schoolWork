#line 1 "C:/Users/YOUNG BILLY/Desktop/microcontroller/mikro/D3.c"
void main() {
TRISB = 0b11111110;
TRISA = 0b00011111;
do
{
PORTB.F0 = 1;
Delay_ms(500);
PORTB.F0 = 0;
Delay_ms(500);
} while(1);
}
