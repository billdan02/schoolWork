void main() {
     int i = 1;
     TRISA = 0b11111111;
     TRISB = 0b00000000;
     PORTB = 0b00000000;

     for(i = 1; i<=3; i++){
             PORTB = 0b10101010;
             delay_ms(1000);
             PORTB = 0b01010101;
             delay_ms(1000);
             
     
     }

}