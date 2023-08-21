# WoRmod
Reverse engineering and decompilation project for Guitar Hero: Warriors of Rock

(15/8/2023): Project has started! 

(17/8/2023): CAS_PIECES.PAB.PS3 extracted, files need to be converted. 

(21/8/2023): QB.PAB.PS3 fully decompiled. 

# Plans so far
Bugfixes:
  - Fix star power math bug when in Quickplay+ Powers mode
  - Fix issue when the Quickplay+ Rank is higher than 108, game will not properly fill out leaderboards when ranking up
  - Fix issue where if the section breakdwon screen doesnt have enough sections, the game will refuse to scroll the list

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
