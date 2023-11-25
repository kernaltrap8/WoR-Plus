# Getting started
To use the debug menu in WoR, you need to either have
- a PC capable of running RPCS3
- a CFW moded Playstation 3 (it MUST be running CFW!)
- a copy of WoR (disc or JB folder)
- if on console, a install of webMAN MOD

# Console instructions
First, make sure you have turned your console on from standby. If the console was already on and in a game, and you boot into WoR, the offsets will be wrong! You must ALWAYS do this from a coldboot!
<br>
Step 1 - Turn the console off.<br>
Step 2 - Turn the console on and boot WoR.<br>
Step 3 - Go to your PC and run this command: [ps3 ip]/getmem.ps3mapi?proc=1&addr=3971470&len=256<br>
Step 4 - If the first line of HEX is `2A F9 28 O4`, then you have the correct offset! Run this command: [ps3 ip]/poke.lv1?3971470=2AF92804E34DCB0C000000013116E67C<br>
If you we're able to enable debug with the above step, great! Debug is now enabled. This is not permanant, and will be gone after reboot. You will need to do this after every reboot.<br>
Step 5 - If you dont have a offest, try this one: [ps3 ip]/getmem.ps3mapi?proc=1&addr=3A71470&len=256<br>
If that one starts with `2A F9 28 04`, then great! You found the correct offset! Run this command: [ps3 ip]/poke.lv1?3A71470=2AF92804E34DCB0C000000013116E67C<br> If not, then continue on.<br>

# Dumping the memory to find new offsets
In my research, I have yet to find every offset. That is where you come in! I'm a very busy person, and I cannot, on my own, find all the offsets.<br>
While booted in WoR, head to your PC and go to a internet browser. Type in your PS3s IP address into the search bar. On the left hand side, click `PS3MAPI`. Now, scroll down until you see "Dump full memory'. Click on that, and wait about 10-20 minutes for it to finish. Once it does, you will have a 256MB file on the root of `dev_hdd0`, named `dump_mem.bin`. Download it via FTP and open it with a HEX editor. Use the `find` function in your HEX editor and search for `2AF92804E34DCB0C000000003116E67C`. Make sure the type is set to HEX and not Text! That is important! It should be able to find it. This is your offset. Plug the offset into this command: [ps3 ip]/poke.lv1?[offset]=2AF92804E34DCB0C000000013116E67C<br>
Remember to replace `[offset]` with the offset you just found!<br>
Stay tuned for RPCS3 instructions.
# RPCS3 & Cheat Engine instructions
First, install [Cheat Engine](https://d1vdn3r1396bak.cloudfront.net/installer/212460/172095207947918924), and [RPCS3](https://rpcs3.net/download), as well as have a copy of WoR locally.<br>
Once you're in the game, open Cheat Engine and head to `Edit > Settings`.<br>
You will need to edit the following settings.<br>
![image](https://github.com/JamesIsWack/WoRmod/assets/94473358/b260d2dc-fad5-461b-933f-70a3e7531300)<br>
Make sure these are ticked on.<br>
![image](https://github.com/JamesIsWack/WoRmod/assets/94473358/282b3be3-1e60-47e1-a01d-91e47f761fd2)<br>
Make sure `MEM_MAPPED` is on.<br>
These are all the changes that need to be done for Cheat Engine.<br>
Now, in the Cheat Engine window go to the glowing green box in the corner <br>
![image](https://github.com/JamesIsWack/WoRmod/assets/94473358/f3fc6b03-f1cd-481a-b538-26c8989f0e0d)<br>
And click on it. Then click on the application with the WoR icon, and select `Open`. Now go to the botttom and select `Memory view`. Once in this screen, go to `Search > Find memory`, and tick `Array of byte` in the search box. Paste in this value: `2AF92804E34DCB0C000000003116E67C`, and click `OK`. Once it finds it, go to the part of the memory view that has a `31`, and double-click on the `00` right next to it, and replace the value with a `1`. This should enable the menu, enjoy!



