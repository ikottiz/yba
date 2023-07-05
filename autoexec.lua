getgenv().shit = {
    render = true,
    fpscap = 15,
    Webhook = '',
    alts = {
        "AccountName1",
        "AccountName2"
    }
}
if game.PlaceId == 2809202155 then
	--disable 3d render
	game:GetService('RunService'):Set3dRenderingEnabled(shit.render)
	setfpscap(shit.fpscap)
	--bypasses
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ikottiz/yba/main/bypasses'))()
	--cuh
	while not game:IsLoaded() do wait() end
	--serverhop
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function serverhop()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    --anti alts
    for i,v in ipairs(game.Players:GetPlayers()) do
        if (table.find(shit.alts,v.Name)) then
            serverhop()
        end
    end
	--collect function
	function collect(instance)
		local base,prompt = instance:FindFirstChild('Base'),instance:FindFirstChild('RightPrompt')
		if instance.Parent and prompt.Parent ~= nil and prompt.MaxActivationDistance ~= 0 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(base.Position) --teleport
			wait(.25)
			if game.Players.LocalPlayer:DistanceFromCharacter(base.Position) < 20 then --if teleported
				fireproximityprompt(prompt)
				wait(1)
			end
		end
	end
	--getarrows
	function getArrows()
		local arrows = 0
		for i,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == 'Lucky Arrow' then
				arrows = arrows + 1
			end
		end
		return tostring(arrows)
	end
    --webhook
    function webhook(text,url)
        request({
            Url = url,
            Method = "POST",
            Headers = {["content-type"] = "application/json" },
            Body = game:GetService('HttpService'):JSONEncode({
                ["content"] = "",
                ["embeds"] = {{
                    ["title"] = text,
                    ["description"] = "",
                    ["type"] = "rich",
                    ["color"] = tonumber(0xA1C3A9),
                    ["fields"] = {
                        {
                            ["name"] = "Account:",
                            ["value"] = game.Players.LocalPlayer.Name,
                            ["inline"] = false
                        },
                        {
                            ["name"] = "Arrows:",
                            ["value"] = getArrows(),
                            ["inline"] = false
                        },
                        {
                            ["name"] = "Players:",
                            ["value"]= #game:GetService("Players"):GetPlayers(),
                            ["inline"] = false,
                        },
                    },
                }}
            })
        })
    end
	--error handler,server hop on kick or teleport failure
	game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
		if child.Name == 'ErrorPrompt' then
			serverhop()
		end
	end)
    --item notifier
	game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(child)
            if child.Name == "Lucky Arrow" then
                webhook("**"..child.Name.." found!**",shit.Webhook)
            end
	end)
    --loop
    while wait() do
    	if (game.Workspace.Item_Spawns.Items:FindFirstChild('Lucky Arrow')) then
            collect(game.Workspace.Item_Spawns.Items:FindFirstChild('Lucky Arrow'))
    	else
            serverhop()
    	end
    end
    wait(1)
end