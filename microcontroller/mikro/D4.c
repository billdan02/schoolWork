void main() {
     trisa = 0x00;
     trisb = 0x00;
     while(1)
     {
       porta = 0xff;     //Turning all portA ON
       portb = 0x00;    //Turning all portA OFF
       delay_ms(500);    //Delay time = 500ms = 0.5s
       porta = 0x00;   //Turning all PortA OFF
       portb = 0xff;  //Turning all PortA ON
       delay_ms(500); //Delay time = 500ms = 0.5s

     }
}