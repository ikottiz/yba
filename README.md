# yba
uh,farms candies and lucky arrows
guide:
1.Create empty file in your 'autoexec' folder
2.Put script into file and change settings if you want
3.Voilà!
by ikottiz#4863 and Не о6язан#3965
script:
```
getgenv().d = {
	items = {
		["Lucky Arrow"] = true,
		["Red Candy"] = true,
		["Green Candy"] = true,
		["Blue Candy"] = true,
		["Rokakaka"] = true,
		["Mysterious Arrow"] = true,
		["Steel Ball"] = true,
		["Gold Coin"] = true
 	},
 	settings = {
 		render = true,
 		fpsBoost = true,
 		serverHop = true,
 		time = 15
 	}
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/ikottiz/yba/main/main'))()
```
