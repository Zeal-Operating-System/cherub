
U0 GBSoundTask(U8 *regs)
{

  I64 ch=0;
  I64 chP=0;
  I64 div;
  I64 freq;
  I64 x;
  I64 prevX;
  while (TRUE)
  {
    if(ch==0 && chP==FALSE)
    {
    
      if (memory[0xFF12]>0b10000)
      {
        x = memory[0xFF13];
        x += ((memory[0xFF14] & 0b00000111)<<8);
        if (x!=prevX)
        {
          freq=131072/(2048-x);
          div=1193180/freq;
          OutU8(0x43, 0xB6);
          OutU8(0x42, div);
          OutU8(0x42, div>>8);
          OutU8(0x61,3|InU8(0x61));
          prevX=x;
        };
      } else {
        //SndRst;
      }
    };

    if(ch==1)
    {
    
      if (memory[0xFF17]>0b10000)
      {
        x = memory[0xFF18];
        x += ((memory[0xFF19] & 0b00000111)<<8);
        if (x!=prevX)
        {
          freq=131072/(2048-x);
          div=1193180/freq;
          OutU8(0x43, 0xB6);
          OutU8(0x42, div);
          OutU8(0x42, div>>8);
          OutU8(0x61,3|InU8(0x61));
          prevX=x;
          chP=TRUE;
        };
      } else {
        chP=FALSE;
      }
    };



    Sleep(2);

  ch++;
  if (ch>3) { ch=0; };
  };
}
