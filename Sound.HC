U0 GBSoundTask(U8 *regs)
{
  I64 div;
  I64 freq;
  I64 x;

  I64 prevA=0;
  I64 prevB=0;

  while (TRUE)
  {

    if(memory[0xFEED]==0)
    {   
      if (memory[0xFF12]>0b10000)
      {
        x = memory[0xFF13];
        x += ((memory[0xFF14] & 0b00000111)<<8);
        if (x!=prevA)
        {
          freq=131072/(2048-x);
          div=1193180/freq;
          // I wanted to use Snd(Freq2Ona(freq)); here
          // instead of I/O port writes, but the 
          // conversion isn't right...?
          OutU8(0x43, 0xB6);
          OutU8(0x42, div);
          OutU8(0x42, div>>8);
          OutU8(0x61,3|InU8(0x61));
          prevA=x;
        };
      } else {
      };
    };

    if(memory[0xFEED]==1)
    {   
      if (memory[0xFF17]>0b10000)
      {
        x = memory[0xFF18];
        x += ((memory[0xFF19] & 0b00000111)<<8);
        if (x!=prevB)
        {
          freq=131072/(2048-x);
          div=1193180/freq;
          OutU8(0x43, 0xB6);
          OutU8(0x42, div);
          OutU8(0x42, div>>8);
          OutU8(0x61,3|InU8(0x61));
          prevB=x;
        };
      } else {
      };
    };

    Sleep(2);
  };
}
