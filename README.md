# cherub
Game Boy emulator for TempleOS

This is a work in progress. I know a lot of things are broken. P-please be gentle...

Z80 Core and timing routines ported from [PHP Terminal GameBoy Emulator](https://github.com/gabrielrcouto/php-terminal-gameboy-emulator), which in turn is based on [GameBoy JS Emulator](https://github.com/taisel/GameBoy-Online)

![Cherub](https://raw.githubusercontent.com/tramplersheikhs/cherub/master/example.gif "Cherub") 

Put ROM files in `Roms` folder, and `#include "Run";`

# Controls

D-PAD: `ARROW KEYS`

B: `A`

A: `S`

Select: `SHIFT`

Start: `ENTER`

Exit: `ESC`

Keys `1-3` toggle 1x/2x/3x video scaling.

Reset: `R`

Load State: `5`

Save State: `7`

Sound Channel 1: `Q`

Sound Channel 2: `W`

Sound Channel Auto Toggle: `E`

