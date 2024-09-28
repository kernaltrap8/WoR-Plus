# WoR+
![WoR+](https://github.com/kernaltrap8/WoR-Plus/assets/94473358/24573afd-9c46-47ba-9d86-118181d7d1e6)

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
(7/9/2023): First alpha release of WoR+.
<br>
(15/9/2023): Debug menu offsets found.
<br>
(25/10/23): WoR+'s 3 month anniversary! I am so happy with what this project has become, and im so excited for the next 3 months.
<br>
(12/1/2024): SPRX backend complete.
<br>
(15/8/2024): WoR+'s 1 year anniversary.
<br>
(28/8/2024): Works on CFW/HEN/RPCS3/Xbox 360, features being added, QB.PAB can be repacked. Future looking bright.
# Mod ideas
Bugfixes:
  - Fix star power math bug when in Quickplay+ Powers mode
  - ~~Fix issue when the Quickplay+ Rank is higher than 108~~ Seemingly randomly, the game will set rank in leaderboards to `1`
  - Fix issue where if the section breakdown screen doesnt have enough sections, the game will refuse to scroll the list once scrolled fully

Future additions:
  - Add custom asset loading
  - ~~Patch QB hash-checks~~ No such thing
  - ~~Add Neversoft debug menu~~ Done
  - ~~Custom song loading without needing custom cache~~ Not planned
  - Ability to load/parse/save mod settings via INI format
  - Port other game assets to WoR (GH5/BH/WT/GH3)
  - Add better support for open-notes on Guitar (HOPOs)
  - Add tap-note chord support
  - Add new chart features to GHTunes<br>
  
Features (as of 2024-08-28):
- Drums on Guitar/Pad
- Guitar on Pad
- Debug Menu
- No postprocessing effects (only AO and tone mapping)
- All powers in Quickplay+ (beta state, being worked on)

# Files decompiled
`QB.PAB.PS3:`
  - 100% Completed
    - Files can be read and easily modified thanks to the help of CHCniz and his qb-tools.
    
`QS.PAB.PS3:`
  - 100% Completed
    - This file contains strings for the game, it is plaintext and can be read in a text editor.

# Tutorial resources
[Debug menu enable (Writeup and research done by kernaltrap)](https://github.com/kernaltrap8/WoR-Plus/blob/master/assets/tutorials/debug-menu.md)

# Installation
Extract the zip file from the Releases tab. Copy the data folder to your disc dump's `USRDIR`. Your disc dump will be in `dev_hdd0/GAMES`.

# Credits
TheOmen757 - Testing & KLIC hash
<br>
AddyMills - Help with understanding file types
<br>
WTDE Development Team - For QBc and GHSDK
<br>
NeverScript Development Team - For making QB tools and QB documentation
<br>
National Security Agency - For Ghidra
<br>
HexRays Development Team - For IDAPro
<br>
ExtremeKnave0 - For his QB script findings
<br>
uzis - EBOOT patch help (NotCD & highway_fps_patch)
<br>

# Special thanks
CHCniz - For being a great friend & helper, as well as for making [qb-tools](https://github.com/chc/qb-tools)

# Need help, or just want to chat with the community?
Join the Discord server: https://discord.gg/Pdm7KJGMjV
