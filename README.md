# cherub
Game Boy emulator for TempleOS ported to ZealOS

This is a work in progress. A lot of things are broken.

Z80 Core and timing routines ported from [PHP Terminal GameBoy Emulator](https://github.com/gabrielrcouto/php-terminal-gameboy-emulator), which in turn is based on [GameBoy JS Emulator](https://github.com/taisel/GameBoy-Online)

![Cherub](https://raw.githubusercontent.com/Zeal-Operating-System/cherub/master/example.gif "Cherub") 

Put ROM files in `Roms` folder, and `#include "Run";`

You can connect a SNES gamepad w/ adapter to the parallel port. Enable gamepad in `Settings.ZC` with `useGamePad=TRUE;`

# Keyboard Controls

D-PAD: `ARROW KEYS`

B: `S`

A: `A`

Select: `SHIFT`

Start: `ENTER`

Exit: `ESC`

Keys `1-4` toggle 1x/2x/3x/4x video scaling.

Keys `U-P` change palette colors 1-4.

Reset: `R`

Load State: `5`

Save State: `7`

Toggle Sound: `Q`

---

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
