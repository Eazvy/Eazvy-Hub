if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local httpservice = game:GetService('HttpService')
local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request

local function SendNotification(Name,Content,Image,Time)
    Library:MakeNotification({
    Name = Name,
    Content = Content,
    Image = Image,
    Time = Time
    })
end

if not httprequest then 
  SendNotification("Eazvy Hub - Error", "Your exploit is not supported with Eazvy Hub", "rbxassetid://161551681", 5)
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
    SendNotification("Attempting to join Discord-Server", "Check your Discord-Application or Web-Browser on your current logged in account.", "rbxassetid://10715004387", 5)
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
if setclipboard and not httprequest then
    setclipboard("https://discord.gg/YpmmYZc544")
    SendNotification("Set Discord-Invite to your Clipboard", "Check your Clipboard for the invite copy+paste it in your DMs or in the join-box.", "rbxassetid://10715004387", 5)
end
end})

Tab:AddButton({Name = "Rejoin",Callback = function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)    
end})


