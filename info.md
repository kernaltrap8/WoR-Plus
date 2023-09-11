src/dbg.pak.ps3
    - This file contains the debug information for scripts inside of `qb.pab.ps3`
src/dbgq.pak.ps3
    - This file contains scripting for the debug menu
src/qb.pak.ps3
    - This file contains the QB Scripting logic for the games engine
cas/cas_pieces.pak.ps3
  - This file contains different assets for the game
text/qs.pak.ps3
  - This file contains different strings for the game, assigned to hashes.
font/WorLite-Regular.ttf
  - WoR TTF font.
images/*.png
  - Assets for the repository and disc art.
net/cdn.txt
  - GH:WoR CDNs
----
src/important-info.txt
----
these files are to be re-decompilled as the GHSDK cannot properly decompile WoR files.
 
for anyone wanting to help, please use Guitar-Hero-III-Tools by AddyMills.
----
assets/qb-patch-instructions.txt
----
when editing values in QB in HEX, look for the value you want in QBKey.

next to the QBKey value, look for "E3 4D CB 0C". then, skip 4 00's to the right of the value. 

if the 4th value is 01, it is enabled. if its 00, its disabled. edit acordingly. 

you may have to decompress the files first if they are for console.
----
assets/dlc.txt
----
# info: dlc download link for all GH games (GH3/WT/GH5/WoR)

https://drive.google.com/drive/folders/1iSf_H3S9PN5BOnq85_jz82dR0QeoW8tA
----
mods/info.txt
----
binary_patches | Game patches done via editing the EBOOT.ELF

modified_scripts | Game/engine patches done by editing/writing Q scripts.

Directories:

binary_patches/highway_fps_patch | Patch that fixes audio latency issues; you still need to calibrate for your system.

modified_scripts/scripts/guitar/guitar.txt | Allow controller for all instruments; needs more work.

modified_scripts/scripts/tutorials/title_update_sctrings.txt | Comments for easier readability.
----
assets/notes.txt
----
different ideas i have for WoRmod

qb.pab file recompile ideas:
recompile scripts with QBc/NodeROQ, then rebuild using GH3-Toolkit and finialize with Onyxite Command Line.
decrypt from EDAT to make usable on the game.

new ui for switching between instruments while in Quickplay+:
find ui script that handles swapping instruments, make new ui option in pause menu for it.

