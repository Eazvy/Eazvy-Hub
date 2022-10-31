if not game:IsLoaded() then
    game.Loaded:Wait()
end

--library 
local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Content/UILibrary.lua')))()
local Request = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request


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

--Paragraphs 
Main:AddParagraph("Important","Eazvy-Hub is not responsible for in-game bans. If you are banned permanently, to not beg the owner/admins to help you or it'll result in a permanent blacklist.")
Main:AddParagraph("Supported Executors:","Synapse X, KRNL, Scriptware, Fluxus. Some things may not function properly this all based off of your Executor! If your executor is not supported it may not be functional!")


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
