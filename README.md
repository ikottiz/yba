# YBA Autofarm

lucky arrow farm,open-source, feel free to fork,open issues pull requests and something
---

how to use:
- 1.Create empty file in your 'autoexec' folder
- 2.Put script into file and change settings if you want
- 3.Voilà!

by ikottiz#4863,Не о6язан#3965,roblox dev forum examples
-
script:
```lua
local dic = {
   farmWebhook = '', --notifier webhook
   logsWebhook = '', --serverhop webhook
   serverTime = 25, --how much seconds bot will be on server
   render = true, --enables/disables 3d rendering
   fpscap = 7,
   items = {
       ["Lucky Arrow"] = true,
       ["Mysterious Arrow"] = false,
       ["Gold Coin"] = false,
       ["Rokakaka"] = false,
       ["Ancient Scroll"] = false,
       ["Zepeli Headband"] = false,
       ["Quinton gloves"] = false,
       ["Dio diary"] = false,
       ["Ribcage"] = false,
       ["Steel Ball"] = false,
       ["Diamond"] = false,
       ["Stone Mask"] = false,
       ["Pure Rokakaka"] = false,
       ["Red Candy"] = false,
       ["Blue Candy"] = false,
       ["Green Candy"] = false,
       ["Yellow Candy"] = false,
       ["Chrismtas Present"] = true
   }
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/ikottiz/yba/main/main'))()
```
