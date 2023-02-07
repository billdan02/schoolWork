void main() {
     TRISA = 0b11111111;
     TRISB = 0b00000000;
     PORTB = 0b00000000;
     for (;;){
         PORTB = 0b11111111;
         delay_ms(1000);
         PORTB = 0b00000000;
         delay_ms(1000);
     }
}