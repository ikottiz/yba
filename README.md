# yba

lucky arrow farm,open-source, feel free to fork,open issues pull requests and something
---

guide:
- 1.Create empty file in your 'autoexec' folder
- 2.Put script into file and change settings if you want
- 3.Voilà!

by ikottiz#4863,Не о6язан#3965,roblox dev forum examples
-
script:
```lua
local settings = {
   farmWebhook = '', --notifier webhook
   logsWebhook = '', --serverhop webhook
   serverTime = 25, --how much seconds bot will be on server
   render = true,
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/ikottiz/yba/main/main'))()
```
