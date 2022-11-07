# yba
uh,farms candies,lucky arrows and other items

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
		["Green Candy"] = true
		["Rokakaka"] = false,
		["Mysterious Arrow"] = false,
		["Steel Ball"] = false,
		["Gold Coin"] = false,
		["Rib Cage of The Saint's Corpse"] = false,
		["Quinton's Glove"] = false,
		["Zepellin's Headband"] = false,
		["Diamond"] = false,
		["Stone Mask"] = false
		["Ancient Scroll"] = false
 	},
 	settings = {
 		render = true,
 		fpsBoost = true,
 		serverHop = true,
 		time = '60'
 	}
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/ikottiz/yba/main/main'))()
```
