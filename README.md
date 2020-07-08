# cherub
Game Boy emulator for TempleOS

This is a work in progress. I know a lot of things are broken. P-please be gentle...

Z80 Core and timing routines ported from [PHP Terminal GameBoy Emulator](https://github.com/gabrielrcouto/php-terminal-gameboy-emulator), which in turn is based on [GameBoy JS Emulator](https://github.com/taisel/GameBoy-Online)

![Cherub](https://git.checksum.fail/alec/cherub/raw/branch/master/example.gif "Cherub") 

Put ROM files in `Roms` folder, and `#include "Run";`

You can connect a SNES gamepad w/ adapter to the parallel port. Enable gamepad in `Settings.HC` with `useGamePad=TRUE;`

# Gamepad Controls

D-PAD: D-PAD

B: `Y`

A: `B`

Select: `SELECT`

Start: `START`

Exit: `L`

Load State: `R`

Save State: `X`

Toggle Sound: `A`

# Keyboard Controls

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

Toggle Sound: `Q`

