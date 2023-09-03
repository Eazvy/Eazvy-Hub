if not game:IsLoaded() then
    game.Loaded:Wait()
end

--Library + Vars 
local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Content/UILibrary.lua')))()
local Request = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Settings = {
    Key = "",
    AutoLoad = false,
    LoadedAccounts = {game.Players.LocalPlayer.UserId}
}

--Functions

local function SendNotification(Name,Content,Image,Time)
    Library:MakeNotification({
    Name = Name,
    Content = Content,
    Image = Image,
    Time = Time
    })
end

local function UpdateFile()
    if isfile and writefile and isfile("Eazvy-Hub/MainConfig.txt") then  
       writefile('Eazvy-Hub/MainConfig.txt', game:GetService('HttpService'):JSONEncode(Settings))
    end 
end

local function LoadScript()
    if Settings.AutoLoad then 
       SendNotification("Auto-Load is toggled", "Please wait while we check whether the current game is supported...", "rbxassetid://13328029686", 5)
    else 
       SendNotification("Checking-Game", "Please be patient, while the script checks whether the game is supported with the hub.", "rbxassetid://13328029686", 5)
    end 
    local GetScript = Request({Url = "https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Games/" .. tostring(game.PlaceId) .. ".lua",Method = "GET"})
    if GetScript.Body ~= "404: Not Found" then
        task.wait(math.random(1,4))
        Library:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Games/" .. tostring(game.PlaceId) .. ".lua"))()
    else
        SendNotification("Eazvy Hub - Error", "The game you're currently in is not supported with Eazvy Hub.", "rbxassetid://161551681", 5) 
        return 
    end
end 

SendNotification("AZVY HUB", "is Loading please wait...", "rbxassetid://13328029686", 5)


--Config
if isfile and not isfile("Eazvy-Hub/MainConfig.txt") and writefile then 
    writefile('Eazvy-Hub/MainConfig.txt', game:GetService('HttpService'):JSONEncode(Settings))
elseif isfile and isfile("Eazvy-Hub/MainConfig.txt") then 
    Settings = game:GetService('HttpService'):JSONDecode(readfile('Eazvy-Hub/MainConfig.txt'))
end

--Checking whether User has Auto Load Toggled.
if Settings.AutoLoad then 
    LoadScript()
end 

local Window = Library:MakeWindow({
    Name = "Eazvy-Hub - Loader",
    HidePremium = true, 
    SaveConfig = false, 
    IntroEnabled = false,
    IntroText = "Eazvy Hub",
    IntroIcon = "rbxassetid://4562959390",
    Icon = "rbxassetid://10715004387",
})

local Main = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://9204970314",
	PremiumOnly = false
})



--Paragraphs 
Main:AddParagraph("Important","Eazvy-Hub is not responsible for in-game bans. If you are banned permanently, do not beg the owner to help you or it'll result in a permanent blacklist.")
Main:AddParagraph("Supported Executors:","Synapse-X, KRNL, Scriptware, Valyse, Electron, Comet, Hydrogen, Oxygen-U, and Fluxus. Some things may not function properly this all based off of your Executor! If your executor is not supported some features may not be functional.")

--Toggles / Buttons
if writefile and readfile and isfile then 
    Main:AddToggle({Name = "Auto-Load",Default=Settings.AutoLoad,Callback=function(t)
        Settings.AutoLoad = t 
        UpdateFile()
    end})
end 

Main:AddButton({Name = "Load Script",Callback = function()
    LoadScript()
end})

