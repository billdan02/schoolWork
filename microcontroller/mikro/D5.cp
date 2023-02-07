#line 1 "C:/Users/YOUNG BILLY/Desktop/microcontroller/mikro/D5.c"
void main() {
 trisb = 0x00;

 {

 int i;
 for(i=0; i<10; i++)
 {
 portb = 0xff;
 delay_ms(500);
 portb = 0x00;
 delay_ms(500);

 }


 {
 int i;
 for(i=0; i<10; i++)
 {
 portb.f0 = 0xff;
 portb.f1 = 0xff;
 portb.f2 = 0xff;
 portb.f3 = 0xff;
 delay_ms(500);
 portb = 0x00;
 delay_ms(500);
 }


 {
 int i;
 for(i=0; i<10; i++)
 {
 portb.f4 = 0xff;
 portb.f5 = 0xff;
 portb.f6 = 0xff;
 portb.f7 = 0xff;
 delay_ms(500);
 portb = 0x00;
 delay_ms(500);
 }

 {
 int i;
 for(i=0; i<10; i++)
 {
 portb.f0 = 0xff;
 portb.f2 = 0xff;
 portb.f4 = 0xff;
 portb.f6 = 0xff;
 delay_ms(500);
 portb = 0x00;
 delay_ms(500);
 }


 {
 int i;
 for(i=0; i<10; i++)
 {
 portb.f1 = 0xff;
 portb.f3 = 0xff;
 portb.f5 = 0xff;
 portb.f7 = 0xff;
 delay_ms(500);
 portb = 0x00;
 delay_ms(500);
 }
 }
 }
}
}
}
}
