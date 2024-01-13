# WoRmod
![banner](https://github.com/JamesIsWack/WoRmod/assets/94473358/0c7db371-b94a-46fd-8a87-1c1390771db7)

---------------------------------
Project announcements:
<br>
(15/8/2023): Project has started! 
<br>
(17/8/2023): CAS_PIECES.PAB.PS3 extracted, files need to be converted. 
<br>
(21/8/2023): QB.PAB.PS3 fully decompiled. 
<br>
(22/8/2023): DBGQ.PAB.PS3 fully decompiled | GH:WoR KLIC found (thanks to TheOmen757)
<br>
(23/8/2023): EBOOT.BIN decompiled into C, non-compilable
<br>
(25/8/2023): First set of EBOOT patches released, debug menu (NOT WORKING)
<br>
(25/8/2023): EBOOT strings exported, CDN/dev CDN found (still up)
<br>
(7/9/2023): First alpha release of WoRmod.
<br>
(15/9/2023): Debug menu offsets found.
<br>
(12/1/2024): SPRX backend complete.
(25/10/23): WoRmod's 3 month anniversary! I am so happy with what this project has become, and im so excited for the next 3 months.
# Mod ideas
Bugfixes:
  - Fix star power math bug when in Quickplay+ Powers mode
  - Fix issue when the Quickplay+ Rank is higher than 108, game will set rank in leaderboards to `-1`
  - Fix issue where if the section breakdown screen doesnt have enough sections, the game will refuse to scroll the list once scrolled fully

Future additions:
  - Add custom asset loading
  - Patch QB hash-checks
  - Add Neversoft debug menu
  - Custom song loading without needing custom cache
  - Ability to load/parse/save mod settings via INI format
  - Port other game assets to WoR (GH5/BH/WT/GH3)
  - Add better support for open-notes on Guitar (HOPOs and proper anims)
  - Add tap-note chord support
  - Add new chart features to GHTunes

# Files decompiled
`QB.PAB.PS3:`
  - 99% Completed
    - Not entirely accurate to source files, limitation of QBc. Could be fixed later on for strings.

`CAS_PIECES.PAB.PS3:`
  - 50% Completed
      - Files need to be converted to readable formats (PNG)
    
`QS.PAB.PS3:`
  - 100% Completed
    - This file contains strings for the game, it is plaintext and can be read in a text editor.

# Tutorial resources
[Debug menu enable (Writeup and research done by kernaltrap)](https://github.com/JamesIsWack/WoRmod/blob/master/assets/tutorials/debug-menu.md)

# How to install the mod
Download and extract the zipfile provided at the Releases tab of this repository. copy the `game` folder to the root of `dev_hdd0`, and copy `PS3_GAME` to the WoR install directory.

# Credits
TheOmen757 - Testing & KLIC hash
<br>
AddyMills - Help with understanding file types
<br>
WTDE Development Team - For QBc and GHSDK
<br>
NeverScript Development Team - For making QB tools and QB documentation
<br>
National Security Agency - For Ghidra, probably the best decompilers out there (used to decompile the EBOOT.ELF)
<br>
HexRays Development Team - For IDAPro, the tool I use to reverse engineer PS3 binaries
<br>
ExtremeKnave0 - For his QB script findings
<br>
uzis - EBOOT patch help (NotCD & highway_fps_patch)

# Special thanks
CHC - Numerous testing, help and major contributions to WoRmod

# Need help, or just want to chat with the community?
Join the Discord server: https://discord.gg/Pdm7KJGMjV
