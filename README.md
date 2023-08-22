# WoRmod
Reverse engineering and decompilation project for Guitar Hero: Warriors of Rock
<br>
(15/8/2023): Project has started! 
<br>
(17/8/2023): CAS_PIECES.PAB.PS3 extracted, files need to be converted. 
<br>
(21/8/2023): QB.PAB.PS3 fully decompiled. 

# Mod ideas
Bugfixes:
  - Fix star power math bug when in Quickplay+ Powers mode
  - Fix issue when the Quickplay+ Rank is higher than 108, game will set rank in leaderboards to `-1`
  - Fix issue where if the section breakdwon screen doesnt have enough sections, the game will refuse to scroll the list once scrolled fully

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
    
# Credits
TheOmen757 - Testing & KLIC hash
<br>
AddyMills - Help with understanding file types
<br>
WTDE Development Team - For QBc and GHSDK
<br>
NeverScript Development Team - For making QB tools and QB documentation
<br>
Neversoft and Beenox - For making the best rhythm game, and for their humour in the QB source files
