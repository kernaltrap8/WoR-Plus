wow... i cant believe it. 

over the past 3 weeks, i have been working on WoRmod and i've learned a lot. it's been fun.

i have probably figured out the QB stuff.

instead of waiting for a compiler... why dont i just edit it in memory?

so im going to do that.

below are some images of what im going to do:

full memory dump
---
![image](https://github.com/JamesIsWack/WoRmod/assets/94473358/2184cb52-0447-4af3-afe6-ee4980602b06)

QBKey values
---
![image](https://github.com/JamesIsWack/WoRmod/assets/94473358/d2febe83-eccd-49e1-92ce-de13b17c7a81)

the first image is the QBKey for `enable_button_cheats`, theres two sets of it. the original one in the file, and the edited one the game made. as you can see, its set to 00. this disables the debug on retail builds (determined by NotCD check)

here's what needs to be edited

at hex offset `01E71470`, edit the `00 00 00 00` to `00 00 00 01` between the `0C` byte and `31` byte. once set, this *should* enable debug menu. do this once you are in Quickplay+, exit and it should show up.
![image](https://github.com/JamesIsWack/WoRmod/assets/94473358/dadf3fe1-c029-43a1-805f-9fbabb11b79b)
