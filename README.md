# yba

farms items in yba.pls read guide before using script,following guide is only way to use this autofarm
---

guide:
- 1.Create empty file in your 'autoexec' folder
- 2.Put script into file and change settings if you want
- 3.Voilà!

by ikottiz#4863 and Не о6язан#3965
-
script:
```lua
getgenv().d = {
	items = {
		["Lucky Arrow"] = true,
		["Red Candy"] = true,
		["Yellow Candy"] = true,
		["Blue Candy"] = true,
		["Green Candy"] = true,
		["Rokakaka"] = false,
		["Mysterious Arrow"] = false,
		["Steel Ball"] = false,
		["Gold Coin"] = false,
		["Rib Cage of The Saint's Corpse"] = false,
		["Quinton's Glove"] = false,
		["Zepellin's Headband"] = false,
		["Diamond"] = false,
		["Stone Mask"] = false,
		["Ancient Scroll"] = false,
 	},
 	settings = {
 		render = true,
 		fpsBoost = true,
 		serverHop = true,
 		serverTime = '25',
		debug = true
 	}
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/ikottiz/yba/main/main'))()
```
