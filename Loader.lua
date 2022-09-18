if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local httpservice = game:GetService('HttpService')
local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request

if not httprequest then 
  Library:MakeNotification({
    Name = "Eazvy Hub - Error",
    Content = "Your exploit is not supported with Eazvy Hub",
    Image = "rbxassetid://161551681",
    Time = 5
})
end




    
    
local function ServerHop()
    local servers = {}
    local req = httprequest({Url = "https://games.roblox.com/v1/games/"..tostring(game.PlaceId).."/servers/Public?sortOrder=Desc&limit=100"})
    local body = httpservice:JSONDecode(req.Body)
    if body and body.data then
        for i, v in next, body.data do
            if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.playing > 19 then
            table.insert(servers, 1, v.id)
            end 
        end
    end
    if #servers > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    end
    game:GetService("TeleportService").TeleportInitFailed:Connect(function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    end)
end

Library:MakeNotification({
    Name = "Eazvy Hub",
    Content = "Loading please wait...",
    Image = "rbxassetid://10715004387",
    Time = 5
})

local Window = Library:MakeWindow({
    Name = "Eazvy-Hub - Loader",
    HidePremium = true, 
    SaveConfig = false, 
    ConfigFolder = "Pls Donate Eazvy Hub",
    IntroEnabled = true,
    IntroText = "Eazvy Hub",
    IntroIcon = "rbxassetid://4562959390",
    Icon = "rbxassetid://10715004387",
})




local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4562959390",
	PremiumOnly = false
})



Tab:AddParagraph("Important","Eazvy-Hub is not responsible for in-game bans. If you are banned permanently, to not beg the owner/admins to help you or it'll result in a permanent blacklist.")
Tab:AddParagraph("Supported Executors:","KRNL, Synapse X, Scriptware, Fluxus, Oxygen U. Some functions within Eazvy-Hub may not support your executor. Compatability of the script is all based off of your executor!")
Tab:AddParagraph("Credits:", "Eazvy")

Tab:AddButton({Name = "Load Script",Callback = function()
    local response = httprequest({
    Url = "https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/games/" .. game.PlaceId .. ".lua",
    Method = "GET"
})
if response.Body ~= "404: Not Found" then
    Library:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/games/" .. game.PlaceId .. ".lua", true))()
else
    Library:MakeNotification({
    Name = "Eazvy Hub - Error",
    Content = "The game you're currently in is not supported with Eazvy Hub",
    Image = "rbxassetid://161551681",
    Time = 5
})
    return
end
end})

Tab:AddButton({Name = "Join Discord",Callback = function()
    if httprequest then 
      Library:MakeNotification({
      Name = "Attempting to join Discord-Server",
      Content = "Check your Discord-Application, or Web-Browser on your currently logged in account.",
      Image = "rbxassetid://10715004387",
      Time = 5
  })
httpRequest({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    cmd = "INVITE_BROWSER",
                    args = {
                        code = "YpmmYZc544"
                    },
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                })
            })
        end
 if setclipboard then
    setclipboard("https://discord.gg/YpmmYZc544")
    Library:MakeNotification({
      Name = "Copied Discord Invite to your Clipboard",
      Content = "Check your Clipboard for the invite copy and paste it in DMs or in the join-box.",
      Image = "rbxassetid://10715004387",
      Time = 5
  })
 end
end})

Tab:AddButton({Name = "Rejoin",Callback = function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)    
end})


Tab:AddButton({Name = "Serverhop",Callback = function()
    ServerHop()
end})
