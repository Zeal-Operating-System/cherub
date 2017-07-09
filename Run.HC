Adam("I64 CherubExit=FALSE;");
CTask *cherub;
U8 *RunCmd=CAlloc(1024);
U8 *RomList=CAlloc(65536);

I64 pos=0;
CDirEntry *rom_f;
CDirEntry *roms=FilesFind("Roms/*.gb");

rom_f=roms;
while (rom_f)
{
  StrCpy(RomList+pos,rom_f->name);
  pos += StrLen(rom_f->name) + 1;
  rom_f=rom_f->next;
};



I64 rom_i = PopUpPickLst(RomList);

I64 incr=0;
rom_f=roms;

if (rom_i>-1)
{
  while (incr<rom_i)
  {
    rom_f=rom_f->next;
    incr++;
  };
  StrPrint(RunCmd,"Cd(\"%s\");\n#include \"Load\";\nRun(\"%s\");\n",DirCur,rom_f->full_name);
  cherub=User(RunCmd);
  Sleep(100);
  WinFocus(Fs);
  Sleep(100);
  WinFocus(cherub);
  while (!CherubExit) { Sleep(1); };
};

DirEntryDel(roms);
Free(RomList);
Free(RunCmd);
rom_f=NULL;

