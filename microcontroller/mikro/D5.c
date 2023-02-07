void main() {
 trisb = 0x00;  //Setting PortB as Output

  {
//BLINLIKG_TEN_TIMES//
   int i;
  for(i=0; i<10; i++)  //Initializing
  {
         portb = 0xff;      //Turning all PortB ON
       delay_ms(500);     //500ms delay = o.5sec
       portb = 0x00;      //Turning al PortB OFF
       delay_ms(500);     //500ms delay = o.5sec

   }

//BLINKINKIG_THE_FIRST_4LEADS_TEN_TIMES
  {
    int i;
    for(i=0; i<10; i++)
      {
           portb.f0 = 0xff;      //Turning ON the first four ports on PortB
           portb.f1 = 0xff;      //Turning ON the first four ports on PortB
           portb.f2 = 0xff;      //Turning ON the first four ports on PortB
           portb.f3 = 0xff;      //Turning ON the first four ports on PortB
         delay_ms(500);     //500ms delay = o.5sec
         portb = 0x00;      //Turning al PortB OFF
         delay_ms(500);     //500ms delay = o.5sec
       }

//BLINKINKIG_THE_LAST_4LEADS_TEN_TIMES
    {
      int i;
      for(i=0; i<10; i++)
        {
            portb.f4 = 0xff;      //Turning ON the first four ports on PortB
            portb.f5 = 0xff;      //Turning ON the first four ports on PortB
            portb.f6 = 0xff;      //Turning ON the first four ports on PortB
            portb.f7 = 0xff;      //Turning ON the first four ports on PortB
            delay_ms(500);     //500ms delay = o.5sec
            portb = 0x00;      //Turning al PortB OFF
            delay_ms(500);     //500ms delay = o.5sec
        }
//BLINKING_LEADS_IN_THE_ORDER_10101010
  {
      int i;
      for(i=0; i<10; i++)
        {
            portb.f0 = 0xff;      //Turning ON the first four ports on PortB
            portb.f2 = 0xff;      //Turning ON the first four ports on PortB
            portb.f4 = 0xff;      //Turning ON the first four ports on PortB
            portb.f6 = 0xff;      //Turning ON the first four ports on PortB
            delay_ms(500);     //500ms delay = o.5sec
            portb = 0x00;      //Turning al PortB OFF
            delay_ms(500);     //500ms delay = o.5sec
      }

//BLINKING_LEADS_IN_THE_ORDER_01010101
  {
      int i;
      for(i=0; i<10; i++)
        {
            portb.f1 = 0xff;      //Turning ON the first four ports on PortB
            portb.f3 = 0xff;      //Turning ON the first four ports on PortB
            portb.f5 = 0xff;      //Turning ON the first four ports on PortB
            portb.f7 = 0xff;      //Turning ON the first four ports on PortB
            delay_ms(500);     //500ms delay = o.5sec
            portb = 0x00;      //Turning al PortB OFF
            delay_ms(500);     //500ms delay = o.5sec
      }
  }
 }
}
}
}
}