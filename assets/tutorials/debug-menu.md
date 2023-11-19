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
Step 3 - Go to your PC and run this command: [command 1 goes here]
Step 4 - If the first line of HEX is `2A F9 28 O4`, then you have the correct offset! Run this command: [command 1 apply]<br<
If you we're able to enable debug with the above step, great! Debug is now enabled. This is not permanant, and will be gone after reboot. You will need to do this after every reboot.
Step 5 - If you dont have a offest, try this one: [command 2]<br<
If that one starts with `2A F9 28 04`, then great! You found the correct offset! If not, then continue on.<br>

# Dumping the memory to find new offsets
In my research, I have yet to find every offset. That is where you come in! I'm a very busy person, and I cannot, on my own, find all the offsets.<br<
While booted in WoR, head to your PC and go to a internet browser. Type in your PS3s IP address into the search bar. On the left hand side, click `PS3MAPI`. Now, scroll down until you see "Dump full memory'. Click on that, and wait about 10-20 minutes for it to finish. Once it does, you will have a 256MB file on the root of `dev_hdd0`, named `dump_mem.bin`. Download it via FTP and open it with a HEX editor. Use the `find` function in your HEX editor and search for [HEX VALUE]. Make sure the type is set to HEX and not Text! That is important! It should be able to find it. This is your offset. Plug the offset into this command: [USER GEN OFFSET COMMAND]



