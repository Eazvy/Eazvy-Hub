if not game:IsLoaded() then
    game.Loaded:Wait()
end

--Library + Vars 
local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Content/UILibrary.lua')))()
local Request = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request
local Identifier = Request({Url = ('%sidentifier.brownfieldd00.workers.dev'):format('https://'), Method = 'GET'}).Body
local Hash = '_B9219393lkdakdw12zx8c824021421-qwe9dwadwq3_'
local RKey = tostring(os.date("*t").year)
local User = game:GetService("Players").LocalPlayer.UserId


--Functions
local function SendNotification(Name,Content,Image,Time)
    Library:MakeNotification({
    Name = Name,
    Content = Content,
    Image = Image,
    Time = Time
    })
end




SendNotification("Eazvy Hub", "Loading please wait...", "rbxassetid://10715004387", 3)

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

local Settings = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://8382597378",
	PremiumOnly = false
})



--Paragraphs 
Main:AddParagraph("Important","Eazvy-Hub is not responsible for in-game bans. If you are banned permanently, do not beg the owner to help you or it'll result in a permanent blacklist.")
Main:AddParagraph("Supported Executors:","Synapse X, KRNL, Scriptware, Fluxus. Some things may not function properly this all based off of your Executor! If your executor is not supported some features may not be functional.")


Main:AddTextbox({Name = "Enter Key",Default = "",TextDisappear = true,Callback = function(s)
    _G.Key = tostring(s)
end})


Main:AddButton({Name = "Load Script",Callback = function()
    local GetScript = Request({Url = "https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Games/" .. tostring(game.PlaceId) .. ".lua",Method = "GET"})
    if GetScript.Body ~= "404: Not Found" then
        Library:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Games/" .. tostring(game.PlaceId) .. ".lua"))()
    else
        SendNotification("Eazvy Hub - Error", "The game you're currently in is not supported with Eazvy Hub.", "rbxassetid://161551681", 5)
        return
    end
end})


Settings:AddButton({Name = "Generate Key",Callback = function()
    if setclipboard and Identifier then
        SendNotification("Eazvy Hub - Success", "Set your unique-key to your clipboard. To view this key press Ctrl+V on your keyboard in a TextBox", "rbxassetid://4914902889", 5)
        setclipboard(Hash..Identifier..User..RKey )
    else 
        SendNotification("Eazvy Hub - Error", "Failed to get key your executor is not supported.", "rbxassetid://161551681", 5)
        return
    end 
end})
