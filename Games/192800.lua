
--Services
repeat task.wait() until game:IsLoaded() and game:GetService("Players").LocalPlayer:WaitForChild("Moneyz") and game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local Previous_Money = Player.Moneyz.Value 
local Previous_XP = 0 
--Library + Vars
local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Content/UILibrary.lua')))()
local CookStats,CashierStats,BoxerStats,DeliveryStats,SupplierStats = 0,0,0,0,0
local NewCookStats,NewCashierStats,NewBoxerStats,NewDeliveryStats,NewSupplierStats = 0,0,0,0,0
local CandyCorn,Roll,Lollypop = 0
local NewCandyCorn,NewRoll,NewLollypop = 0 
local Pizza = tostring(utf8.char(0x0001F355))
local Bug = tostring(utf8.char(0x0001F41C))
local Apple = tostring(utf8.char(0x0001F34F))
local Dew = tostring(utf8.char(0x0001F4D7))
local Supply = tostring(utf8.char(0x00002B1C))
local Sparkles = tostring(utf8.char(0x0000E32E))
local Artist = tostring(utf8.char(0x0000E502))
local Bolt = tostring(utf8.char(0x000026A1))
local Warning = tostring(utf8.char(0x000026A0))
local Wheel = tostring(utf8.char(0x00002699))
local Notepad = tostring(utf8.char(0x0001F5D2))
local Checkmark = tostring(utf8.char(0x00002705))
local Candy = tostring(utf8.char(0x0001F36C))
local RedBox = tostring(utf8.char(0x0001F5C3))
local Present = tostring(utf8.char(0x0001F381))
local Apple = tostring(utf8.char(0x0001F34E))
local EmotesData = require(game:GetService("ReplicatedStorage").Enums).EmoteToEmoji
-- local Send_Data = require(game:GetService("ReplicatedStorage").LibraryFolder.Utilities.Utility)
-- getrenv()._G.ChoosingJob = true 
local Window = Library:MakeWindow({
    Name = Pizza.." Work at a Pizza Place - Eazvy Hub",
    HidePremium = true, 
    SaveConfig = false, 
    ConfigFolder = "EazvyHub",
    IntroEnabled = false,
    IntroText = "Eazvy Hub - Work at a Pizza Place",
    IntroIcon = "rbxassetid://10932910166",
    Icon = "rbxassetid://4914902889",
})


local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://10507357657",
	PremiumOnly = false
})

local Pets = Window:MakeTab({
	Name = "Pets",
	Icon = "rbxassetid://4857721272",
	PremiumOnly = false
})


local LP = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://3609827161",
	PremiumOnly = false
})

local Trolling = Window:MakeTab({
	Name = "Trolling",
	Icon = "rbxassetid://8855392706",
	PremiumOnly = false
})

local House = Window:MakeTab({
	Name = "House",
	Icon = "rbxassetid://9204970314",
	PremiumOnly = false
})

local VehicleTab = Window:MakeTab({
	Name = "Vehicle",
	Icon = "rbxassetid://9033642906",
	PremiumOnly = false
})




local Teleports = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://6034684937",
	PremiumOnly = false
})

local Server = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://8382597378",
	PremiumOnly = false
})



if Players.LocalPlayer.PlayerGui:FindFirstChild("MainGui") and Players.LocalPlayer.PlayerGui.MainGui:FindFirstChild("Menu") and Players.LocalPlayer.PlayerGui.MainGui.Menu:FindFirstChild("Pet") then 
   if Players.LocalPlayer.PlayerGui.MainGui.Menu.Pet:FindFirstChild("PetPanel") and Players.LocalPlayer.PlayerGui.MainGui.Menu.Pet.PetPanel:FindFirstChild("XPTween") then 
	  Previous_XP = tonumber(Players.LocalPlayer.PlayerGui.MainGui.Menu.Pet.PetPanel.XPTween.Value)
   end 
end 

local VoiceChatService = game:GetService("VoiceChatService")



local Send_Data = require(game:GetService("ReplicatedStorage").LibraryFolder.Utilities.Utility)
local old; old = hookfunction(Send_Data.SendData, function(...)
	local args = {...}
	if table.find(args,192800) then 
		return 
	end 
	return old(unpack(args))
end)

local Hook
Hook = hookmetamethod(game, "__namecall", function(Self, ...)
    local Arguments = {...}
    local Method = getnamecallmethod()

    if Self == VoiceChatService and Method == "IsVoiceEnabledForUserIdAsync" then
        return true
    end

    return Hook(Self, unpack(Arguments))
end)

getgenv().getsenv = function(Scr)
    for i,v in pairs(getreg()) do
        if (type(v) == "function") then
            if getfenv(v).script then
                if getfenv(v).script == Scr then
                    return getfenv(v)
                end
            end
        end
    end
end


getgenv().setfpscap = function() return end 

if game:GetService("Players").LocalPlayer.PlayerGui.ChooseJob:FindFirstChild("Play") then 
   firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ChooseJob.Play.Play.MouseButton1Click)
end 
 
if not game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Visible then 
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Visible = true 
end 

if not game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.ChatWindow.Visible then
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.ChatWindow.Visible = true
end 

if not game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Visible then 
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Visible = true 
end 

if not game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Menu.Visible then 
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Menu.Visible = true 
end 

Settings = {
    Player = "",
	SelectedPresent = "",
	SelectedFurnitureItem,
	SelectedRoom,
	SelectedDetector,
	SelectedHouseDetector,
	SelectedHouse,
	SelectedTouchEvent,
	SelectedVehiclePart,
	SelectedItem = {},
	FloodRoomLocation,
	SelectedEvent,
    AutofarmToggle = false,
	SpamSounds = false,
	AutoPaycheck = false,
	VoteKicked = false,
	FloodRoom = false,
	AntiFire = false,
	LagServer = false,
	RainbowHouse = false,
	RainbowFurniture = false, 
	ClickToSelect =  false,
	ClickToSelectModel = false,
	RemoveModels = false,
	LoopHorn = false,
	LoopDoors = false,
	UnicornAura = false,
	SnowballAura = false,
	RainbowCar = false,
	RainbowCars = false,
	CarHoods = false,
	SpamChat = false,
	NoClip = false,
	AntiSlow = false,
	AntiSit = false,
	AntiKick = false,
	LoopEmote = false,
	SelectedEmote,
	NoPresentAnimation = false,
	AntiRagdoll = false,
	AutoClaim = false,
	AutoSell = false,
	AutoSellItem = false,
	DoorBypass = false,
	AutoSellRarity = {},
    RuinSupplies = false,
    AnnoyPlayer = false,
    doCashier = false,
    doCook = false, 
    doBoxer = false, 
    doDelivery = false, 
    doSupplier = false,
	AutoUpgrade = false,
	InfiniteIngredients = false,
	AutoCash = false,
	TeleportSpeed = 0,
	RainbowHouseDelay = 0,
	RainbowFurnitureDelay = 0,
	FlySpeed = 50,
	SellUntil = 0,
	DeliverAt = 15,
	RefillAt = 0,
	RefillEnd = 0,
	SpamDetectors = false,
	SpamTouchEvents = false,
	NeonOrDoubleTimeStarted = false,
    SpamDew = false,
    SpamDoors = false,
    SpamPizza = false,
	CarColor = 255,255,255,
	HouseColor = 255,255,255,
	HouseMaterial = "None",
	SelectedTeam,
	AutofarmPet = false,
    Autofarm = {Cashier=false,Cook=false,Boxer=false,Delivery=false,Supplier=false}
}

game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Ban.Ban:GetPropertyChangedSignal("Visible"):Connect(function()
	if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Ban.Visible then 
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Ban.Ban.MouseButton1Click)
	end
end)

game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule:GetPropertyChangedSignal("Visible"):Connect(function()
 	if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule.Visible and Settings.AutofarmToggle then 
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule.Open.MouseButton1Click)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule.Open.MouseButton1Down)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule.Open.Activated)
		task.wait(.15)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule.Use.MouseButton1Click)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule.Use.MouseButton1Down)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Prompts.Capsule.Use.Activated)
		task.wait(.15)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Inventory.CancelButton.MouseButton1Click)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Inventory.CancelButton.MouseButton1Down)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Inventory.CancelButton.Activated)
		task.wait()
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.StickerCollection.CancelButton.MouseButton1Click)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.StickerCollection.CancelButton.MouseButton1Down)
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.StickerCollection.CancelButton.Activated)
	end 
end) 

for i,v in pairs(getconnections(workspace.Main.GivePaycheck.OnClientEvent)) do
    v:Disable()
end

local function ClaimPaycheck()
    workspace:WaitForChild("Main"):WaitForChild("GivePaycheck"):FireServer("Paycheck", false)
end
workspace.Main.GivePaycheck.OnClientEvent:Connect(ClaimPaycheck)

local TextBlacklist = {"The manager has put you back to work.", "The manager has made you employee of the day.", "You have earned a badge.", "The manager has been voted off."}
if table.find(TextBlacklist, game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Body.Message.Text) or game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Body.Message.Text:match("has been kicked") or game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Body.Message.Text:match("pet") then 
	firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Down)
	firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Click)
	firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.Activated)
end


local TextBlacklist = {"The manager has put you back to work.", "The manager has made you employee of the day.", "You have earned a badge.", "The manager has been voted off."}
game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox:GetPropertyChangedSignal("Visible"):Connect(function()
	if Settings.AutofarmToggle and table.find(TextBlacklist, game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Body.Message.Text) or game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Body.Message.Text:match("has been kicked") or game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Body.Message.Text:match("pet") or game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Body.Message.Text:match("pet's")  then 
		firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Down)
		firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Click)
		firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.Activated)
	end
end)

-- 	if game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Visible and game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Title.Text == "Teleport Failed" then
-- 		firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Down)
-- 		firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Click)
-- 		firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.Activated)
-- 		game:GetService("GuiService"):ClearError()
-- 	elseif game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Visible and game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Title.Text == "The manager has put you back to work." and Settings.AutofarmToggle then 
		-- firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Down)
		-- firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.MouseButton1Click)
		-- firesignal(game.Players.LocalPlayer.PlayerGui.GuiTop.DialogBox.Cancel.Activated)
-- 	--elseif game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Visible and game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Title.Text == "You have been banned from this house" and Settings.AntiHouseBan then 

-- 	end
-- end)

game:GetService("GuiService"):ClearError()

local AllEmotes = { {
	Name = "Hi", 
	GroupColor = "Bright blue"
}, {
	Name = "Bye", 
	GroupColor = "Bright blue", 
	EnglishOnly = true
}, {
	Name = "Glee", 
	GroupColor = "Bright red"
}, {
	Name = "Sad", 
	GroupColor = "Bright red"
}, {
	Name = "Laugh", 
	GroupColor = "Bright red"
}, {
	Name = "Think", 
	GroupColor = "Bright red"
}, {
	Name = "Scared", 
	GroupColor = "Bright red"
}, {
	Name = "Amazed", 
	GroupColor = "Bright red"
}, {
	Name = "Angry", 
	GroupColor = "Bright red"
}, {
	Name = "Confused", 
	GroupColor = "Bright red"
}, {
	Name = "Whistle", 
	GroupColor = "Bright blue"
}, {
	Name = "Sleep", 
	GroupColor = "Bright blue"
}, {
	Name = "Clap", 
	GroupColor = "Bright blue"
}, {
	Name = "Disgust", 
	GroupColor = "Bright green", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Evil", 
	GroupColor = "Bright green", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Shocked", 
	GroupColor = "Bright green", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Die", 
	GroupColor = "Bright green"
}, {
	Name = "Sit", 
	GroupColor = "Bright blue"
}, {
	Name = "Trip", 
	GroupColor = "Bright yellow"
}, {
	Name = "Dance", 
	GroupColor = "Bright yellow"
}, {
	Name = "Dance2", 
	GroupColor = "Bright yellow"
}, {
	Name = "Dance3", 
	GroupColor = "Bright yellow"
}, {
	Name = "Shuffle", 
	GroupColor = "Bright yellow", 
	R15Only = true
}, {
	Name = "Swing", 
	GroupColor = "Bright yellow", 
	R15Only = true
}, {
	Name = "Easy", 
	GroupColor = "Bright yellow", 
	R15Only = true
}, {
	Name = "HipHop", 
	GroupColor = "Bright yellow", 
	R15Only = true
}, {
	Name = "HipHop2", 
	GroupColor = "Bright yellow", 
	R15Only = true
}, {
	Name = "Flair", 
	GroupColor = "Bright yellow", 
	R15Only = true
}, {
	Name = "Marashin", 
	GroupColor = "Bright yellow", 
	R15Only = true
}, {
	Name = "Dolphin", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Monkey", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Happy", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Floss", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Cutesy", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Samba", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Twirl", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Cha Cha", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Slide", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Around Town", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Shuffler", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Rock", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Feet", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Robot", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Jacks", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Sleepy", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Idol", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Cower", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Celebrate", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Fashion", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Jump Wave", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
}, {
	Name = "Trantrum", 
	GroupColor = "Bright yellow", 
	R15Only = true, 
	PremiumOnly = false
} };

local EmoteNames = {} 
local PassedEmote = false 
local function FixEmoji(ins)
    return ins:gsub(" %f[%z\128-\255][\194-\244][\128-\191]+$", "")
end

for i,v in pairs(AllEmotes) do 
	if EmotesData[v.Name] then 
		table.insert(EmoteNames, v.Name .. " " .. EmotesData[v.Name])
	elseif v.Name == "Marashin" then 
		PassedEmote = true 
	elseif PassedEmote then 
		table.insert(EmoteNames, v.Name .. " 👑")
	else
		table.insert(EmoteNames, v.Name)
	end
end

for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
end
 
for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
	v:Disable()
end

if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Notifications.ErrorSaving:FindFirstChild("LocalScript") then 
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Notifications.ErrorSaving:FindFirstChild("LocalScript").Disabled = true 
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Notifications.ErrorSaving:FindFirstChild("LocalScript"):Destroy()
 end

if game.ReplicatedStorage.LibraryFolder:FindFirstChild("ErrorLoggerLocal") then 
	game.ReplicatedStorage.LibraryFolder:FindFirstChild("ErrorLoggerLocal"):Destroy()
end 
if workspace.Main:FindFirstChild("DataStoreError") then 
	workspace.Main:FindFirstChild("DataStoreError"):Destroy()
end 
if workspace.Main:FindFirstChild("RecordLocalError") then 
	workspace.Main:FindFirstChild("RecordLocalError"):Destroy()
end

require(game:GetService("ReplicatedStorage").LibraryFolder.Network).LogTraffic = function() return end 
require(game:GetService("ReplicatedStorage").LibraryFolder.Network).FireAllClientsWithinDistance = function() return end 
require(game:GetService("ReplicatedStorage").LibraryFolder.Network).FireOtherClientsWithinDistance = function() return end 


getupvalues = getupvalues or debug.getupvalues
setupvalue = setupvalue or debug.setupvalue
if not (getrawmetatable and getupvalues and setupvalue and (getreg or debug.getregistry)) then
	return
end
if game:GetService("Workspace").GameService:FindFirstChild("ChangeCamera") then 
	game:GetService("Workspace").GameService:FindFirstChild("ChangeCamera"):Destroy()
end

Settings.Custom = {refill_at=0, refill_end=60, deliver_at=15, stay_in_kitchen=true}

local Materials = {"None", "ForceField", "Plastic", "Wood", "Slate", "Concrete", "CorrodedMetal", "DiamondPlate", "Foil", "Grass", "Marble", "Granite", "Brick", "Pebble", "Sand", "Fabric", "SmoothPlastic", "Metal", "WoodPlanks", "Cobblestone", "Rock", "Glacier", "Snow", "Sandstone", "Mud", "Basalt", "Ground", "CrackedLava", "Glass", "Asphalt", "LeafyGrass", "Salt", "Limestone", "Pavement"}



local TeleportTable = {
	['PizzaPlace'] = {
		['Spawn Area'] = {
			['Location'] = CFrame.new(49, 3, 196)
		},
		['Cashier Area'] = {
			['Location'] = CFrame.new(48, 4, 80)
		},
		['Cook Area'] = { 
			['Location'] = CFrame.new(38, 4, 61),
		},
		['Boxing Area'] = { 
			['Location'] = CFrame.new(53, 4, 13)
		},
		['Delivery Area'] = {
			['Location'] = CFrame.new(64,4,-18)
		},
		['Supply Area'] = {
			['Location'] = CFrame.new(7,13,-1033)
		},
		['Unloading Area'] = {
			['Location'] = CFrame.new(20, 9, -20)
		},
		['Manager Office'] = {
			['Location'] = CFrame.new(38, 4, 7)
		}, 
		['Kick Manager'] = { 
			['Location'] = CFrame.new(16, 4, 21)
		},
		['Parking Lot'] = { 
			['Location'] = CFrame.new(62, 3, -85)
		},
		['Hideout'] = {
			['Location'] = CFrame.new(75, 9, 66)
		}
	},
	['Islands'] = {
		['Treasure Island'] = {
			['Location'] = CFrame.new(-1675, -1, -1152)
		},
		['Pirate Island'] = {
			['Location'] = CFrame.new(-1065, 40, 706)
		},
		["Jordan's Island"] = { 
			['Location'] = CFrame.new(1525, -1, 1362)
		}
	},
	['Other'] = {
		['Skeleton Cave'] = { 
			['Location'] = CFrame.new(-251, -23, -950)
		},
		['The Dump'] = { 
			['Location'] = CFrame.new(34, 3, -182)
		},
		['Party Island'] = { 
			['Location'] = CFrame.new(81, 3, -276)
		},
		['The Dock'] = { 
			['Location'] = CFrame.new(-448, 3, -355)
		},
		['Krusty Krab'] = { 
			['Location'] = CFrame.new(-499,-26,-543)
		},
		['Pet Shop'] = {
			['Location'] = CFrame.new(57, 4, -242)
		},
		['Mulberry Hideout'] = {
			['Location'] = CFrame.new(-1755, 2, -1266)
		},
		['Treasure Chest'] = { 
			['Location'] = CFrame.new(-1765, 6, -1275)
		},
		['Manager Chair'] = {
			['Location'] = CFrame.new(24, 4, 6)
		},
		['Present Table'] = {
			['Location'] = CFrame.new(32, 4, 25)
		},
		['Capsule Machines'] = {
			['Location'] = CFrame.new(27,4,97)
		},
		['Pizza Place Top'] = {
			['Location'] = CFrame.new(46,21,47)
		},
		['Supplier Top'] = {
			['Location'] = CFrame.new(8,37,-1026)
		}
	},
}

local PizzaLocationNames = {}
local IslandLocationNames = {}
local OtherLocationNames = {}
for i,v in pairs(TeleportTable.PizzaPlace) do 
	table.insert(PizzaLocationNames, i)
end
for i,v in pairs(TeleportTable.Islands) do 
	table.insert(IslandLocationNames, i)
end
for i,v in pairs(TeleportTable.Other) do 
	table.insert(OtherLocationNames, i)
end


local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request
local httpservice = game:GetService('HttpService')



local InventoryItems = {}
for Data,Furniture in pairs(Send_Data:SendData("GetInventory", "PlayerChannel", 2) or {}  )do 
	if not table.find(InventoryItems, tostring(Furniture.Name)) and Furniture.Name ~= "No Hat" and Furniture.Category ~= "PetHats" and Furniture.Category ~= "GamePasses" and Furniture.Category ~= "Moneyz" and not Furniture.UnlimitedSet then 
		table.insert(InventoryItems, tostring(Furniture.Name))
	elseif not table.find(InventoryItems, tostring(Furniture.Name)) and Furniture.Name ~= "No Hat" and Furniture.Category == "Gear" and not Furniture.UnlimitedSet then 
		table.insert(InventoryItems, tostring(Furniture.Name))
	end
end

local PresentNames = {}
for i,v in pairs(game:GetService("Workspace").PresentTable.Presents:GetChildren()) do 
	table.insert(PresentNames, tostring(v.Name))
end

local TeamNames = {}
for i,v in pairs(game:GetService("Teams"):GetChildren()) do
    table.insert(TeamNames, v.Name)
end

local VehicleColorParts = {}


for Every,Car in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
    if Car:IsA("Model") and Car.Name == "Delivery Car" then 
        for Every,Model in pairs(Car:GetChildren()) do 
            if Model:IsA("Part") and Model:FindFirstChild("ColorGroup") and not table.find(VehicleColorParts, Model.Name) then
                table.insert(VehicleColorParts, Model.Name)
            end
        end
    end
end 



local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

task.spawn(function()
	for i,v in pairs(Send_Data:SendData("GetJobsCompleted", "PlayerChannel", 10)) do 
		if i == "Cook" and v~= nil then 
		CookStats = v 
		elseif i == "Cashier" and v~= nil then 
			CashierStats = v
		elseif i == "Pizza Boxer" and v~= nil then 
			BoxerStats = v 
		elseif i == "Delivery" and v~= nil then 
			DeliveryStats = v 
		elseif i == "Supplier" and v~= nil then 
			SupplierStats = v 
		end
	end

	for i,v in pairs(Send_Data:SendData("GetCandyCounts", "PlayerChannel", 10)) do 
	    if i =="CandyCorn" then 
	    	CandyCorn = v 
	    elseif i == "Roll" then 
	    	Roll = v 
	    elseif i == "Lollypop" then 
	    	Lollypop = v 
	    end 
	end 
end)

local Status = Main:AddParagraph("Autofarm Status:","Disabled")
local Coins_Earned = Main:AddParagraph("Money Earned:","0")
local Upgrade = Main:AddParagraph("Autofarm Stats / Next Upgrade:","")
local player = game:GetService("Players").LocalPlayer
local ffc = game.FindFirstChild
local RNG = Random.new()
local network
local character,root,humanoid
do
	local reg = (getreg or debug.getregistry)()
	for i=1,#reg do
		local f = reg[i]
		if type(f)=="function" then
		    for k,v in next,getupvalues(f) do
				if typeof(v)=="Instance" then
				    if v.Name=="CashOut" then
					    setupvalue(f,k,{MouseButton1Click={wait=function()end,Wait=function()end}})
					
					-- elseif v.Name=="Open" then 
					-- 	setupvalue(f,k,{MouseButton1Click={wait=function()end,Wait=function()end}})
				    end
					if v.Name == "Claim" then 
						setupvalue(f,k,{MouseButton1Click={wait=function()end,Wait=function()end}})
					end 
					if v.Name == "ExploitList" then 
						setupvalue(f,k,{ExploitList=nil})
						setupvalue(f,k,{Row=nil})
					end	
					if v.Name == "ExploiterWarning" then 
						setupvalue(f,k,{ExploiterWarning=nil})
					end
				end
			end
    		if tostring(getfenv(f).script) == "Music" then
    		    local consts = getconstants(f)
    		    local loc=false
		        for ci,c in next,consts do
		            if c == "location changed" then
		                loc=true
		            elseif loc and c == "SendData" then
		                setconstant(f,ci,"ExplodeString")
		                break
		            end
		        end
    		end
		end
		if type(f)=="table" and rawget(f,"FireServer") and rawget(f,"BindEvents") then
			network = f
		end
	end
end


--Functions


local c;
local h;
local bv;
local bav;
local cam;
local flying;
local p = Client;
local buttons = {W = false, S = false, A = false, D = false, Moving = false};

local StartFly = function ()
    if not game:GetService("Players").LocalPlayer.Character or not game:GetService("Players").LocalPlayer.Character.Head or flying then return end;
    c = game:GetService("Players").LocalPlayer.Character;
    h = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid");
    h.PlatformStand = true;
    cam = workspace:WaitForChild('Camera');
    bv = Instance.new("BodyVelocity");
    bav = Instance.new("BodyAngularVelocity");
    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000;
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000;
    bv.Parent = c.Head;
    bav.Parent = c.Head;
    flying = true;
    h.Died:connect(function() flying = false end);
end;

local EndFly = function ()
    if not game:GetService("Players").LocalPlayer.Character or not flying then return end
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false;
    bv:Destroy();
    bav:Destroy();
    flying = false;
end;


game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
    if GPE then return end;
    for i, e in pairs(buttons) do
        if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
            buttons[i] = true;
            buttons.Moving = true;
        end;
    end;
end);

game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
    if GPE then return end;
    local a = false;
    for i, e in pairs(buttons) do
        if i ~= "Moving" then
            if input.KeyCode == Enum.KeyCode[i] then
                buttons[i] = false;
            end;
            if buttons[i] then a = true end;
        end;
    end;
    buttons.Moving = a;
end);


local setVec = function (vec)
    return vec * ((Settings.FlySpeed or 50) / vec.Magnitude);
end;

game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
    if flying and c and c.PrimaryPart then
        local p = c.PrimaryPart.Position;
        local cf = cam.CFrame;
        local ax, ay, az = cf:toEulerAnglesXYZ();
        c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az));
        if buttons.Moving then
            local t = Vector3.new();
            if buttons.W then t = t + (setVec(cf.lookVector)) end;
            if buttons.S then t = t - (setVec(cf.lookVector)) end;
            if buttons.A then t = t - (setVec(cf.rightVector)) end;
            if buttons.D then t = t + (setVec(cf.rightVector)) end;
            c:TranslateBy(t * step);
        end;
    end;
end);


function attach(speaker,target)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
		local char = speaker.Character
		local tchar = target.Character
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		local hrp2 = target.Character:FindFirstChild("HumanoidRootPart")
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
			if v:IsA("Tool") then 
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(v)
			end
		end
		tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
	else
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "You need a Tool to use the Kill function!",
			Image = "rbxassetid://161551681",
			Time = 5
		})
	end
end

function zeroGrav(part)
    if part:FindFirstChild("BodyForce") then return end
    local temp = Instance.new("BodyForce")
    temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
    temp.Parent = part
end


function GetManager()
	return game:GetService("Teams").Manager:GetPlayers()[1]
end


function CheckBikes()
    for _,v in pairs(game:GetService("Workspace"):GetChildren()) do 
        if v:IsA("Tool") and v.Name == "DeliveryBike" then 
            v:Destroy()
        end
    end
end




function SendNotify(name, content, image)
	Library:MakeNotification({
		Name = name,
		Content = content,
		Image = image,
		Time = 5
	})
end


    
    
function ServerHop()
    local servers = {}
    local req = httprequest({Url = "https://games.roblox.com/v1/games/"..tostring(game.PlaceId).."/servers/Public?sortOrder=Desc&limit=100"})
    local body = httpservice:JSONDecode(req.Body)
    if body and body.data then
        for i, v in next, body.data do
            if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers then
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

function GetVehicle()
	local Vehicles = {}
    for _,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do 
        if v.Name == "Driver" and v.Occupant == nil and v.Parent:FindFirstChild("HoodSeat") and v.Parent:FindFirstChild("Owner") and v.Parent:FindFirstChild("Owner").Value==nil then 
            table.insert(Vehicles, v)
        end
    end
	return Vehicles[math.random(1,#Vehicles)]
end


function GetCurrentVehicle()
    return Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.SeatPart and Player.Character.Humanoid.SeatPart.Parent
end

local function FlipVehicle()
    local v = GetCurrentVehicle()
    if not v then return end
    local p = v.PrimaryPart or v:FindFirstChild("PrimaryPart") or v:FindFirstChildWhichIsA("BasePart")
    if not p then return end
    local up = p.CFrame.UpVector
    local pos, look = p.Position, p.CFrame.LookVector
    local flip = up:Dot(Vector3.yAxis) > 0.5 and CFrame.Angles(math.pi, 0, 0) or CFrame.new()
    v:SetPrimaryPartCFrame(CFrame.lookAt(pos, pos + look, Vector3.yAxis) * flip)
end



function TP(instance, cframe)
    instance.CFrame = (cframe)
end




function NoclipV(inst,bool)
	for i,v in pairs(inst:GetDescendants()) do 
		if v:IsA("BasePart") or v:IsA("MeshPart") then 
			if bool and v.Name == "Hood1" or v.Name == "Hood2" then 
				v.CanCollide = false 
			else 
				v.CanCollide = bool 
			end
		end
	end
end

function VelocityTP(instance, cframe)
    local Car = instance
    local BodyGyro = Instance.new("BodyGyro", Car)
    BodyGyro.P = 5000
    BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    BodyGyro.CFrame = Car.CFrame
    local BodyVelocity = Instance.new("BodyVelocity", Car)
    BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    BodyVelocity.Velocity = CFrame.new(Car.Position, cframe.p).LookVector * 120  
	for i=1,5 do task.wait()
		game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false 
	end
    wait((Car.Position - cframe.p).Magnitude / 120)
    BodyVelocity.Velocity = Vector3.new()
    wait(0.1)
    BodyVelocity:Destroy()
    BodyGyro:Destroy()
end

function smoothTP(cframe)
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then 
		repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil 
	end
	local Vehicle = GetVehicle()
    Vehicle:Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
	wait(.35)
	Vehicle.Anchored = true 
	TP(Vehicle, cframe)
	wait(.55)
	Vehicle.Anchored = false  
	wait(.55)
	Vehicle.Anchored = true  
	task.spawn(function()
		for i=1,15 do task.wait()
			game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false 
		end
	end)
	VelocityTP(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), cframe)
	task.spawn(function()
		for i=1,15 do task.wait()
			game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false 
		end
	end)
	for _,o in ipairs(workspace.Ovens:GetChildren()) do
		if ffc(o,"Bottom") then
			o.Bottom.CanTouch = false
		end
	end
end

local function getDeliveryBike() 
	local DeliveryBikes = {}
    local BikeOwner
    for _, v in pairs(game.Players:GetChildren()) do
        if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
            local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
            if DeliveryBike and (DeliveryBike:FindFirstChild("CreateBike") or DeliveryBike:FindFirstChild("CleanupBike")) then
                local BikeRemote = DeliveryBike:FindFirstChild("CreateBike")
                if BikeRemote then
                    table.insert(DeliveryBikes, BikeRemote)
                    BikeOwner = v
                    break
                end
            end
        end
    end
	return #DeliveryBikes >= 1 and DeliveryBikes[math.random(1, #DeliveryBikes)] 
end



function customTP(inst, cframe)
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then 
		repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil 
	end
	local Send_Data = require(game:GetService("ReplicatedStorage").LibraryFolder.Utilities.Utility)
	Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
	repeat task.wait() until game:GetService("Players").LocalPlayer.Team.Name == "Cashier" or not game:GetService("Players").LocalPlayer.Character or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	if Settings.AutofarmToggle and Settings.doCashier then 
		for _,c in pairs(workspace.Customers:GetChildren()) do 
			if ffc(c,"Head") and ffc(c,"Humanoid") and c.Head.CFrame.Z<1000 and ffc(c.Head,"Dialog") and ffc(c.Head.Dialog,"Correct") and Settings.doCashier and ((c.Humanoid.SeatPart and c.Humanoid.SeatPart.Anchored) or (c.Humanoid.SeatPart==nil and (c.Head.Velocity.Z^2)^.5<.0001)) and Settings.AutofarmToggle then
				local dialog = c.Head.Dialog.Correct.ResponseDialog or ''
				local order = "MountainDew"
				if dialog:sub(-8)=="instead." then
					dialog = dialog:sub(-30)
				end
				if dialog:find("pepperoni",1,true) then
					order = "PepperoniPizza"
				elseif dialog:find("sausage",1,true) then
					order = "SausagePizza"
				elseif dialog:find("cheese",1,true) then
					order = "CheesePizza"
				end
				Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
				local reg = 3 
				if c.Head.Position.X < 50 then
					reg = 2
				elseif c.Head.Position.X < 70 then
					reg = 1
				end
				local RegPos
				if reg == 2 then 
					RegPos = CFrame.new(41, 5, 86)
				elseif reg == 1 then 
					RegPos = CFrame.new(56, 4, 86)
				else 
					RegPos = CFrame.new(70, 4, 83)
				end 
				task.wait(.15)
				if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then 
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RegPos
				end 
				-- if Settings.AutofarmToggle and Settings.doCashier and not TeleportedAlready then 
				-- 	Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
				-- 	TeleportedAlready = true 
				-- en
				network:FireServer("OrderComplete", c, order, workspace["Register"..reg])
				local Bike = getDeliveryBike()
				if Bike then 
					Bike.Parent.CleanupBike:InvokeServer(c, c)
				end
				Status:Set(Notepad .. " Completed Order at " .. "Register "..tostring(reg))
				task.wait(0.3)
			end
		end
	end
	TeleportedAlready = false
	task.wait(.15)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
end

-- function customTP(inst, cframe)
	-- if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then 
	-- 	repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil 
	-- end
-- 	inst.Disabled = false
-- 	if inst.Parent:FindFirstChild("HoodSeat") then 
-- 		inst.Parent:FindFirstChild("HoodSeat").Disabled = false 
-- 	end
--     inst:Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
-- 	task.wait(.15)
-- 	inst.Anchored = true 
-- 	TP(inst, cframe)
-- 	task.wait()
-- 	inst.Anchored = false  
-- 	task.wait()
-- 	inst.Anchored = true  
-- 	inst.Parent.ClickDetector.Detector:FireServer("ExitVehicle", inst)
-- 	task.spawn(function()
-- 		for i=1,15 do task.wait()
-- 			game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false 
-- 		end
-- 	end)
-- 	VelocityTP(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), cframe)
-- 	task.spawn(function()
-- 		for i=1,15 do task.wait()
-- 			game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false 
-- 		end
-- 	end)
-- 	inst.Disabled = true 
-- 	for _,o in ipairs(workspace.Ovens:GetChildren()) do
-- 		if ffc(o,"Bottom") then
-- 			o.Bottom.CanTouch = false
-- 		end
-- 	end
-- end



function getPlayers()
	local players = {}

	for _, player in pairs(game:GetService("Players"):GetChildren()) do
		if player ~= game:GetService("Players").LocalPlayer then 
			table.insert(players, tostring(player.DisplayName).." @"..player.Name)
		end
	end
	return players
end

function getPlayersbyNick(name)
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
        if v ~= game:GetService('Players').LocalPlayer and name == tostring(v.DisplayName).." @"..v.Name then
			return v.Name
		end
	end
end



function getPlayersByName(Name)
    local Name,Len,Found = string.lower(Name),#Name,{}
    for _,v in pairs(game:GetService('Players'):GetPlayers()) do
        if v.Name ~= game:GetService('Players').LocalPlayer then 
            if Name:sub(0,1) == '@' then
                if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
                    return v 
                end
            else
                if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
                return v 
            end
        end
    end
end
end







function GetTruck()
    for _,v in pairs(game:GetService("Workspace").Trucks:GetChildren()) do 
        if v:IsA("Model") and v.Driver.Occupant == nil then 
            return v.Driver 
        end
    end
end


function GetGifts()
	for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
		if v.ClassName=="Tool" and v.Name:match("^%u%d$") and ffc(v,"Handle") and ffc(v,"House") and (parent~=workspace or (v.Handle.Position-Vector3.new(54.45, 4.02, -16.56)).Magnitude < 30) then
		else 
			v.Parent = nil 
		end
	end
end



local k = get_thread_identity()
set_thread_identity(4)

function PaintCars(all, color)
	if all then 
		for _,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Wheel") and v:FindFirstChild("Bumper") and v:FindFirstChild("Hood1") then 
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Bumper, Settings.HouseMaterial, color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Wheel, Settings.HouseMaterial, color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Hood1, Settings.HouseMaterial, color)
			elseif v:IsA("Model") and v:FindFirstChild("Body") and v:FindFirstChild("Bumper") then 
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Body, Settings.HouseMaterial, color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Bumper, Settings.HouseMaterial, color)
			end
		end
	elseif not GetCurrentVehicle() then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Your Vehicle was not found... Please enter a vehicle!",
			Image = "rbxassetid://161551681",
			Time = 5
		})
		return
	elseif GetCurrentVehicle() and GetCurrentVehicle():FindFirstChild("Bumper") and GetCurrentVehicle():FindFirstChild("Wheel") and GetCurrentVehicle():FindFirstChild("Hood1") then 
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Bumper, Settings.HouseMaterial, color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Wheel, Settings.HouseMaterial, color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("Paint", GetCurrentVehicle().Hood1, Settings.HouseMaterial, color)
	elseif GetCurrentVehicle() and GetCurrentVehicle():FindFirstChild("Body") and GetCurrentVehicle():FindFirstChild("Bumper") then 
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Body, "None", color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Bumper, "None", color)
	end
end 

set_thread_identity(k)




function UnpaintCars(all)
	if all == true then 
		for _,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Wheel") and v:FindFirstChild("Bumper") and v:FindFirstChild("Hood1") then 
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Bumper, "None", BrickColor.new("Bright red").Color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Wheel, "None", BrickColor.new("Really black").Color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Hood1, "None", BrickColor.new("Really black").Color)
			elseif v:IsA("Model") and v:FindFirstChild("Body") and v:FindFirstChild("Bumper") then 
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Body, "None", BrickColor.new("Really black").Color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Bumper, "None", BrickColor.new("Really black").Color)
			end
		end
	elseif GetCurrentVehicle() and GetCurrentVehicle():FindFirstChild("Bumper") and GetCurrentVehicle():FindFirstChild("Wheel") and GetCurrentVehicle():FindFirstChild("Hood1") then 
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Bumper, "None", BrickColor.new("Bright red").Color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Wheel, "None", BrickColor.new("Really black").Color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Hood1, "None", BrickColor.new("Really black").Color)
	elseif GetCurrentVehicle() and GetCurrentVehicle():FindFirstChild("Body") and GetCurrentVehicle():FindFirstChild("Bumper") then 
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Body, "None", color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Bumper, "None", color)
	end
end 



function MaterialCars(all, color)
	if all == true then 
		for _,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Wheel") and v:FindFirstChild("Bumper") and v:FindFirstChild("Hood1") then 
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Bumper, Settings.HouseMaterial, color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Wheel, Settings.HouseMaterial, color)
				game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", v.Hood1, Settings.HouseMaterial, color)
			end
		end
	elseif GetCurrentVehicle() and GetCurrentVehicle():FindFirstChild("Bumper") and GetCurrentVehicle():FindFirstChild("Wheel") and GetCurrentVehicle():FindFirstChild("Hood1") then 
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Bumper, Settings.HouseMaterial, color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Wheel, Settings.HouseMaterial, color)
		game:GetService("ReplicatedStorage").VehicleChannel:FireServer("PaintVehicle", GetCurrentVehicle().Hood1, Settings.HouseMaterial, color)
	end
end 


function comma_value(amount)
	local formatted = amount
	while true do  
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
	if (k==0) then
		break
		end
	end
	return formatted
end

local GotManager = false



local Auto_Farm = Main:AddToggle({Name = "Autofarm",Default = false,Callback = function(t)
    Settings.AutofarmToggle = t 
	Settings.AntiRagdoll = t
    if Settings.AutofarmToggle  then 
        Status:Set("Disabled")
    else 
        Status:Set("Disabled")
		local Previous_Settings = {Cashier=Settings.doCashier,Cook=Settings.doCook,Boxer=Settings.doBoxer,Delivery=Settings.doDelivery,Supplier=Settings.doSupplier}
        Settings.doCashier = false
        Settings.doCook = false
        Settings.doBoxer = false
        Settings.doDelivery = false
        Settings.doSupplier = false
		Settings.doCashier = Previous_Settings.Cashier
        Settings.doCook =  Previous_Settings.Cook
        Settings.doBoxer =  Previous_Settings.Boxer
        Settings.doDelivery =  Previous_Settings.Delivery
        Settings.doSupplier =  Previous_Settings.Supplier
    end
end    
})


if game:GetService("ReplicatedStorage").GlobalData:FindFirstChild("Holiday") and game:GetService("ReplicatedStorage").GlobalData:FindFirstChild("Holiday").Value == "Halloween" then 
	Main:AddToggle({Name = "Candy Farm",Default = false,Callback = function(t)
		CandyFarm = t 
		if Settings.AutofarmToggle then 
			Auto_Farm:Set(false)
		end
		if CandyFarm == true then 
			Status:Set("Candy Farm Enabled")
			local CandyNumber = 0
			local CandyBucket = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('CandyBucket') or game:GetService("Players").LocalPlayer.Character:FindFirstChild('CandyBucket')
			CandyBucket.Parent = game:GetService("Players").LocalPlayer.Character 
			local Vehicle = GetVehicle()
			while CandyFarm do task.wait()
				for _,v in pairs(workspace.Houses:GetChildren()) do 
					if v:IsA("Model") and v[tostring(v:FindFirstChild("CurrentUpgrade").Value)] and v:FindFirstChild(''):FindFirstChild("HumanoidRootPart") and CandyFarm == true then 
						Status:Set("["..Candy .. "] Collecting Candy from " .. tostring(v).."...")
						customTP(Vehicle, CFrame.new(v[tostring(v:FindFirstChild("CurrentUpgrade").Value )].GivePizza.Position) + Vector3.new(0, 20, 0))
						repeat 
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v[tostring(v:FindFirstChild("CurrentUpgrade").Value)].GivePizza.CFrame 
							wait(.5) 
							CandyBucket.Parent = game:GetService("Players").LocalPlayer.Character 
						wait(2)
						Vehicle = GetVehicle()
						until game:GetService("Players").LocalPlayer:DistanceFromCharacter(v:FindFirstChild('').HumanoidRootPart.Position) > 150 or not CandyFarm 
						if CandyFarm then 
							Status:Set("["..Candy .. "] Collected Candy from " .. tostring(v).." " .. Checkmark)					
							wait(.35)
						end
					end
				end
				if CandyFarm then 
					Status:Set("Waiting 2 Minutes before starting again...")
					wait(121)
				else 
					Status:Set("Disabled Candy Farm")
				end
			end		
		end
	end    
	})
end

local Section = Main:AddSection({
    Name = "// Settings //"
})

Main:AddToggle({Name = "Infinite Ingredients",Default = false,Callback = function(t)
	Settings.InfiniteIngredients = t 
	if Settings.InfiniteIngredients then 
		local Present = nil
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local backpack = player:FindFirstChild("Backpack")
		for _, name in ipairs({"Normal", "Movie", "Gear"}) do
			Present = (backpack and backpack:FindFirstChild(name)) or character:FindFirstChild(name)
			if Present then break end
		end
		if not Present then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Failed to do Infinite Ingredients, please purchase a Present!",
				Image = "rbxassetid://161551681",
				Time = 5
			})
			return 
		end 
		for _,v in pairs(workspace:GetChildren()) do 
			if v.Name == "CookTable" then 
				v.CanCollide = false 
			end
		end
		for _,v in pairs(workspace.Ingredients:GetChildren()) do 
			if v and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then 
				v.CanCollide = false 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame 
				for i=1,2 do task.wait() 
					Present.Parent = game.Players.LocalPlayer.Character 
					task.wait() 
					Present.Parent = game.Players.LocalPlayer.Backpack
				end
				task.wait(.15) 
			end 
		end 
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(Present)
		task.wait()
		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
		for _,v in pairs(workspace.Ingredients:GetChildren()) do 
			v.CanCollide = true 
		end
		for _,v in pairs(workspace:GetChildren()) do 
			if v.Name == "CookTable" then 
				v.CanCollide = true  
			end
		end
	end
end    
})

Main:AddToggle({Name = "Auto-Upgrade House",Default = false,Callback = function(t)
	Settings.AutoUpgrade = t
	if not Settings.AutoUpgrade then 
		Upgrade:Set("")
	else 
		local Check = game:GetService("Workspace").Main:FindFirstChild("StartUpgradeCutscene")
		if Check then 
			Check:Destroy()
		end
	end
end    
})

Main:AddSlider({Name = "Teleport Delay (Delivery)",Min=4,Max =30,Default =4,Color = Color3.fromRGB(255, 0, 0),Increment = 1,ValueName = "",Callback = function(s)
	Settings.TeleportDelay = s 
end    
})


local Cashier = Main:AddToggle({Name = "Cashier",Default = true,Callback = function(t)
	Settings.doCashier = t
end    
})
local Cook = Main:AddToggle({Name = "Cook",Default = true,Callback = function(t)
	Settings.doCook = t
end    
})

local Boxer = Main:AddToggle({Name = "Boxer",Default = true,Callback = function(t)
	Settings.doBoxer = t
end    
})

local Delivery = Main:AddToggle({Name = "Delivery",Default = true,Callback = function(t)
	Settings.doDelivery = t
end    
})

local Supplier = Main:AddToggle({Name = "Supplier",Default = true,Callback = function(t)
	Settings.doSupplier = t
end    
})






Main:AddSlider({Name = "Refill Begin",Min=0,Max=70,Default=5,Color = Color3.fromRGB(0, 64, 255),Increment = 1,ValueName = "",Callback = function(s)
	Settings.Custom.refill_at = tonumber(s) 
end    
})


Main:AddSlider({Name = "Refill Finish",Min=1,Max=90,Default=50,Color = Color3.fromRGB(0, 64, 255),Increment = 1,ValueName = "",Callback = function(s)
	Settings.Custom.refill_end = tonumber(s) 
end    
})


Main:AddSlider({Name = "Deliver At",Min=1,Max=30,Default=Settings.DeliverAt,Color = Color3.fromRGB(0, 64, 255),Increment = 1,ValueName = "",Callback = function(s)
	Settings.DeliverAt = tonumber(s) 
end    
})

local Section = Pets:AddSection({
    Name = "// Pet Auto //"
})


local FedPet = false 

Pets:AddToggle({Name="Pet Farm",Default=false,Callback=function(t)
	Settings.AutofarmPet = t 
	if Settings.AutofarmPet then 
		FedPet = false 
	end
	while Settings.AutofarmPet do task.wait()
		for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Pet.PetPanel.Buttons:GetChildren()) do 
            if v:FindFirstChild("Notification") and v.Notification.Visible and not FedPet and v.Name ~= "Pet" and v.Name ~= "Hold" and v.Name ~= "Fetch" then
                FedPet = true 
                if v:FindFirstChild("Quanity") and tonumber(v.Quanity.Text) == 0 then 
                    workspace:WaitForChild("PetShop"):WaitForChild(v.Name):WaitForChild("ClickDetector"):WaitForChild("Detector"):FireServer()
                    task.wait(.15)
                end 
                workspace.PetService.Petting:FireServer("Cancel")
                game:GetService("Workspace").PetService.FeedPet:FireServer(v.Name)
                task.wait(3)
                FedPet = false 
            end
            if v.Name == "Pet" and v:FindFirstChild("Notification") and v.Notification.Visible and not FedPet then 
                FedPet = true 
                workspace.PetService.Petting:FireServer("Start")
                task.wait(.15)
                workspace.PetService.Petting:FireServer("Petting",300)
                task.wait(.15)
                workspace.PetService.Petting:FireServer("Cancel",true)
                FedPet = false 
            end
            if v.Name == "Fetch" and v:FindFirstChild("Notification") and v.Notification.Visible and not FedPet then 
                FedPet = true 
                game:GetService("Workspace").PetService.PlayBall:FireServer()
                LastNotif = tick() 
                repeat task.wait() until not v or v and v:FindFirstChild("Notification") and not v.Notification.Visible or not FedPet or tick() - (LastNotif) > 30
                FedPet = false 
            end 
            if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Pet.PetPanel.DeathMeter.Visible  then 
               FedPet = true 
               repeat 
                    game:GetService("Workspace").PetService.PlayBall:FireServer()
                    task.wait(18)
                until not game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Pet.PetPanel.DeathMeter.Visible 
               FedPet = false 
            end 
        end 
    end 
end    
})


local Section = Pets:AddSection({
    Name = "// Pets Tab //"
})



Pets:AddButton({Name = "Buy Egg",Callback = function()
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "PetShop")
	task.wait(.15)
	workspace:WaitForChild("PetShop"):WaitForChild("Egg"):WaitForChild("ClickDetector"):WaitForChild("Detector"):FireServer()
end})


Pets:AddToggle({Name ="Auto Buy Egg",Default = false,Callback = function(t)
	while t == true do task.wait()
		if game.Players.LocalPlayer.Moneyz.Value >= 2000 and t == true then 
			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "PetShop")
			task.wait(.15)
			workspace:WaitForChild("PetShop"):WaitForChild("Egg"):WaitForChild("ClickDetector"):WaitForChild("Detector"):FireServer()
			wait(.15)
			workspace.MessageService.DialogButtonPressed:FireServer(true)
			game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Visible = false  
			game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Visible = true  
			Library:MakeNotification({
				Name = "Eazvy Hub - Success",
				Content = "Purchased " .. " Egg",
				Image = "rbxassetid://4914902889",
				Time = 5
			})
		else 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Failed to Purchase " .. " Egg. Insufficent Funds",
				Image = "rbxassetid://161551681",
				Time = 5
			})
			return 
		end 
	end
end    
})

local Section = Pets:AddSection({
    Name = "// Food Tab //"
})


Pets:AddDropdown({Name = "("..Apple ..")".. " Select Food",Default = "",Options={"Cheese","Sausage","Pepperoni","Medicine"}, Callback = function(s)
	Settings.SelectedFood = s 
end    
})

Pets:AddButton({Name = "Buy Food",Callback = function()
	if not Settings.SelectedFood then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to Purchase " .. " No Food Selected.",
			Image = "rbxassetid://161551681",
			Time = 5
		})
		return 
	end
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "PetShop")
	task.wait()
	workspace:WaitForChild("PetShop"):WaitForChild(Settings.SelectedFood):WaitForChild("ClickDetector"):WaitForChild("Detector"):FireServer()
end})


local Section = Pets:AddSection({
    Name = "// Pet Tricks //"
})

Pets:AddButton({Name = "Play Ball",Callback = function()
	game:GetService("Workspace").PetService.PlayBall:FireServer()
end})

Pets:AddButton({Name = "Hold Pet",Callback = function()
	workspace:WaitForChild("PetService"):WaitForChild("Command"):InvokeServer("Hold")
end})

Pets:AddButton({Name = "Throw Pet",Callback = function()
	game:GetService("Workspace").PetService.ThrowPet:FireServer()
end})

Pets:AddButton({Name = "Pat Pet",Callback = function()
	workspace.PetService.Petting:FireServer("Start")
	task.wait(.35)
	for i=1,400 do task.wait()
		workspace:WaitForChild("PetService"):WaitForChild("Petting"):FireServer("Petting",i)
	end
	task.wait(.35)
	workspace.PetService.Petting:FireServer("Cancel")
end})


Pets:AddButton({Name = "Sleep Pet",Callback = function()
	game:GetService("Workspace").PetService.PutToSleep:FireServer()
end})

Pets:AddButton({Name = "Stay Pet",Callback = function()
	workspace.PetService.Command:InvokeServer("Stay")
end})





local Section = Pets:AddSection({
    Name = "// Pet Settings //"
})

Pets:AddTextbox({Name = "Set Pet (Name)",Default = "",TextDisappear = true,Callback = function(s)
	workspace.PetService.SetName:FireServer(s)
end    
})

local Section = Main:AddSection({
    Name = "// Auto Buy Tab //"
})

local PresentSelection = Main:AddDropdown({Name = "// " .. Present .. " Select Present // ",Default = "",Options=PresentNames, Callback = function(s)
	Settings.SelectedPresent = tostring(s)
end    
})

local get_thread_context = get_thread_context or getthreadcontext or getidentity or syn.get_thread_identity
local get_thread_identity = get_thread_context
local set_thread_context = set_thread_context or setthreadcontext or setidentity or syn.set_thread_identity
local set_thread_identity = set_thread_context

local k = get_thread_identity()
set_thread_identity(4)



Main:AddButton({Name = "Buy Present",Callback = function()
	if game.Players.LocalPlayer.Moneyz.Value >= require(game:GetService("ReplicatedStorage").Enums).PresentData[Settings.SelectedPresent].Price then 
		workspace.PresentTable.Presents[Settings.SelectedPresent].ClickDetector.Detector:FireServer()
		wait(.15)
		workspace.MessageService.DialogButtonPressed:FireServer(true)
		game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Visible = false  
		game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Visible = true  
		Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Purchased " .. Settings.SelectedPresent .. " Present",
            Image = "rbxassetid://4914902889",
            Time = 5
        })
	else 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to Purchase " .. Settings.SelectedPresent .. " Present. Insufficent Funds",
			Image = "rbxassetid://161551681",
			Time = 5
		})
		return 
	end 
end    
})

set_thread_identity(k)

Main:AddToggle({Name ="Auto Buy Present",Default = false,Callback = function(t)
    AutoBuyPresent = t 
	while AutoBuyPresent == true do task.wait()
		task.spawn(function()
			local AnimationsShit = {}
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character.Animate.R15:GetChildren()) do 
				if AnimationsShit[v.Name] then 
					AnimationsShit[v.Name] = AnimationsShit[v.Name] + 1 
				else 
					AnimationsShit[v.Name] = 1 
				end
			end
			for i,v in pairs(AnimationsShit) do 
				if v >= 2 then 
					game.Players.LocalPlayer.Character.Animate.R15[tostring(i)]:Destroy()
				end
			end
		end)
		task.spawn(function()
			local R6AnimationShit = {}
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character.Animate.R6:GetChildren()) do 
				if R6AnimationShit[v.Name] then 
					R6AnimationShit[v.Name] = R6AnimationShit[v.Name] + 1 
				else 
					R6AnimationShit[v.Name] = 1 
				end
			end
			for i,v in pairs(R6AnimationShit) do 
				if v >= 2 then 
					game.Players.LocalPlayer.Character.Animate.R6[tostring(i)]:Destroy()
				end
			end
		end)
		if game.Players.LocalPlayer.Moneyz.Value >= require(game:GetService("ReplicatedStorage").Enums).PresentData[Settings.SelectedPresent].Price and workspace.PresentTable.Presents:FindFirstChild(Settings.SelectedPresent) then 
			workspace.PresentTable.Presents[Settings.SelectedPresent].ClickDetector.Detector:FireServer()
			workspace.MessageService.DialogButtonPressed:FireServer(true)
			game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Visible = false  
			game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Visible = true 
			wait(.15)
			end
		end 
	end
})




Main:AddToggle({Name="Auto-Claim Presents",Default=false,Callback=function(t)
	Settings.AutoClaim = t 
	if not Settings.AutoClaim and workspace:FindFirstChild("PresentStuff") then 
		for i=1,5 do task.wait()
			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ResetAvatarAppearance", true)
		end
		workspace.PresentStuff:Destroy()
	elseif Settings.AutoClaim then 
		local a = Instance.new("Part",workspace)
		a.Name = "PresentStuff"
	end
	while Settings.AutoClaim do
		for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
			if v:IsA("Tool") and v:FindFirstChild("PresentScript") and Settings.AutoClaim and game:GetService("Players").LocalPlayer.Character ~= nil and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("Rarity") and not table.find(Settings.AutoSellRarity, tostring(v.Rarity.Value)) then
				game:GetService("ReplicatedStorage").PlayerChannel:FireServer("PutUnwrappedItemInInventory", v.RewardAssetId.Value)
				if tick() - (LastNotif or 0) > 1.3 and Settings.AutoSell then
					LastNotif = tick() 
					Library:MakeNotification({
						Name = "Eazvy Hub - Success",
						Content = "Claimed " .. tostring(v:FindFirstChild("RewardName").Value) .. " Rarity: " .. tostring(v:FindFirstChild("Rarity").Value) .. " from" .. tostring(Settings.SelectedPresent) .. " Present...",
						Image = "rbxassetid://4914902889",
						Time = 1.4
					})
				end
				wait(.15)
				game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Visible = true
				game.ReplicatedStorage.PlayerChannel:FireServer("RemoveGear", v) 
			end
		end 
		wait(2)
	end
end})


Main:AddToggle({Name="Auto-Sell Presents",Default=false,Callback=function(t)
	AutoBuyEgg = t 
	while AutoBuyEgg == true do task.wait()
		workspace:WaitForChild("PetShop"):WaitForChild("Egg"):WaitForChild("ClickDetector"):WaitForChild("Detector"):FireServer()
		task.wait()
		workspace.MessageService.DialogButtonPressed:FireServer(true)
	end
end})


local Section = Main:AddSection({
    Name = "// Auto Sell Tab //"
})

Main:AddToggle({Name="Auto-Sell Presents",Default=false,Callback=function(t)
	Settings.AutoSell = t 
	if not Settings.AutoSell and workspace:FindFirstChild("AutoSellStuff") then 
		for i=1,5 do task.wait()
			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ResetAvatarAppearance", true)
		end
		workspace.AutoSellStuff:Destroy()
	elseif Settings.AutoSell then 
		local a = Instance.new("Part",workspace)
		a.Name = "AutoSellStuff"
	end
	while Settings.AutoSell do task.wait() 
		for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
			if v:IsA("Tool") and v:FindFirstChild("PresentScript") and Settings.AutoSell and v:FindFirstChild("Rarity") and table.find(Settings.AutoSellRarity, tostring(v.Rarity.Value)) then 
				if table.find(Settings.AutoSellRarity, tostring(v.Rarity.Value)) then
					game:GetService("ReplicatedStorage").PlayerChannel:FireServer("PutUnwrappedItemInInventory", v.RewardAssetId.Value)
					game:GetService("ReplicatedStorage").PlayerChannel:FireServer("SellInventoryItem", v.RewardAssetId.Value)
					game:GetService("Players").LocalPlayer.PlayerGui.GuiTop.DialogBox.Visible = false
					game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Visible = true
					if tick() - (LastNotif or 0) > 1.3 and Settings.AutoSell then
						LastNotif = tick() 
						Library:MakeNotification({
							Name = "Eazvy Hub - Success",
							Content = "Sold " .. tostring(v:FindFirstChild("Rarity").Value) .. " " .. tostring(Settings.SelectedPresent) .. " Present!",
							Image = "rbxassetid://4914902889",
							Time = 1.4
						})
					end
					if v:FindFirstChild("PresentCamera") then 
						v:FindFirstChild("PresentCamera").Disabled = true 
						v:FindFirstChild("PresentScript").Disabled = true 
					end
					task.wait()
					game.ReplicatedStorage.PlayerChannel:FireServer("RemoveGear", v) 
				end
			end 
		end
	end
end})


Main:AddToggle({Name="Sell Normal",Default=true,Callback=function(t)
	Toggle = t 
	if not table.find(Settings.AutoSellRarity, "Normal") and t == true then 
		table.insert(Settings.AutoSellRarity, "Normal")
	elseif table.find(Settings.AutoSellRarity, "Normal") and t == false then 
		local Present = table.find(Settings.AutoSellRarity, "Normal")
		table.remove(Settings.AutoSellRarity, Present)
	end
end})




Main:AddToggle({Name="Sell Common",Default=true,Callback=function(t)
	Toggle = t 
	if not table.find(Settings.AutoSellRarity, "Common") and t == true then 
		table.insert(Settings.AutoSellRarity, "Common")
	elseif table.find(Settings.AutoSellRarity, "Common") and t == false then 
		local Present = table.find(Settings.AutoSellRarity, "Common")
		table.remove(Settings.AutoSellRarity, Present)
	end
end})

Main:AddToggle({Name="Sell Uncommon",Default=false,Callback=function(t)
	if not table.find(Settings.AutoSellRarity, "Uncommon") and t == true then 
		table.insert(Settings.AutoSellRarity, "Uncommon")
	elseif table.find(Settings.AutoSellRarity, "Uncommon") and t == false then 
		local Present = table.find(Settings.AutoSellRarity, "Uncommon")
		table.remove(Settings.AutoSellRarity, Present)
	end
end})

Main:AddToggle({Name="Sell Rare",Default=false,Callback=function(t)
	if not table.find(Settings.AutoSellRarity, "Rare") and t == true then 
		table.insert(Settings.AutoSellRarity, "Rare")
	elseif table.find(Settings.AutoSellRarity, "Rare") and t == false then 
		local Present = table.find(Settings.AutoSellRarity, "Rare")
		table.remove(Settings.AutoSellRarity, Present)
	end
end})

Main:AddToggle({Name="Sell Legendary",Default=false,Callback=function(t)
	if not table.find(Settings.AutoSellRarity, "Legendary") and t == true then 
		table.insert(Settings.AutoSellRarity, "Legendary")
	elseif table.find(Settings.AutoSellRarity, "Legendary") and t == false then 
		local Present = table.find(Settings.AutoSellRarity, "Legendary")
		table.remove(Settings.AutoSellRarity, Present)
	end
end})


local Section = Main:AddSection({
    Name = "// Auto Sell Inventory //"
})


local SellItems = Main:AddDropdown({Name = "Select Item (Inventory)",Default = "",Options=InventoryItems,Callback = function(s)
	if not table.find(Settings.SelectedItem, tostring(s)) then 
		table.insert(Settings.SelectedItem, tostring(s))
	end
end    
})

Main:AddToggle({Name="Auto Sell Item",Default=false,Callback=function(t)
	Settings.AutoSellItem = t 
	if Settings.AutoSellItem then 
		while Settings.AutoSellItem do
			for Data,Furniture in pairs(Send_Data:SendData("GetInventory", "PlayerChannel", 2)) do 
				if Furniture ~= nil and Furniture.Quantity and Furniture.Quantity > Settings.SellUntil and Settings.AutoSellItem and table.find(Settings.SelectedItem, tostring(Furniture.Name)) then
					Send_Data:SendData("SellInventoryItem", "PlayerChannel", nil, Furniture.AssetId)
				end
			end
			task.wait(5)
		end
	end
end})



Main:AddButton({Name = "Sell Item",Callback = function()
	for Data,Furniture in pairs(Send_Data:SendData("GetInventory", "PlayerChannel", 2)) do 
		if table.find(Settings.SelectedItem, tostring(Furniture.Name)) and Settings.AutoSellItem then 
			Send_Data:SendData("SellInventoryItem", "PlayerChannel", nil, Furniture.AssetId)
			return
		end
	end
end})


Main:AddSlider({Name = "Sell Until",Min=0,Max=100,Default=1,Color = Color3.fromRGB(173,216,230),Increment = 1,ValueName = "",Callback = function(s)
	if tonumber(s) then 
		Settings.SellUntil = tonumber(s)
	end
end    
})

Main:AddButton({Name = "Refresh Item Dropdown",Callback = function()
	local InventoryItems = {}
	for Data,Furniture in pairs(Send_Data:SendData("GetInventory", "PlayerChannel", 2)) do 
		if not table.find(InventoryItems, tostring(Furniture.Name)) and Furniture.Name ~= "No Hat" and Furniture.Category ~= "PetHats" and Furniture.Category ~= "GamePasses" and Furniture.Category ~= "Moneyz" then 
			table.insert(InventoryItems, tostring(Furniture.Name))
		elseif not table.find(InventoryItems, tostring(Furniture.Name)) and Furniture.Name ~= "No Hat" and Furniture.Category == "Gear" then 
			table.insert(InventoryItems, tostring(Furniture.Name))
		end
	end
	SellItems:Refresh(InventoryItems, true)
end    
})

local Section = VehicleTab:AddSection({
    Name = "// Get Vehicles / Bring //"
})

VehicleTab:AddButton({Name = "Bring Car",Callback = function()
		local hrp = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end

		local v = GetVehicle()
		if not v then return end

		if v.Occupant then v = GetVehicle() end
		if v and v.Parent and v.Parent:IsA("Model") and v.Parent.PrimaryPart then
			v.Parent:SetPrimaryPartCFrame(hrp.CFrame)
		end
		repeat
			task.wait()
			if v:FindFirstChild("ClickDetector") and v.ClickDetector:FindFirstChild("Detector") then
				v.ClickDetector.Detector:FireServer()
			end
		until v.Occupant == char:FindFirstChildWhichIsA("Humanoid") or not GetCurrentVehicle() or not hrp

		task.wait(0.15)
		for _ = 1, 5 do
			task.wait()
			TP(v.Parent.PrimaryPart, CFrame.new(hrp.Position + Vector3.new(0, 8, 0)))
		end
	end
})

VehicleTab:AddButton({Name = "Bring Truck",Callback = function()
		local hrp = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end

		local v = GetTruck()
		if not v then return end

		if v.Occupant then v = GetVehicle() end
		if v and v.Parent and v.Parent:IsA("Model") and v.Parent.PrimaryPart then
			v.Parent:SetPrimaryPartCFrame(hrp.CFrame)
		end
		repeat
			task.wait()
			if v:FindFirstChild("ClickDetector") and v.ClickDetector:FindFirstChild("Detector") then
				v.ClickDetector.Detector:FireServer()
			end
		until v.Occupant == char:FindFirstChildWhichIsA("Humanoid") or not GetCurrentVehicle() or not hrp

		task.wait(0.15)
		for _ = 1, 5 do
			task.wait()
			TP(v.Parent.PrimaryPart, CFrame.new(hrp.Position + Vector3.new(0, 8, 0)))
		end
	end
})


VehicleTab:AddButton({Name = "Get Car",Callback = function()
	local Vehicle = GetVehicle() 
	if tick() - (LastNotif or 0) > math.random(2,4) and not Vehicle then
        LastNotif = tick() 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "No Car Found!",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
	if Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character.Humanoid.Sit then 
	   Player.Character.Humanoid.Sit = false 
	end
    if Vehicle and Vehicle.Occupant ~= nil then 
        Vehicle = GetVehicle()
	end
    repeat task.wait()
        Vehicle.ClickDetector.Detector:FireServer()
    until not Vehicle or not Vehicle and not Vehicle:FindFirstChild("ClickDetector") or Vehicle.Occupant == game:GetService('Players').LocalPlayer.Character.Humanoid or not GetCurrentVehicle() or game:GetService('Players').LocalPlayer.Character.HumanoidRootPart == nil 
end    
})


VehicleTab:AddButton({Name = "Get Truck",Callback = function()
	local Vehicle = GetTruck() 
	if Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character.Humanoid.Sit then 
	   Player.Character.Humanoid.Sit = false 
	end
	if tick() - (LastNotif or 0) > math.random(2,4) and not Vehicle then
        LastNotif = tick() 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "No Truck Found!",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
    if Vehicle and Vehicle.Occupant ~= nil then 
        Vehicle = GetTruck()
    end 
    repeat
        wait()
		Vehicle.ClickDetector.Detector:FireServer()
    until Vehicle.Occupant == game:GetService('Players').LocalPlayer.Character.Humanoid or not GetCurrentVehicle() or game:GetService('Players').LocalPlayer.Character.HumanoidRootPart == nil 
end    
})

VehicleTab:AddButton({Name = "Flip Vehicle",Callback = function()
	if tick() - (LastNotif or 0) > math.random(2,4) and not GetCurrentVehicle() then
        LastNotif = tick() 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to find Vehicle",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
	FlipVehicle()
end    
})

VehicleTab:AddButton({Name = "Reset Vehicle Properties",Callback = function()
	if Vehicle_Properties and GetCurrentVehicle() then 
		require(game:GetService("ReplicatedStorage").VehicleProperties)[GetCurrentVehicle().Name] = Vehicle_Properties[GetCurrentVehicle().Name]
	end 
end    
})





local Section = VehicleTab:AddSection({
    Name = "// Vehicle Mods //"
})


VehicleTab:AddSlider({Name = "Vehicle Speed",Min = 60,Max = 500,Default = 60,Color = Color3.fromRGB(0, 255, 255),Increment = 1,ValueName = "",Callback = function(s)
	if tick() - (LastNotif or 0) > math.random(2,4) and not GetCurrentVehicle() and s > 60 then
        LastNotif = tick() 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to find Vehicle",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
	if GetCurrentVehicle() ~= nil and GetCurrentVehicle():FindFirstChildOfClass('VehicleSeat') then 
        require(game:GetService("ReplicatedStorage").VehicleProperties)[GetCurrentVehicle().Name].MaxSpeed = s 
    end
end    
})

VehicleTab:AddSlider({Name = "Vehicle Turn-Speed",Min = 2,Max = 30,Default = 2,Color = Color3.fromRGB(0, 255, 255),Increment = 1,ValueName = "",Callback = function(s)
	if tick() - (LastNotif or 0) > math.random(2,4) and not GetCurrentVehicle() and s > 2  then
        LastNotif = tick() 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to find Vehicle",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
	if GetCurrentVehicle() ~= nil and GetCurrentVehicle():FindFirstChildOfClass('VehicleSeat') then 
        require(game:GetService("ReplicatedStorage").VehicleProperties)[GetCurrentVehicle().Name].TurnSpeed = s 
    end
end    
})

-- VehicleTab:AddSlider({Name = "Vehicle Turn-In-Place Speed",Min = 30,Max =100,Default = 30,Color = Color3.fromRGB(0, 255, 255),Increment = 1,ValueName = "",Callback = function(s)
-- 	if tick() - (LastNotif or 0) > math.random(2,4) and not GetCurrentVehicle() and s > 30  then
--         LastNotif = tick() 
-- 		Library:MakeNotification({
-- 			Name = "Eazvy Hub - Error",
-- 			Content = "Failed to find Vehicle",
-- 			Image = "rbxassetid://161551681",
-- 			Time = 3
-- 		})
-- 		return 
-- 	end
-- 	if GetCurrentVehicle() ~= nil and GetCurrentVehicle():FindFirstChildOfClass('VehicleSeat') then 
--         require(game:GetService("ReplicatedStorage").VehicleProperties)[GetCurrentVehicle().Name].TurnInPlaceSpeed = s 
--     end
-- end    
-- })


-- VehicleTab:AddSlider({Name = "Vehicle Turn-In-Place Torque",Min=400,Max=1000,Default =400,Color = Color3.fromRGB(0, 255, 255),Increment = 1,ValueName = "",Callback = function(s)
-- 	if tick() - (LastNotif or 0) > math.random(2,4) and not GetCurrentVehicle() and s > 400  then
--         LastNotif = tick() 
-- 		Library:MakeNotification({
-- 			Name = "Eazvy Hub - Error",
-- 			Content = "Failed to find Vehicle",
-- 			Image = "rbxassetid://161551681",
-- 			Time = 3
-- 		})
-- 		return 
-- 	end
-- 	if GetCurrentVehicle() ~= nil and GetCurrentVehicle():FindFirstChildOfClass('VehicleSeat') then 
--         require(game:GetService("ReplicatedStorage").VehicleProperties)[GetCurrentVehicle().Name].TurnInPlaceMaxTorque = s 
--     end
-- end    
-- })

VehicleTab:AddSlider({Name = "Vehicle Torque",Min=6,Max = 50,Default=6,Color = Color3.fromRGB(0, 255, 255),Increment = 1,ValueName = "",Callback = function(s)
	if tick() - (LastNotif or 0) > math.random(2,4) and not GetCurrentVehicle() and s > 60 then
        LastNotif = tick() 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to find Vehicle",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
	if GetCurrentVehicle() ~= nil and GetCurrentVehicle():FindFirstChildOfClass('VehicleSeat') then 
        require(game:GetService("ReplicatedStorage").VehicleProperties)[GetCurrentVehicle().Name].Torque = s 
    end
end    
})

local Section = VehicleTab:AddSection({
    Name = "// Vehicle Parts //"
})

local k = get_thread_identity()
set_thread_identity(4)

VehicleTab:AddDropdown({Name = "Select Vehicle (Part)",Default = "",Options=VehicleColorParts, Callback = function(s)
	Settings.SelectedVehiclePart = s 
end    
})

set_thread_identity(k)



local Section = VehicleTab:AddSection({
    Name = "// Vehicle Color //"
})

VehicleTab:AddToggle({Name ="Rainbow Car",Default = false,Callback = function(t)
    Settings.RainbowCar = t 
	if not Settings.RainbowCar and workspace:FindFirstChild("RainbowCars") then 
		workspace:FindFirstChild("RainbowCars"):Destroy()
		for i=1,5 do task.wait()
			UnpaintCars(false)
		end
	elseif Settings.RainbowCar then  
		local a = Instance.new("Part", workspace)
		a.Name = "RainbowCars"
	end
    while Settings.RainbowCar do wait()
		if GetCurrentVehicle() then 
        	PaintCars(false, Color3.fromHSV(tick()%5/5,1,1))
		end
    end
end    
})

VehicleTab:AddToggle({Name ="Rainbow Cars",Default = false,Callback = function(t)
    Settings.RainbowCars = t 
	if not Settings.RainbowCars and workspace:FindFirstChild("RainbowCars2") then 
		workspace:FindFirstChild("RainbowCars2"):Destroy()
		for i=1,5 do task.wait()
			UnpaintCars(true)
		end
	elseif Settings.RainbowCars then 
		local a = Instance.new("Part", workspace)
		a.Name = "RainbowCars2"
	end
    while Settings.RainbowCars do
        PaintCars(true, Color3.fromHSV(tick()%5/5,1,1))
		task.wait(.35)
    end
end    
})


VehicleTab:AddColorpicker({Name = "Select Color Car (Color)",Default = Color3.fromRGB(255, 0, 0),Callback = function(color)
    Settings.CarColor = color 
end    
})

VehicleTab:AddButton({Name = "Paint All Cars",Callback = function()
	for i=1,2 do 
		PaintCars(true, Settings.CarColor)
	end
end})


VehicleTab:AddButton({Name = "Paint your Car",Callback = function()
	for i=1,2 do 
		PaintCars(false, Settings.CarColor)
	end
end})

VehicleTab:AddButton({Name = "Unpaint all Cars",Callback = function()
	UnpaintCars(true)
end})

local Section = VehicleTab:AddSection({
    Name = "// Vehicle Materials //"
})

VehicleTab:AddDropdown({Name = "Select Vehicle (Material)",Default = "ForceField",Options=Materials,Callback = function(s)
	Settings.HouseMaterial = tostring(s)
end    
})


VehicleTab:AddButton({Name = "Material All Cars",Callback = function()
	for i=1,2 do 
		MaterialCars(true, Settings.CarColor)
	end
end})

VehicleTab:AddButton({Name = "Material your Car",Callback = function()
	for i=1,2 do 
		MaterialCars(false, Settings.CarColor)
	end
end})







local Section = VehicleTab:AddSection({
    Name = "// Vehicle Extra //"
})

VehicleTab:AddToggle({Name ="Loop All Vehicle Horns",Default = false,Callback = function(t)
	LoopHorns = t 
	local Horns = {} 
	while LoopHorns == true do task.wait()
		if #Horns == 0 then 
			for _,v in pairs(game:GetService("Workspace").Trucks:GetChildren()) do 
				if v:IsA("Model") and v:FindFirstChild("LightMain") and (v.LightMain:FindFirstChild("Horn") or v.LightMain:FindFirstChild("Engine")) and LoopHorns == true then 
					table.insert(Horns,v.LightMain.Horn)
				end
			end
			for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
				if v:IsA("Model") and LoopHorns == true then 
					for x,d in pairs(v:GetChildren()) do 
						if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") and (d:FindFirstChildOfClass("Sound").Name == "Horn" or d:FindFirstChildOfClass("Sound").Name == "Engine") and LoopHorns == true then 
							table.insert(Horns,d:FindFirstChildOfClass("Sound"))
						end
					end
				end
			end
		else 
			for i,v in pairs(Horns) do 
				v.Playing = true 
			end
		end
	end
end    
})

VehicleTab:AddToggle({Name = "Loop Toggle Car-Hoods",Default = false,Callback = function(t)
	Settings.CarHoods = t 
	while Settings.CarHoods do task.wait()
		for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Hood2") and Settings.CarHoods then 
				v:FindFirstChild("Hood2").ClickDetector.Detector:FireServer()
			end
		end
	end
end    
})


VehicleTab:AddToggle({Name = "Loop Stop Radios",Default = false,Callback = function(t)
	Settings.LoopRadios = t 
	while Settings.LoopRadios do task.wait() 
		for _,v in pairs(workspace.Cars:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Driver") and v.Driver:FindFirstChild("Music") then 
			   v.Driver.Music.Playing = false 
			end
		end
	end
end})



VehicleTab:AddToggle({Name ="Loop Vehicle Horn",Default = false,Callback = function(t)
	Settings.LoopHorn = t 
	if Settings.LoopHorn and not GetCurrentVehicle() then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "You're not currently sitting in a vehicle!",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		end
	while Settings.LoopHorn do task.wait()
		if GetCurrentVehicle() then 
			local Vehicle = GetCurrentVehicle()
			Vehicle.LightMain.Horn.Playing = true 
		end
	end
end    
})






local Section = House:AddSection({
    Name = " • House Teleports"
})

House:AddButton({Name = "Teleport to House",Callback = function()
    game:GetService("ReplicatedStorage").PlayerChannel:FireServer("TeleportHome")
end})


House:AddToggle({Name = "Rainbow House",Default = false,Callback = function(t)
	Settings.RainbowHouse = t 
	while Settings.RainbowHouse do
		local House = game:GetService("Players").LocalPlayer.House.Value 
		local My_House = game:GetService("Workspace").Houses[tostring(House)]
		local Cur_Upg = My_House:FindFirstChild("CurrentUpgrade").Value 
		for i,v in pairs(My_House[tostring(Cur_Upg)]:GetChildren()) do 
			if v.Name == "Wall" and v:FindFirstChild("FirstFloor") and Settings.RainbowHouse then 
				game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintHouse", v, Settings.HouseMaterial, Color3.fromHSV(tick()%5/5,1,1))
			elseif v.Name == "Roof" and Settings.RainbowHouse then 
				game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintHouse", v, Settings.HouseMaterial, Color3.fromHSV(tick()%5/5,1,1))
			end
		end
		task.wait(Settings.RainbowHouseDelay)
	end
end})


House:AddToggle({Name = "Rainbow Furniture",Default = false,Callback = function(t)
	Settings.RainbowFurniture = t 
	if Settings.RainbowFurniture then 
		local HouseFurniture = {}
		for i,v in pairs(game:GetService("Workspace").Houses[tostring(game:GetService("Players").LocalPlayer.House.Value)].Furniture:GetChildren()) do 
			if v:IsA("Model") and Settings.RainbowFurniture then
				for x,d in pairs(v:GetDescendants()) do 
					if d:IsA("BasePart") or d:IsA("MeshPart") and Settings.RainbowFurniture then 
						table.insert(HouseFurniture,d)
					end
				end
			end 
		end
		while Settings.RainbowFurniture do
			for i,v in pairs(HouseFurniture) do
				if Settings.RainbowFurniture then 
					game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintFurniture", v, Color3.fromHSV(tick()%5/5,1,1))
				end
			end
			task.wait(Settings.RainbowFurnitureDelay)
		end
	end
end})

function Service(service)
    return game:GetService(service)
end

task.spawn(function()
local PS = Service("Players")
local RS = Service("ReplicatedStorage")
local HttpService = Service("HttpService")
local LibFolder = RS:WaitForChild("LibraryFolder")
local PromptsU = PS.LocalPlayer.PlayerGui.MainGui.Prompts
local Furniture_Data = Send_Data:SendData("GetAssetLibrary", "AssetLibraryManagerChannel", 10)
local My_Data = Send_Data:SendData("GetInventory", "PlayerChannel", 2)
local FurnitureData = {}
local MyAssets = {}
local Textures = {}
local HouseFloors = {"FirstFloor","SecondFloor","SecondFloor2","SecondFloor3","SecondFloor4","ThirdFloor","ThirdFloor2","ThirdFloor3","FourthFloor","Basement","Backyard","Backyard2","Balcony","Porch","Garage"}
local Total_Furniture = 0 
local House_Value = 0
local PlayerChan = RS.PlayerChannel
local HouseChan = RS.HouseChannel
local Houseasscheek = PS.LocalPlayer.House.Value 
local My_House = Houses[tostring(Houseasscheek)]
local My_HouseUpg = My_House[tostring(My_House.CurrentUpgrade.Value)]
local MyHouseCenter = My_HouseUpg.Marker
local AssetChange = workspace.Main.AssetIdChanged
local AssHouse 
local AssHouseUpg 
local AssHouseWindowColor = ""
local AssHouseMaterial = "None"
local AssHouseWindowMaterial = "None"
local AssHouseColor = ""

if not My_House then return end 

for Every,Asset in pairs(My_Data) do 
    MyAssets[Asset.AssetId] = true 
end

function CheckAsset(id)
    if MyAssets[id] then 
        return true 
    else 
        return false 
    end
end


function GetAsset(name)
    for _,v in pairs(Furniture_Data) do 
        if tostring(v.Name) == tostring(name) then 
           return v 
        end
    end
end

function LoadHouse(floor,house)
    PlayerChan:FireServer("LocationChanged", floor, house)
end

function ModHouse(arg,arg2)
    HouseChan:FireServer(arg,arg2)
end

local HousesData = {}

task.spawn(function()
	local Houses = workspace.Houses
	for _,v in pairs(Houses:GetChildren()) do 
		if v ~= My_House and v:FindFirstChild(tostring(My_House.CurrentUpgrade.Value)) and v:FindFirstChild("Owner") then 
			LoadHouse("FirstFloor",v)
			task.wait(.35)
			if #v.Furniture:GetChildren() >= 2 then --Check if there's Furniture.
				table.insert(HousesData, "Owner: " .. tostring(v.Owner.Value) .. " | Price: 0" .. " | Upgrade: " .. v[tostring(My_House.CurrentUpgrade.Value)].Name)
			end
		end
	end
end)

local function CheckFurniture()
	local Furnitures = AssHouse.Furniture; 
	local HouseCenter = AssHouseUpg.Marker:GetPivot()
    for Index,Furniture in pairs(Furnitures:GetChildren()) do 
        if not table.find(FurnitureData, Furniture) then
           local ColorDat = {} 
           local PixelData = ""
           for Color,Object in next, Furniture:GetDescendants() do 
               if Object:IsA("BasePart") then 
                  table.insert(ColorDat, tostring(Object.Color))
               end
            end
           if Furniture.Name == "Pixel Art Canvas" then 
              for Every,Inst in pairs(Furniture.Sign.SurfaceGui.Canvas:GetChildren()) do 
                  if Inst:IsA("Frame") then 
                     PixelData = PixelData .. tostring(BrickColor.new(Inst.BackgroundColor3).Number)..","
                  end
                end
            end
            if Furniture and Furniture:FindFirstChild("Config") and not table.find(FurnitureData, Furniture) then 
                table.insert(FurnitureData, {
                    Furniture.Name,
                    tostring(HouseCenter:ToObjectSpace(Furniture:GetPivot())), 
                    Furniture.Config.Value, 
                    ColorDat, 
                    PixelData
                })
            end
            if not Furniture:FindFirstChild("Config") and not table.find(FurnitureData, Furniture) then 
                table.insert(FurnitureData, {
                    Furniture.Name, 
                    tostring(HouseCenter:ToObjectSpace(Furniture:GetPivot())), 
                    "", 
                    ColorDat, 
                    PixelData
                })
            end
        end
        table.insert(FurnitureData, Furniture)
    end 
end 

local function FindTexture(input)
    for _,v in pairs(My_HouseUpg:GetChildren()) do 
        if v:IsA("BasePart") and v.Name == input then
           return v 
        end
    end
end

local function CheckTexture(input)
    local CheckNames = {"Floor","Wall"}
    for _,v in pairs(AssHouseUpg:GetChildren()) do 
        if v:IsA("BasePart") and table.find(CheckNames, tostring(v.Name)) and v:FindFirstChildOfClass("Texture") and v:FindFirstChildOfClass("Texture").Name == input and not Textures[v:FindFirstChildOfClass("Texture").Name] then
            Textures[v:FindFirstChildOfClass("Texture").Name] = {
                ['Name'] = tostring(v:FindFirstChildOfClass("Texture").Name),
                ['Material'] = v.Material.Name,
                ['Color'] = v.Color,
                ['Id'] = tostring(string.sub(tostring(v:FindFirstChildOfClass("Texture").Texture),33,55), "")
            }
        elseif v:IsA("BasePart") and table.find(CheckNames, tostring(v.Name)) then 
            Textures[v.Name] = {
                ['Name'] = tostring(v.Name),
                ['Material'] = v.Material.Name, 
                ['Color'] = v.Color, 
                ['Id'] = ""
            }
        end 
    end
end

local Section = House:AddSection({
	Name = " • Copy House"
})
local House_Status = House:AddParagraph("House Status:","Disabled")

local SelectHouse = House:AddDropdown({Name = "Select Player House",Default = "",Options=HousesData,Callback = function(s)
	Settings.SelectedHouse = s
	if not Settings.SelectedHouse then return end 
end    
})

House:AddButton({Name = "Load House",Callback = function()
	for _,v in pairs(Houses:GetChildren()) do 
		if v ~= My_House and v:FindFirstChild(tostring(My_House.CurrentUpgrade.Value)) and v:FindFirstChild("Owner") then 
			if Settings.SelectedHouse == "Owner: " .. tostring(v.Owner.Value) .. " | Price: 0" .. " | Upgrade: " .. v[tostring(My_House.CurrentUpgrade.Value)].Name then
				AssHouse = v 
				AssHouseUpg = v[tostring(My_House.CurrentUpgrade.Value)]
				break
			end
		end
	end
	local Furnitures = AssHouse.Furniture; 
	local HouseCenter = AssHouseUpg.Marker:GetPivot()
	local AssHouseUpg = AssHouse[tostring(My_House.CurrentUpgrade.Value)]
	local AssHouseColor = AssHouseUpg.Wall.BrickColor.Color 
    local AssHouseMaterial = AssHouseUpg.Wall.Material.Name
	local AssHouseWindowColor = AssHouseUpg.Frame.Color
	local AssHouseWindowMaterial = AssHouseUpg.Frame.Material.Name
	House_Status:Set("Loading in Furniture... | This will take 2.5 seconds to ensure all Furniture is loaded in properly.")
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FirstFloor", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "SecondFloor", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "SecondFloor2", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "SecondFloor3", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "SecondFloor4", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "ThirdFloor", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "ThirdFloor2", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "ThirdFloor3", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FourthFloor", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "Basement", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "Backyard", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "Backyard2", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "Balcony", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "Porch", AssHouse)
	CheckFurniture()
	task.wait(.15)
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "Garage", AssHouse)
	CheckFurniture()
	House_Status:Set("Successfully grabbed Furniture Data! | Loading in House please wait...")
	local Result = HttpService:JSONEncode(FurnitureData)
	local Decoded = HttpService:JSONDecode(Result)
	local Sign_Submit = getsenv(PromptsU.GetString.GetString)
	local Name_Submit = getsenv(PromptsU.GetName.GetName)
	for Index,FurnitureData in pairs(Decoded) do 
		local FurnitureName = FurnitureData[1]
		local CheckFurniture = GetAsset(FurnitureName)
		if CheckFurniture and CheckFurniture.Price then 
		   House_Value = House_Value + CheckFurniture.Price  
		   Total_Furniture = Total_Furniture + 1
		end
	end
	for Index,FurnitureData in pairs(Decoded) do 
		local FurnitureName = FurnitureData[1]
		local CheckFurniture = GetAsset(FurnitureName)
		if CheckFurniture and CheckFurniture.Price then 
		   House_Value = House_Value + CheckFurniture.Price  
		   Total_Furniture = Total_Furniture + 1
		end
	end
	House_Status:Set("Copying " .. tostring(AssHouse.Owner.Value).."'s House | Total Cost: " .. tostring(House_Value))
	HouseChan:FireServer("PaintHouse", My_HouseUpg.Wall, AssHouseMaterial or "None", AssHouseColor)
	for Index,FurnitureData in pairs(Decoded) do 
		local FurnitureName = FurnitureData[1];
		local FurnitureAsset = FurnitureData[3];
		local FurnitureTable = FurnitureData[4];
		local FurniturePixels = FurnitureData[5];
		local FurniturePosition = MyHouseCenter:GetPivot() * CFrame.new(unpack(FurnitureData[2]:split(",")));
		local CheckFurniture = GetAsset(FurnitureName)
		if CheckFurniture then 
			if FurniturePixels == "" then 
				FurniturePixels = " , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , ," ..
				" , , , , , , , , , , , , , ,"
			end
			if PromptsU:FindFirstChild("PixelPaint") and PromptsU.PixelPaint.Visible then 
				task.spawn(function()
					firesignal(PromptsU.PixelPaint.New.MouseButton1Click) 
					repeat task.wait() until PromptsU.GetShortString.Visible 
					PromptsU.GetShortString.Message.Text = tostring(FurnitureAsset)
					task.wait(.15)
					firesignal(PromptsU.GetShortString.Done.MouseButton1Click)
					task.wait(.35)
					PlayerChan:FireServer("SaveCanvasProject", tostring(FurnitureAsset), FurniturePixels)
				end)
			end
			House_Status:Set("Loading House... " .. tostring(Index) .. "/"..tostring(Total_Furniture) .. " | Purchasing... " .. tostring(FurnitureName))
			if not CheckAsset(CheckFurniture.AssetId) then 
			   network:InvokeServer("BuyCatalogItem", tonumber(CheckFurniture.AssetId))
			end 
			task.wait()
			Place_Furniture = Send_Data:SendData("GetFurnitureObject", "AssetLibraryManagerChannel", 5, tonumber(CheckFurniture.AssetId));
			Send_Data:SendData("PlaceFurniture", "HouseChannel", nil, FurniturePosition, tonumber(CheckFurniture.AssetId));
			if FurnitureAsset ~= "" then 
				task.wait()
				AssetChange:FireServer(Place_Furniture, tonumber(string.sub(tostring(FurnitureAsset),1,11)), "")
			end
			if FurnitureName == "Robloxian Poster" then 
				task.spawn(function()
					repeat task.wait() until PromptsU.GetName.Visible 
					PromptsU.GetName.name.Text = tostring(PS:GetNameFromUserIdAsync(tostring(FurnitureAsset)))
					for i=1,3 do task.wait()
						Name_Submit.submit()
					end
				end)
			elseif FurnitureName == "Sign" then 
				local Text = tostring(FurnitureAsset)
				task.spawn(function()
					repeat task.wait() until PromptsU.GetString.Visible 
					PromptsU.GetString.InputText.Text = tostring(Text)
					for i=1,3 do task.wait()
						Sign_Submit.submit()
					end
				  end)
				end
			end
			task.spawn(function()
				if Place_Furniture then  
					for i,v in next, Place_Furniture:GetDescendants() do 
						if v:IsA("BasePart") and FurnitureTable[i] then 
							local r, g, b = FurnitureTable[i]:match("(%d+%.?%d*),%s*(%d+%.?%d*),%s*(%d+%.?%d*)")
							local r_,g_,b_ = tonumber(r),tonumber(g),tonumber(b)
							HouseChan:FireServer("PaintFurniture", v, Color3.new(r_,g_,b_))
						end
					end 
				end
			end)
	end
	House_Status:Set("Loaded House | [Data has saved!]")
	HouseChan:FireServer("PaintHouse", My_HouseUpg.Wall, AssHouseMaterial, AssHouseColor)
	HouseChan:FireServer("PaintHouse", My_HouseUpg.Frame, AssHouseWindowMaterial, AssHouseWindowColor)
end})
end)

local Section = House:AddSection({
    Name = " • House Extra"
})

House:AddColorpicker({Name = "House / Furniture (Color)",Default = Color3.fromRGB(255, 0, 0),Callback = function(color)
	Settings.HouseColor = color 
end    
})

House:AddButton({Name = "Paint All Furniture",Callback = function()
	if not Settings.HouseColor then return end 
	local HouseFurniture = {}
	for i,v in pairs(game:GetService("Workspace").Houses[tostring(game:GetService("Players").LocalPlayer.House.Value)].Furniture:GetChildren()) do 
		if v:IsA("Model") then
			for x,d in pairs(v:GetDescendants()) do 
				if d:IsA("BasePart") or d:IsA("MeshPart") then 
					table.insert(HouseFurniture,d)
				end
			end
		end 
	end
	for i,v in pairs(HouseFurniture) do
		game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintFurniture", v, Settings.HouseColor)
	end
end})


House:AddDropdown({Name = "House (Material)",Default = "",Options=Materials,Callback = function(s)
	Settings.HouseMaterial = tostring(s)
    local House = game:GetService("Players").LocalPlayer.House.Value 
	local My_House = game:GetService("Workspace").Houses[tostring(House)]
	local Cur_Upg = My_House:FindFirstChild("CurrentUpgrade").Value 
	for i,v in pairs(My_House[tostring(Cur_Upg)]:GetChildren()) do 
		if v.Name == "Wall" and v:FindFirstChild("FirstFloor") then 
			game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintHouse", v, Settings.HouseMaterial, Settings.HouseColor)
		elseif v.Name == "Roof" then 
			game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintHouse", v, Settings.HouseMaterial, Settings.HouseColor)
			end
		end
	end   
})

House:AddButton({Name="Color House",Callback=function()
	local House = game:GetService("Players").LocalPlayer.House.Value 
	local My_House = game:GetService("Workspace").Houses[tostring(House)]
	local Cur_Upg = My_House:FindFirstChild("CurrentUpgrade").Value 
	for i,v in pairs(My_House[tostring(Cur_Upg)]:GetChildren()) do 
		if v.Name == "Wall" and v:FindFirstChild("FirstFloor") then 
			game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintHouse", v, Settings.HouseMaterial, Settings.HouseColor)
		elseif v.Name == "Roof" then 
			game:GetService("ReplicatedStorage").HouseChannel:FireServer("PaintHouse", v, Settings.HouseMaterial, Settings.HouseColor)
		end
	end
end    
})

local Section = House:AddSection({
    Name = " • Furniture Stuff"
})

House:AddButton({Name="Buy all Items", Callback=function()
	for i,v in pairs(Send_Data:SendData("GetAssetLibrary", "AssetLibraryManagerChannel", 10)) do 
		network:InvokeServer("BuyCatalogItem", tonumber(i))
	end
end})

House:AddButton({Name="Sell all Furniture",Callback=function()
	local BroCategories = {"PetHats"}
	for i,v in pairs(Send_Data:SendData("GetInventory", "PlayerChannel", 2)) do 
		if true then 
			task.spawn(function()
				repeat task.wait()
				  Send_Data:SendData("SellInventoryItem", "PlayerChannel", nil, v.AssetId)
				until v == nil or v.Quanity == 0
			end)
		end
	end
end})

House:AddButton({Name="Remove all Furniture",Callback=function()
	for i,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
        if v:IsA("Model") and v:FindFirstChild(game:GetService("Players").LocalPlayer.DisplayName) ~= nil then
            House = v  
        end
    end
	local States = {"FirstFloor","SecondFloor","SecondFloor2","SecondFloor3","SecondFloor4","ThirdFloor","ThirdFloor2","ThirdFloor3","FourthFloor","Basement","Backyard","Backyard2","Balcony","Porch","Garage"}
	for i,v in pairs(States) do 
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", v, My_House)
		task.wait(.15)
		for i,v in pairs(House.Furniture:GetChildren()) do 
			game:GetService("ReplicatedStorage").HouseChannel:FireServer("DeleteFurniture", v)
		end
	end
end})	

House:AddButton({Name="Enable Garage Access", Callback=function()
	local House = game:GetService("Players").LocalPlayer.House.Value 
	local My_House = game:GetService("Workspace").Houses[tostring(House)]
	local Cur_Upg = My_House:FindFirstChild("CurrentUpgrade").Value 
	for i,v in pairs(My_House[tostring(Cur_Upg)]:GetChildren()) do 
		if v:IsA("BasePart") and v:FindFirstChild("GarageDelete") then 
			v:Destroy()
		elseif v:IsA("Model") and v:FindFirstChild("GarageDelete") then 
			v:Destroy()
		end
	end
end})

House:AddButton({Name="Invite All Players to Party", Callback=function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do 
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("InvitePlayerToParty", v)
		task.wait()
	end
end})

local Section = House:AddSection({
    Name = " • Furniture Detectors"
})

local AllFurnitureDetectors = {}
local FurnitureDetectors = {}
local AllFurnitureTouchEvents = {}
local FurnitureTouchEvents = {}
local XDHouse = game:GetService("Players").LocalPlayer.House.Value
local My_House = game:GetService("Workspace").Houses[tostring(XDHouse)]

task.spawn(function()
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FirstFloor", My_House)
	for i,v in pairs(My_House.Furniture:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("ClickDetector") and not table.find(FurnitureDetectors, tostring(v.Name)) then 
			table.insert(FurnitureDetectors, tostring(v.Name))
		elseif v:IsA("Model") and v:FindFirstChild("TouchEvent") and not table.find(FurnitureTouchEvents, tostring(v.Name)) then 
			table.insert(FurnitureTouchEvents, tostring(v.Name))
		end
	end

	for i,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
		if v:IsA("Model") and v:FindFirstChild("Furniture") then 
			for Data,Furniture in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
				if Furniture:IsA("Model") and Furniture:FindFirstChild("ClickDetector") and not table.find(AllFurnitureDetectors, tostring(Furniture.Name)) then 
					table.insert(AllFurnitureDetectors, tostring(Furniture.Name))
				elseif Furniture:IsA("Model") and Furniture:FindFirstChild("TouchEvent") and not table.find(AllFurnitureTouchEvents, tostring(Furniture.Name)) and Furniture.Name ~= "" then 
					table.insert(AllFurnitureTouchEvents, tostring(Furniture.Name))
				end
			end
		end
	end



	for i,v in pairs(game:GetService("ReplicatedStorage").StreamingFurnitureStorage:GetChildren()) do 
		if v:IsA("Model") and v:FindFirstChild("ClickDetector")  and not table.find(AllFurnitureDetectors, tostring(v.Name)) then 
			table.insert(AllFurnitureDetectors, tostring(v.Name))
		elseif v:IsA("Model") and v:FindFirstChild("TouchEvent") and not table.find(AllFurnitureTouchEvents, tostring(v.Name)) then 
			table.insert(AllFurnitureTouchEvents, tostring(v.Name))
		end
	end
end)

House:AddDropdown({Name = "Select Detector (All Houses)",Default="",Options=AllFurnitureDetectors,Callback = function(s)
	Settings.SelectedHouseDetector = tostring(s)
end
})

House:AddDropdown({Name = "Select Detector (Your House)",Default="",Options=FurnitureDetectors,Callback = function(s)
	Settings.SelectedDetector = tostring(s)
	Settings.SelectedHouseDetector = "None"
end
})

House:AddButton({Name="Fire Detector", Callback=function()
	if not Settings.SelectedDetector then return end 
	if Settings.SelectedHouseDetector == "None" then 
		local House = game:GetService("Players").LocalPlayer.House.Value
		local My_House = game:GetService("Workspace").Houses[tostring(House)]
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FirstFloor", My_House)
		task.wait()
		My_House.Furniture:FindFirstChild(Settings.SelectedDetector).ClickDetector.Detector:FireServer()
	elseif Settings.SelectedHouseDetector ~= "None" and Settings.SelectedDetector then
		for i,v in pairs(game:GetService("ReplicatedStorage").StreamingFurnitureStorage:GetChildren()) do 
			if v:IsA("Model") and tostring(v.Name) == Settings.SelectedHouseDetector then 
			    v.ClickDetector.Detector:FireServer()
				return
			end
		end
	end
end
})

House:AddButton({Name="Fire Detectors", Callback=function()
	if Settings.SelectedHouseDetector == "None" then 
		local House = game:GetService("Players").LocalPlayer.House.Value
		local My_House = game:GetService("Workspace").Houses[tostring(House)]
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FirstFloor", My_House)
		task.wait()
		for i,v in pairs(My_House.Furniture:GetChildren()) do
			if v:IsA("Model") and tostring(v.Name) == Settings.SelectedDetector then 
				v.ClickDetector.Detector:FireServer()
			end
		end
	elseif Settings.SelectedHouseDetector ~= "None" and Settings.SelectedDetector then
		for i,v in pairs(game:GetService("ReplicatedStorage").StreamingFurnitureStorage:GetChildren()) do 
			if v:IsA("Model") and tostring(v.Name) == Settings.SelectedHouseDetector then 
			    v.ClickDetector.Detector:FireServer()
			end
		end
		for i,v in pairs(workspace.Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Furniture") then 
				for Data,Furniture in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
					if Furniture:IsA("Model") and tostring(Furniture.Name) == Settings.SelectedHouseDetector then 
						Furniture.ClickDetector.Detector:FireServer()
					end
				end
			end
		end
	end
end
})

House:AddToggle({Name = "Loop Fire Detectors",Default = false,Callback = function(t)
	Settings.SpamDetectors = t 
	local House = game:GetService("Players").LocalPlayer.House.Value
	local My_House = game:GetService("Workspace").Houses[tostring(House)]
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FirstFloor", My_House)
	task.wait()
	while Settings.SpamDetectors do
		if Settings.SelectedHouseDetector == "None" then 
			for i,v in pairs(My_House.Furniture:GetChildren()) do
				if v:IsA("Model") and tostring(v.Name) == Settings.SelectedDetector and Settings.SpamDetectors then 
					v.ClickDetector.Detector:FireServer()
				end
			end
		elseif Settings.SelectedHouseDetector ~= "None" then
			for i,v in pairs(game:GetService("ReplicatedStorage").StreamingFurnitureStorage:GetChildren()) do 
				if v:IsA("Model") and tostring(v.Name) == Settings.SelectedHouseDetector then 
					v.ClickDetector.Detector:FireServer()
				end
			end
			for i,v in pairs(workspace.Houses:GetChildren()) do 
				if v:IsA("Model") and v:FindFirstChild("Furniture") then 
					for Data,Furniture in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
						if Furniture:IsA("Model") and tostring(Furniture.Name) == Settings.SelectedHouseDetector then 
							Furniture.ClickDetector.Detector:FireServer()
						end
					end
				end
			end
		end
		task.wait(2.5)
	end
end
})

local Section = House:AddSection({
    Name = " • Furniture TouchEvents"
})

House:AddDropdown({Name = "Select TouchEvent (All Houses)",Default="",Options=AllFurnitureTouchEvents,Callback = function(s)
	Settings.SelectedTouchEvent = tostring(s)
end
})

House:AddDropdown({Name = "Select TouchEvent (Your House)",Default="",Options=FurnitureTouchEvents,Callback = function(s)
	Settings.SelectedEvent = tostring(s)
	Settings.SelectedTouchEvent = "None"
end
})

House:AddButton({Name="Fire TouchEvent", Callback=function()
	if Settings.SelectedTouchEvent == "None" then 
		local House = game:GetService("Players").LocalPlayer.House.Value
		local My_House = game:GetService("Workspace").Houses[tostring(House)]
		for i,v in pairs(My_House.Furniture:GetChildren()) do 
			if v:IsA("Model") and tostring(v.Name) == Settings.SelectedEvent then 
			   for Data,Furniture in pairs(v:GetChildren()) do 
				   if Furniture:IsA("BasePart") and Furniture:FindFirstChildOfClass("TouchTransmitter") then 
					  Furniture.Parent.TouchEvent:FireServer(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), Furniture)
					  return
				   end
				end
			end
		end
	else 
		for i,v in pairs(workspace.Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Furniture") then 
				for x,d in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
					if d:IsA("Model") and tostring(d.Name) == Settings.SelectedTouchEvent then 
					   for q,w in pairs(d:GetChildren()) do 
						if w:IsA("BasePart") and w:FindFirstChildOfClass("TouchTransmitter") then 
						   for p,s in pairs(game:GetService("Players"):GetPlayers()) do 
							   if s.Character and s.Character:FindFirstChild("HumanoidRootPart") then 
								  w.Parent.TouchEvent:FireServer(s.Character:FindFirstChild("HumanoidRootPart"), w)
							   end
							end
						end
					end
				end
			end
			end
		end
	end
end
})

House:AddButton({Name="Fire TouchEvents", Callback=function()
	if Settings.SelectedTouchEvent == "None" then 
		local House = game:GetService("Players").LocalPlayer.House.Value
		local My_House = game:GetService("Workspace").Houses[tostring(House)]
		for i,v in pairs(My_House.Furniture:GetChildren()) do 
			if v:IsA("Model") and tostring(v.Name) == Settings.SelectedEvent then 
			   for Data,Furniture in pairs(v:GetChildren()) do 
				   if Furniture:IsA("BasePart") and Furniture:FindFirstChildOfClass("TouchTransmitter") then 
					  Furniture.Parent.TouchEvent:FireServer(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), Furniture)
				   end
				end
			end
		end
	else 
		for i,v in pairs(workspace.Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Furniture") then 
				for x,d in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
					if d:IsA("Model") and tostring(d.Name) == Settings.SelectedTouchEvent then 
					   for q,w in pairs(d:GetChildren()) do 
						if w:IsA("BasePart") and w:FindFirstChildOfClass("TouchTransmitter") then 
						   for p,s in pairs(game:GetService("Players"):GetPlayers()) do 
							   if s.Character and s.Character:FindFirstChild("HumanoidRootPart") then 
								  w.Parent.TouchEvent:FireServer(s.Character:FindFirstChild("HumanoidRootPart"), w)
								  task.wait(2.5)
							   end
							end
						end
					end
				end
			end
			end
		end
	end
end
})

House:AddToggle({Name = "Loop Fire TouchEvents",Default = false,Callback = function(t)
	if not Settings.SelectedEvent then return end 
	Settings.SpamTouchEvents = t 
	local House = game:GetService("Players").LocalPlayer.House.Value
	local My_House = game:GetService("Workspace").Houses[tostring(House)]
	while Settings.SpamTouchEvents do task.wait()
		if Settings.SelectedTouchEvent == "None" then 
			for i,v in pairs(My_House.Furniture:GetChildren()) do 
				if v:IsA("Model") and tostring(v.Name) == Settings.SelectedEvent then 
				for Data,Furniture in pairs(v:GetChildren()) do 
					if Furniture:IsA("BasePart") and Furniture:FindFirstChildOfClass("TouchTransmitter") then 
						Furniture.Parent.TouchEvent:FireServer(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), Furniture)
					end
					end
				end
			end
		else 
			for i,v in pairs(workspace.Houses:GetChildren()) do 
				if v:IsA("Model") and v:FindFirstChild("Furniture") then 
					for x,d in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
						if d:IsA("Model") and tostring(d.Name) == Settings.SelectedTouchEvent then 
						   for q,w in pairs(d:GetChildren()) do 
							if w:IsA("BasePart") and w:FindFirstChildOfClass("TouchTransmitter") then 
							   for p,s in pairs(game:GetService("Players"):GetPlayers()) do 
								   if s.Character and s.Character:FindFirstChild("HumanoidRootPart") then 
									  w.Parent.TouchEvent:FireServer(s.Character:FindFirstChild("HumanoidRootPart"), w)
									  task.wait(2.5)
								   end
								end
							end
						end
					end
				end
				end
			end
		end
	end
end
})

local Section = House:AddSection({
    Name = Wheel.."  • House Settings"
})

House:AddSlider({Name = "Rainbow House Delay",Min = 1,Max = 15,Default = 0.15,Color = Color3.fromRGB(191, 0, 255),Increment = 1,ValueName = "",Callback = function(s)
    Settings.RainbowHouseDelay = s
end    
})

House:AddSlider({Name = "Rainbow Furniture Delay",Min = 1,Max = 15,Default = 0.15,Color = Color3.fromRGB(191, 0, 255),Increment = 1,ValueName = "",Callback = function(s)
    Settings.RainbowFurnitureDelay = s
end    
})

local Section = Trolling:AddSection({
    Name = Warning.."  • Game Breaking"
})

local XDTroll = Trolling:AddToggle({Name = "Annoy All",Default = false,Callback = function(t)
    Settings.AnnoyPlayer = t
	Settings.Player = game.Players.LocalPlayer
	if Settings.AnnoyPlayer and Settings.Player then 
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
			for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
			end
			for _,v in pairs(workspace.AllDough:GetChildren()) do 
				network:FireServer("SquishDough", v)
				task.wait()
				network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
				network:FireServer("AddIngredientToPizza", v,"Cheese")
				network:FireServer("AddIngredientToPizza", v,"Sausage")
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
			end 
		end)
		wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
			for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
				if v.Anchored == false then 
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
					task.wait()
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
				end
			end
		end)
		wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Boxer")
			for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "Anchored", false)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
				end
			end
		end)
		wait(.35)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
				end
			end
		end)
		wait(.35)
		Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
	end
    while Settings.AnnoyPlayer and Settings.Player do
		Settings.Player = game.Players:GetChildren()[math.random(#game.Players:GetChildren())]
		if Settings.Player and Settings.Player.Character and Settings.Player.Character:FindFirstChild("HumanoidRootPart") then
            local altitude = Settings.Player.Character.HumanoidRootPart.Position.Y
            if altitude >= 100 or altitude <= 3 then
                Settings.Player = game.Players:GetChildren()[math.random(#game.Players:GetChildren())]
            end
        end
        task.spawn(function()
            for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
				if Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					if not v:FindFirstChildOfClass("BodyPosition") then 
						local ForceInstance = Instance.new("BodyPosition")
						ForceInstance.Parent = v
						ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
					task.wait(.15)
				end
			end
			for _,v in pairs(workspace.AllDough:GetChildren()) do 
				if Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
					network:FireServer("AddIngredientToPizza", v,"Cheese")
					network:FireServer("AddIngredientToPizza", v,"Sausage")
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if v.BrickColor == BrickColor.new("Brick yellow") then 
						network:FireServer("SquishDough", v)
					end
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
				end
			end 
        end)
		task.spawn(function()
			for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
				if v.Anchored == false and Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end  
				end
			end
		end)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
				if v.Anchored == false and Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
				end
			end
		end)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
				if v.Anchored == false and Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
				end
			end
		end)
		task.wait(.55)
    end
end})

Trolling:AddToggle({Name = "Smoke All",Default = false,Callback = function(t)
	AnnoyAll = t 
	if AnnoyAll == true then 
		Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Annoying All Players - This is spawning parts on their head every second this is not visible on your client.",
            Image = "rbxassetid://4914902889",
            Time = 3
        })
		while AnnoyAll == true do wait()
			for _,v in pairs(game:GetService("Players"):GetPlayers()) do 
				if v~= game:GetService("Players").LocalPlayer and v.Character ~= nil and AnnoyAll then 
					task.spawn(function()
						pcall(function()
							workspace.GameService.SpawnExtinguisherPart:FireServer(true,nil,nil, Vector3.new(v.Character.PrimaryPart.Position.X + (math.random(-10,10)/10), v.Character.PrimaryPart.Position.Y + (math.random(-10,10)/10), v.Character.PrimaryPart.Position.Z + (math.random(-10,10)/10)))
						end)
					end)
				end
			end 
		end
	end
end
})

Trolling:AddToggle({Name = "Freeze All Objects",Default = false,Callback = function(t)
	Settings.FreezeAll = t 
	if Settings.FreezeAll == true then 
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
			for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
				network:FireServer("UpdateProperty", v, "Anchored", true)
					task.wait(.15)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
			end
			for _,v in pairs(workspace.AllDough:GetChildren()) do 
				network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
				network:FireServer("AddIngredientToPizza", v,"Cheese")
				network:FireServer("AddIngredientToPizza", v,"Sausage")
				task.wait()
				if v.BrickColor == BrickColor.new("Brick yellow") then 
					network:FireServer("SquishDough", v)
					task.wait()
					network:FireServer("UpdateProperty", v, "Anchored", true)
					task.wait(.15)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
				end
			end 
		end)
		task.wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
			for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "Anchored", true)
					task.wait(.15)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
				end
			end
		end)
		task.wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Pizza Boxer")
			for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "Anchored", true)
					task.wait(.15)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
				end
			end
			for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "Anchored", true)
					task.wait(.15)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
				end
			end
		end)
		task.wait(.35)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v:IsA("Tool") and v:FindFirstChild("PizzaToolLocal") then 
					game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(v)
				end
			end
		end)
		local a = Instance.new("Part",workspace)
		a.Name = "asscheeksdaddy"
	end
	if not Settings.FreezeAll and workspace:FindFirstChild("asscheeksdaddy") then 
		if not Settings.FreezeAll == true then 
			task.spawn(function()
				Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
				for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
					network:FireServer("UpdateProperty", v, "Anchored", false)
						-- task.wait(.15)
						-- network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
				end
				for _,v in pairs(workspace.AllDough:GetChildren()) do 
					-- network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
					-- network:FireServer("AddIngredientToPizza", v,"Cheese")
					-- network:FireServer("AddIngredientToPizza", v,"Sausage")
					-- task.wait()
					if v.BrickColor == BrickColor.new("Brick yellow") then 
						-- network:FireServer("SquishDough", v)
						-- task.wait()
						network:FireServer("UpdateProperty", v, "Anchored", false)
						-- task.wait(.15)
						-- network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end 
			end)
			task.wait(.35)
			task.spawn(function()
				Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
				for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
					if v.Anchored == false then 
						network:FireServer("UpdateProperty", v, "Anchored", false)
						-- task.wait(.15)
						-- network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end
			end)
			task.wait(.35)
			task.spawn(function()
				Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Pizza Boxer")
				for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
					if v.Anchored == false then 
						network:FireServer("UpdateProperty", v, "Anchored", false)
						-- task.wait(.15)
						-- network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end
				for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
					if v.Anchored == false then 
						network:FireServer("UpdateProperty", v, "Anchored", false)
						-- task.wait(.15)
						-- network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end
			end)
			task.wait(.35)
			task.spawn(function()
				for _,v in pairs(game:GetService("Workspace"):GetChildren()) do 
					if v:IsA("Tool") and v:FindFirstChild("PizzaToolLocal") then 
						game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(v)
					end
				end
			end)
		end
		workspace:FindFirstChild("asscheeksdaddy"):Destroy()
	end
	while Settings.FreezeAll == true do task.wait()
		if Settings.FreezeAll == true then 
			task.spawn(function()
				for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
					network:FireServer("UpdateProperty", v, "Anchored", true)
					task.wait(.15)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
				end
				for _,v in pairs(workspace.AllDough:GetChildren()) do 
					network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
					network:FireServer("AddIngredientToPizza", v,"Cheese")
					network:FireServer("AddIngredientToPizza", v,"Sausage")
					task.wait()
					if v.BrickColor == BrickColor.new("Brick yellow") then 
						network:FireServer("SquishDough", v)
						task.wait()
						network:FireServer("UpdateProperty", v, "Anchored", true)
						task.wait(.15)
						network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end 
			end)
			task.wait(.35)
			task.spawn(function()
				for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
					if v.Anchored == false then 
						network:FireServer("UpdateProperty", v, "Anchored", true)
						task.wait(.15)
						network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end
			end)
			task.wait(.35)
			task.spawn(function()
				for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
					if v.Anchored == false then 
						network:FireServer("UpdateProperty", v, "Anchored", true)
						task.wait(.15)
						network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end
				for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
					if v.Anchored == false then 
						network:FireServer("UpdateProperty", v, "Anchored", true)
						task.wait(.15)
						network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(v.Position.X,10,v.Position.Z))
					end
				end
			end)
			task.wait(.35)
			task.spawn(function()
				for _,v in pairs(game:GetService("Workspace"):GetChildren()) do 
					if v:IsA("Tool") and v:FindFirstChild("PizzaToolLocal") then 
						game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(v)
					end
				end
			end)
		end
	end
end
})



local OrigPos = {}
for _, v in pairs(workspace.Ingredients:GetChildren()) do
    OrigPos[v.Name] = v.Position
end

Trolling:AddToggle({Name = "Remove Ingredients",Default = false,Callback = function(t)
	if t == true then 
		for _, v in pairs(workspace.Ingredients:GetChildren()) do
			network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0, -10, 0)))
		end 
		local a = Instance.new("Part",workspace)
		a.Name = "IngredientsRemoved" 
	elseif t == false and workspace:FindFirstChild("IngredientsRemoved") then 
		for _, v in pairs(workspace.Ingredients:GetChildren()) do
			if OrigPos[v.Name] then 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(OrigPos[v.Name]))
			end
		end
		workspace.IngredientsRemoved:Destroy()
	end
end})

Trolling:AddToggle({Name = "Earrape All",Default = false,Callback = function(t)
	Settings.SpamSounds = t 
	if Settings.SpamSounds == true then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Success",
			Content = "Enabled Earrape you may receive client-lag while using this.",
			Image = "rbxassetid://4914902889",
			Time = 10
		})
		local a = Instance.new("Part",workspace)
		a.Name = 'spamSounds'
	elseif not Settings.SpamSounds == true and workspace:FindFirstChild("spamSounds") then  
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
				if v:IsA("Model") and v:FindFirstChild("") and v:FindFirstChild(""):FindFirstChild("Head") then 
					for x,d in pairs(v:FindFirstChild(""):FindFirstChild("Head"):GetChildren()) do 
						if d:IsA("Sound") then 
							d.Playing = false 
						end
					end 
				elseif v:IsA("Model") and v:FindFirstChild("Furniture") then 
					for x,d in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
						if d:IsA("Model") then 
							for x,d in pairs(d:GetChildren()) do 
								if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then
									for x,d in pairs(d:GetChildren()) do 
										if d:IsA("Sound") then 
											d.Playing = false 
										end
									end
								end
							end
						end 
					end	
				end
			end
		end)
		task.wait(.15)
		task.spawn(function()
			for i,v in pairs(game:GetService("Workspace").Customers:GetChildren()) do 
				if v:IsA("Model") and v:FindFirstChild("Head") then 
					for x,d in pairs(v:FindFirstChild("Head"):GetChildren()) do 
						if d:IsA("Sound") then 
							d.Playing = false 
						end
					end
				end 
			end 
		end)
		task.wait(.15)
		task.spawn(function()
					for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
						if v:IsA("Model") then 
							for x,d in pairs(v:GetChildren()) do 
							if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then
								for z,v in pairs(d:GetChildren()) do 
									if v:IsA("Sound") then  
									v.Playing = false 
								end
							end
						end
					end
				end
			end
		end)
		task.wait(.15)
		task.spawn(function()
			for i,v in pairs(game:GetService("Workspace").Trucks:GetChildren()) do 
				if v:IsA("Model") then 
					for x,d in pairs(v:GetChildren()) do 
						if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then 
							for z,v in pairs(d:GetChildren()) do 
								if v:IsA("Sound") then 
									v.Playing = false 
								end
							end
						end
					end
				end
			end				
		end)
		task.wait(.15)
		task.spawn(function()
			for i,v in pairs(game:GetService("Workspace").Ovens:GetChildren()) do 
				if v:IsA("Model") and v.Name == "Oven" and v:FindFirstChild("Door") then
					for i,v in pairs(v:FindFirstChild("Door"):GetChildren()) do 
						if v:IsA("BasePart") and v:FindFirstChildOfClass("Sound") then
							for x,d in pairs(v:GetChildren()) do 
								if d:IsA("Sound") then 
									d.Playing = false 
								end
							end
						end
					end
				end
			end
		end)
		task.wait(.15)
		task.spawn(function()
			for i,v in pairs(game:GetService("Workspace").AllDough:GetChildren()) do 
				if v:IsA("BasePart") and v:FindFirstChildOfClass("Sound") then 
					v:FindFirstChildOfClass("Sound").Playing = false 
				end
			end
		end)
		task.wait(.15)
		task.spawn(function()
			for i,v in pairs(game:GetService'Players':GetPlayers()) do
				if v.Character ~= nil and v.Character:FindFirstChild'Head' then
					for _,x in pairs(v.Character.Head:GetChildren()) do
						if x:IsA'Sound' and x.Name ~= "Swimming" then 
						x.Playing = false 
					end
					task.spawn(function()
						for _,z in pairs(v.Backpack:GetChildren()) do 
							if z:IsA("Tool") and z:FindFirstChild("Handle") then 
								for x,d in pairs(z:FindFirstChild("Handle"):GetChildren()) do 
									if d:IsA("Sound") then 
										d.Playing = false 
									end
								end
							end
						end
					end)
				end
			end
		end 
	end)
	task.wait(.15)
	task.spawn(function()
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChildOfClass("Model") and v:FindFirstChildOfClass("Model"):FindFirstChildOfClass("Sound") then
				for x,d in pairs(v:FindFirstChildOfClass("Model"):GetChildren()) do 
					if d:IsA("Sound") then 
						d.Playing = false 
					end
				end
			elseif v:IsA("Folder") and v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("Part"):FindFirstChildOfClass("Sound") then 
				for x,d in pairs(v:GetChildren()) do 
					if d:IsA("BasePart") and d:IsA("Sound") then 
						d.Playing = false 
				end
			end
		end
	end
	end)
	task.wait(.15)
	task.spawn(function()
		for i,v in pairs(game:GetService("Workspace").Pets:GetChildren()) do 
			if v:IsA("Part") and v:FindFirstChildOfClass("Sound") then 
				for x,d in pairs(v:GetChildren()) do 
					if d:IsA("Sound") then 
						d.Playing = false 
					end
				end
			end
		end
	end)
	task.wait(.15)
	task.spawn(function()
		if game:GetService("Workspace"):FindFirstChild("Halloween") then 
			for i,v in pairs(game:GetService("Workspace").Halloween.Owls:GetChildren()) do 
				if v:IsA("Part") and v:FindFirstChildOfClass("Sound") then
					v:FindFirstChildOfClass("Sound").Playing = false 
				end
			end
			
			for i,v in pairs(game:GetService("Workspace").AnimalSound:GetChildren()) do 
				if v:IsA("Part") and v:FindFirstChildOfClass("Sound") then
					v:FindFirstChildOfClass("Sound").Playing = false 
				end
			end
		end
	end)
	task.wait(.15)
	task.spawn(function()
		for i,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Furniture") and v.Furniture:FindFirstChildOfClass("Model") then 
			   for x,d in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
				   if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then 
					  for q,w in pairs(d:GetChildren()) do 
						  if w:IsA("Sound") then 
							 w.Playing = false 
						  end
						end
					end
				end
			end
		end
	end)
	if game:GetService("Workspace"):FindFirstChild("Alarm") and game:GetService("Workspace").Alarm:FindFirstChild("Alarm") and game:GetService("Workspace").Alarm.Alarm:FindFirstChild("Alarm")  then 
		game:GetService("Workspace").Alarm.Alarm.Alarm.Playing = false 
	end
	if workspace:FindFirstChild("spamSounds") then 
		workspace.spamSounds:Destroy()
	end
end
	if Settings.SpamSounds == true then 
		if game:GetService("Workspace"):FindFirstChild("Alarm") and game:GetService("Workspace").Alarm:FindFirstChild("Alarm") and game:GetService("Workspace").Alarm.Alarm:FindFirstChild("Alarm")  then 
			game:GetService("Workspace").Alarm.Alarm.Alarm.Playing = true 
		end
	end
	while Settings.SpamSounds == true do
			task.spawn(function()
				for _,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
					if v:IsA("Model") and v:FindFirstChild("") and v:FindFirstChild(""):FindFirstChild("Head") then 
						for x,d in pairs(v:FindFirstChild(""):FindFirstChild("Head"):GetChildren()) do 
							if d:IsA("Sound") and Settings.SpamSounds then 
								d.Playing = true 
							end
						end 
					elseif v:IsA("Model") and v:FindFirstChild("Furniture") then 
						for x,d in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
							if d:IsA("Model") then 
								for x,d in pairs(d:GetChildren()) do 
									if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then
										for x,d in pairs(d:GetChildren()) do 
											if d:IsA("Sound") and Settings.SpamSounds then 
												d.Playing = true 
											end
										end
									end
								end
							end 
						end	
					end
				end
			end)
			task.wait(.55)
			task.spawn(function()
				for i,v in pairs(game:GetService("Workspace").Customers:GetChildren()) do 
					if v:IsA("Model") and v:FindFirstChild("Head") then 
						for x,d in pairs(v:FindFirstChild("Head"):GetChildren()) do 
							if d:IsA("Sound") and Settings.SpamSounds then 
								d.Playing = true 
							end
						end
					end 
				end 
			end)
			task.wait(.55)
			task.spawn(function()
				for i,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
					if v:IsA("Model") and v:FindFirstChild("Furniture") and v.Furniture:FindFirstChildOfClass("Model") then 
					   for x,d in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
						   if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then 
							  for q,w in pairs(d:GetChildren()) do 
								  if w:IsA("Sound") then 
									 w.Playing = true 
								  end
								end
							end
						end
					end
				end
			end)
			task.wait(.55)
			task.spawn(function()
						for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do 
							if v:IsA("Model") then 
								for x,d in pairs(v:GetChildren()) do 
								if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then
									for z,v in pairs(d:GetChildren()) do 
										if v:IsA("Sound") and Settings.SpamSounds then  
										v.Playing = true 
									end
								end
							end
						end
					end
				end
			end)
			task.wait(.55)
			task.spawn(function()
				for i,v in pairs(game:GetService("Workspace").Trucks:GetChildren()) do 
					if v:IsA("Model") then 
						for x,d in pairs(v:GetChildren()) do 
							if d:IsA("BasePart") and d:FindFirstChildOfClass("Sound") then 
								for z,v in pairs(d:GetChildren()) do 
									if v:IsA("Sound") and Settings.SpamSounds then 
										v.Playing = true 
									end
								end
							end
						end
					end
				end				
			end)
			task.wait(.55)
			task.spawn(function()
				for i,v in pairs(game:GetService("Workspace").Ovens:GetChildren()) do 
					if v:IsA("Model") and v.Name == "Oven" and v:FindFirstChild("Door") then
						for i,v in pairs(v:FindFirstChild("Door"):GetChildren()) do 
							if v:IsA("BasePart") and v:FindFirstChildOfClass("Sound") then
								for x,d in pairs(v:GetChildren()) do 
									if d:IsA("Sound") and Settings.SpamSounds then 
										d.Playing = true 
									end
								end
							end
						end
					end
				end
			end)
			task.wait(.55)
			task.spawn(function()
				for i,v in pairs(game:GetService("Workspace").AllDough:GetChildren()) do 
					if v:IsA("BasePart") and v:FindFirstChildOfClass("Sound") and Settings.SpamSounds then 
						v:FindFirstChildOfClass("Sound").Playing = true 
					end
				end
			end)
			task.wait(.55)
			task.spawn(function()
				for i,v in pairs(game:GetService'Players':GetPlayers()) do
					if v.Character ~= nil and v.Character:FindFirstChild'Head' then
						for _,x in pairs(v.Character.Head:GetChildren()) do
							if x:IsA'Sound' and x.Name ~= "Swimming" and Settings.SpamSounds then 
							x.Playing = true 
						end
						task.spawn(function()
							for _,z in pairs(v.Backpack:GetChildren()) do 
								if z:IsA("Tool") and z:FindFirstChild("Handle") then 
									for x,d in pairs(z:FindFirstChild("Handle"):GetChildren()) do 
										if d:IsA("Sound") and Settings.SpamSounds then 
											d.Playing = true 
										end
									end
									if z:FindFirstChildOfClass("Sound") then 
										z:FindFirstChildOfClass("Sound").Playing = true 
									end
								end
							end
							if v.Character:FindFirstChildOfClass("Tool") and v.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Handle") and v.Character:FindFirstChildOfClass("Tool").Handle:FindFirstChildOfClass("Sound") then 
								v.Character:FindFirstChildOfClass("Tool").Handle:FindFirstChildOfClass("Sound").Playing = false 
							end
						end) 
					end
				end
			end 
		end)
		task.wait(.55)
		task.spawn(function()
			for i,v in pairs(game:GetService("Workspace").Pets:GetChildren()) do 
			    if v:IsA("Part") then 
					for x,d in pairs(v:GetChildren()) do 
						if d:IsA("Sound") then 
							d.Playing = true 
						end
					end
				end
			end
		end)
		task.wait(.55)
		task.spawn(function()
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v:IsA("Model") and v:FindFirstChildOfClass("Model") and v:FindFirstChildOfClass("Model"):FindFirstChildOfClass("Sound") then
					for x,d in pairs(v:FindFirstChildOfClass("Model"):GetChildren()) do 
						if d:IsA("Sound") and Settings.SpamSounds then 
							d.Playing = true 
						end
					end
				elseif v:IsA("Folder") and v:FindFirstChildOfClass("Part") and v:FindFirstChildOfClass("Part"):FindFirstChildOfClass("Sound") then 
					for x,d in pairs(v:GetChildren()) do 
						if d:IsA("BasePart") and d:IsA("Sound") and Settings.SpamSounds then 
							d.Playing = true 
					end
				end
			end
		end
		end)
		task.wait(.55)
		task.spawn(function()
			if game:GetService("Workspace"):FindFirstChild("Halloween") then 
				for i,v in pairs(game:GetService("Workspace").Halloween.Owls:GetChildren()) do 
					if v:IsA("Part") and v:FindFirstChildOfClass("Sound") and Settings.SpamSounds then
						v:FindFirstChildOfClass("Sound").Playing = true 
					end
				end
				
				for i,v in pairs(game:GetService("Workspace").AnimalSound:GetChildren()) do 
					if v:IsA("Part") and v:FindFirstChildOfClass("Sound") and Settings.SpamSounds then
						v:FindFirstChildOfClass("Sound").Playing = true 
					end
				end
			end
		end)
		task.wait(1)
	end
end
})

Trolling:AddToggle({Name = "Break Game",Default = false,Callback = function(t)
    Settings.RuinSupplies = t 
	if Settings.RuinSupplies then 
		task.spawn(function()
			while Setitngs.RuinSupplies do task.wait()
				-- task.wait(.15)
				for zz=1,3 do
					local c,order = FindFirstCustomer()
					if c and order then
						network:FireServer("OrderComplete", c, "I'll take your order and then I'll eat your food", workspace["Register"..zz])
						task.wait(1.3)
					end
				end
			end
		end)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
			for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -600, -1393))
			end
			for _,v in pairs(workspace.AllDough:GetChildren()) do 
				network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
				network:FireServer("AddIngredientToPizza", v,"Cheese")
				network:FireServer("AddIngredientToPizza", v,"Sausage")
				task.wait()
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -600, -1393))
				if v.BrickColor == BrickColor.new("Brick yellow") then 
					network:FireServer("SquishDough", v)
				end
			end 
		end)
		task.wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
			for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -10e10, -1393))
					wait()
				end
			end
		end)
		task.wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Pizza Boxer")
			for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -10e10, -1393))
				end
			end
			for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -10e10, -1393))
				end
			end
		end)
		task.wait(.35)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v:IsA("Tool") and v:FindFirstChild("PizzaToolLocal") then 
					game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(v)
					task.wait()
					v:Destroy()
				end
			end
		end)
		task.wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
			task.wait(.15)
			for zz=1,3 do
				local c,order = FindFirstCustomer()
				if c and order then
					network:FireServer("OrderComplete", c, "I'll take your order and then I'll eat your food", workspace["Register"..zz])
					task.wait(3)
				end
			end
		end)
	end
    while Settings.RuinSupplies do wait()
        for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
			network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -600, -1393))
		end
		for _,v in pairs(workspace.AllDough:GetChildren()) do 
			network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
			network:FireServer("AddIngredientToPizza", v,"Cheese")
			network:FireServer("AddIngredientToPizza", v,"Sausage")
			network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -600, -1393))
			if v.BrickColor == BrickColor.new("Brick yellow") then 
				network:FireServer("SquishDough", v)
			end
		end 
		for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
			if v.Anchored == false then 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -10e10, -1393))
				wait()
			end
		end
		for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
			if v.Anchored == false then 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -10e10, -1393))
			end
		end
		for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
			if v.Anchored == false then 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -10e10, -1393))
			end
		end
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v:IsA("Tool") and v:FindFirstChild("PizzaToolLocal") then 
					game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(v)
					wait(.15)
					v:Destroy()
				end
			end
		end)
		-- task.spawn(function()
		-- 	-- Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
		-- 	task.wait(.15)
		-- 	for zz=1,3 do
		-- 		local c,order = FindFirstCustomer()
		-- 		if c and order then
		-- 			network:FireServer("OrderComplete", c, "I'll take your order and then I'll eat your food", workspace["Register"..zz])
		-- 			task.wait(3)
		-- 		end
		-- 	end
		-- end)
    end
end})


if not Vehicle_Properties then 
	getgenv().Vehicle_Properties = require(game:GetService("ReplicatedStorage").VehicleProperties)
end 



local function CheckInventory()
	local GearItem = {}
	
	for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if not GearItem[v.Name] then
				GearItem[v.Name] = 1
			else
				GearItem[v.Name] = GearItem[v.Name] + 1
			end
		end
	end

	for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") and GearItem[v.Name] and GearItem[v.Name] >= 2 then
			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("RemoveGear", v)
		end
	end
end	

if not Vehicle_Properties then 
	task.spawn(function()
		while task.wait() do 
			if not Settings.LagServer then 
				CheckInventory()
			end
		end
	end)
end 

Trolling:AddToggle({Name = "Lag Server",Default = false,Callback = function(t)
	Settings.LagServer = t 
	if Settings.LagServer then 
		local a = Instance.new("Part",workspace)
		a.Name = "LagServer"
	end
	if not Settings.LagServer and workspace:FindFirstChild("LagServer") then 
		CheckInventory()
		workspace.LagServer:Destroy()
	end
end})


task.spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
	if Settings.LagServer then 
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 193771176)
		task.wait()
		for i,v in  pairs(PS.LocalPlayer.Backpack:GetDescendants()) do
			if v:isA("Tool") and Settings.LagServer then
				v.Parent = PS.LocalPlayer.Character
				task.wait()
				v.Parent = workspace
				task.wait()
				if PS.LocalPlayer.Character and PS.LocalPlayer.Character:FindFirstChild("RightHand") and PS.LocalPlayer.Character.RightHand:FindFirstChild("RightGrip") then 
					PS.LocalPlayer.Character.RightHand.RightGrip:Destroy()
				end 
				if not Settings.LagServer then 
					break 
				end
			end
		end
	end
end)
end)

Trolling:AddToggle({Name = "Meteor Strike",Default = false,Callback = function(t)
	SnowballMeteor = t 
	if SnowballMeteor == true then 
		Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Meteor Strike is now occuring - you will not be able to view what's unfolding but parts, will be spawned everywhere for all players to see except for yourself.",
            Image = "rbxassetid://4914902889",
            Time = 3
        })
		local parts = {}
		for _, part in pairs(workspace:GetDescendants()) do
			if (part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("CornerWedgePart") or part:IsA("WedgePart") or part:IsA("UnionOperation") or part:IsA("TrussPart")) then 
				table.insert(parts,part)
			end
		end 
		while SnowballMeteor == true do task.wait()
			for i,v in pairs(parts) do 
				if v then 
				workspace.GameService.SpawnExtinguisherPart:FireServer(nil,nil,nil, Vector3.new(part.Position.X + (math.random(-10,10)/10), part.Position.Y + (math.random(-10,10)/10), part.Position.Z + (math.random(-10,10)/10)))
				end 
			end 
		end
	end
end
})


-- Trolling:AddToggle({Name = "Lag Server",Default = false,Callback = function(t)
-- 	Bool = t 
-- 	if not Bool then 
-- 		for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
-- 			if v.Name == "2022 Autumn Trophy Item" then 
-- 				game:GetService("ReplicatedStorage").PlayerChannel:FireServer("RemoveGear", v)
-- 			end
-- 		end
-- 		return
-- 	end
-- 	if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("2022 Autumn Trophy Item") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("2022 Autumn Trophy Item") then 
	--    game:GetService("Workspace").Main.MazeComplete:FireServer()
-- 	   task.wait()
	--    game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem",7957073869) 
-- 	   task.wait(.35)
-- 	end
-- 	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("2022 Autumn Trophy Item") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("2022 Autumn Trophy Item") then
-- 		while Bool == true do task.wait()
-- 			if Bool == true then 
-- 				for i=1,3500 do task.wait()
-- 					game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem",7957073869)
-- 				end 
-- 				for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
-- 					if v:IsA("Tool") and v.Name == "2022 Autumn Trophy Item" then 
-- 						v.Parent = game:GetService("Players").LocalPlayer.Character
						-- if game.Players.LocalPlayer.Character:FindFirstChild("RightHand") and game:GetService("Players").LocalPlayer.Character.RightHand:FindFirstChild("RightGrip") then 
						-- 	game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy()
						-- end
-- 					end
-- 				end
-- 				for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
-- 					if v:IsA("Tool") and v.Name == "2022 Autumn Trophy Item"  then
-- 						v.Parent = workspace
-- 					end
-- 				end
-- 			end
-- 		end
-- 	end
-- end    
-- })


Trolling:AddButton({Name = "Spawn Tools",Callback = function()
	local XDHouse = game:GetService("Players").LocalPlayer.House.Value
	local My_House = game:GetService("Workspace").Houses[tostring(XDHouse)]

	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FirstFloor", My_House)
	
	task.wait(.55)
	if not My_House.Furniture:FindFirstChild("Stainless Refrigerator") then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to Lag Server! Purchase Stainless Refrigerator and place it in your house.",
			Image = "rbxassetid://161551681",
			Time = 6
		})
		return 
	end

	for i=1,350 do 
		for i=1,35 do task.wait() 
			My_House.Furniture["Stainless Refrigerator"].Food.TurkeyLeg.ClickDetector.Detector:FireServer() 
			My_House.Furniture["Stainless Refrigerator"].Food.Pizza.ClickDetector.Detector:FireServer() 
		end
				
		for i,v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
						
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" then
				v.Parent = workspace
			end
		end

				
		for i=1,15 do 
			task.spawn(function()
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
				if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" then 
				game.ReplicatedStorage.PlayerChannel:FireServer("RemoveGear", v)
				end
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
					if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" then 
					game.ReplicatedStorage.PlayerChannel:FireServer("RemoveGear", v)
					end
				end
				for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Tools:GetChildren()) do 
				if v.Name == "TurkeyLeg" or v.Name == "Pizza" then  
					v:Destroy()
				end
				end
			end)
		end
	end
end    
})



-- Trolling:AddButton({Name = "Crash Server",Callback = function()
-- 	local XDHouse = game:GetService("Players").LocalPlayer.House.Value
-- 	local My_House = game:GetService("Workspace").Houses[tostring(XDHouse)]

-- 	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "FirstFloor", My_House)
-- 	task.wait(.55)
-- 	if not My_House.Furniture:FindFirstChild("Stainless Refrigerator") then 
-- 		Library:MakeNotification({
-- 			Name = "Eazvy Hub - Error",
-- 			Content = "Failed to Lag Server! Purchase Stainless Refrigerator and place it in your house.",
-- 			Image = "rbxassetid://161551681",
-- 			Time = 6
-- 		})
-- 		return 
-- 	end
	
-- 	for i=1,1000 do
-- 		My_House.Furniture["Stainless Refrigerator"].Food.TurkeyLeg.ClickDetector.Detector:FireServer() 
-- 		My_House.Furniture["Stainless Refrigerator"].Food.Pizza.ClickDetector.Detector:FireServer() 
-- 	end
			
		
-- 		for i,v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
-- 			if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" then
-- 				v.Parent = game:GetService("Players").LocalPlayer.Character
-- 			end
-- 		end
			
-- 		for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
-- 			if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" and v:FindFirstChild("Handle") then
-- 				for i,c in pairs(v.Handle:GetChildren()) do
-- 					if c:IsA("SpecialMesh") then
-- 					c:Destroy()
-- 					end
-- 				end
-- 			end
-- 		end
			
-- 		for i=1,15 do 
-- 			task.spawn(function()
-- 				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
-- 				if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" then 
-- 				game.ReplicatedStorage.PlayerChannel:FireServer("RemoveGear", v)
-- 				end
-- 				end
-- 				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
-- 					if v:IsA("Tool") and v.Name == "TurkeyLeg" or v.Name == "Pizza" then 
-- 					game.ReplicatedStorage.PlayerChannel:FireServer("RemoveGear", v)
-- 					end
-- 				end
-- 				for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Backpack.Tools:GetChildren()) do 
-- 				if v.Name == "TurkeyLeg" or v.Name == "Pizza" then  
-- 					v:Destroy()
-- 				end
-- 				end
-- 			end)
-- 		end
-- end
-- })






-- local Section = Trolling:AddSection({
--     Name = "// Annoy //"
-- })


function GetSharkTank(notify)
	local FoundShark
	if not FoundShark then 
		for _,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Furniture") then 
				for _,Furniture in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
					if Furniture:IsA("Model") and Furniture.Name == "Shark Tank" and Furniture:FindFirstChild("TouchEvent") then 
					   FoundShark = true 
					   return Furniture
					end
				end
			end
		end
		for _,v in pairs(game:GetService("ReplicatedStorage").StreamingFurnitureStorage:GetChildren()) do 
			if v:IsA("Model") and v.Name == "Shark Tank" and v:FindFirstChild("TouchEvent") then 
				FoundShark = true 
				return v
			end
		end
		if not FoundShark and notify then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Failed to Kill (Model not found.)",
				Image = "rbxassetid://161551681",
				Time = 5
			})
			return nil 
		end
		if FoundShark and notify then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Success",
				Content = "	Killing the entire Server...",
				Image = "rbxassetid://4914902889",
				Time = 3
			})
			return
		end
	end
end


function GetPunchingBag()
	local FoundBag
	for _,v in pairs(game:GetService("ReplicatedStorage").StreamingFurnitureStorage:GetChildren()) do 
		if v:IsA("Model") and v.Name == "Dojo Punching Bag" and v:FindFirstChild("TouchEvent") then 
			FoundBag = true 
			return v
		elseif v:IsA("Model") and v.Name == "Bowling Pin Punching Bag" and v:FindFirstChild("TouchEvent") then 
			FoundBag = true 
			return v
		elseif v:IsA("Model") and v.Name == "Punching Bag" and v:FindFirstChild("TouchEvent") then 
			FoundBag = true 
			return v 
		end
	end
	if not FoundBag then 
		for _,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Furniture") then 
				for _,Furniture in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
					if Furniture:IsA("Model") and Furniture.Name == "Dojo Punching Bag" and Furniture:FindFirstChild("TouchEvent") then 
					   FoundBag = true 
					   return Furniture
					elseif Furniture:IsA("Model") and Furniture.Name == "Bowling Pin Punching Bag" and Furniture:FindFirstChild("TouchEvent") then 
						FoundBag = true 
						return Furniture
					elseif Furniture:IsA("Model") and Furniture.Name == "Punching Bag" and Furniture:FindFirstChild("TouchEvent") then 
						FoundBag = true 
						return Furniture
					end
				end
			end
		end
		if not FoundBag then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Failed to Punch (Model not found.)",
				Image = "rbxassetid://161551681",
				Time = 5
			})
			return nil 
		end
		if FoundBag then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Success",
				Content = "	Killing the entire Server...",
				Image = "rbxassetid://4914902889",
				Time = 3
			})
			return
		end
	end
end

-- Trolling:AddDropdown({Name = "Select Team",Default="",Options={"Cashier", "Cook", "Pizza Boxer", "Delivery", "Supplier", "On Break", "Manager"},Callback = function(s)
-- 	Settings.SelectedTeam = tostring(s)
-- end
-- })

-- Trolling:AddButton({Name = "Kill Team",Callback = function()
-- 	if not Settings.SelectedTeam then return end 
-- 	local SharkTank = GetSharkTank(true)
-- 	local SharkTanks = {}
-- 	local SharkTankCount = 1 
-- 	for x,d in pairs(SharkTank.Parent:GetChildren()) do 
-- 		if d:IsA("Model") and d.Name == "Shark Tank" and d:FindFirstChild("TouchEvent") ~= nil then 
-- 		   table.insert(SharkTanks, d)
-- 		end
-- 	end

-- 	for i,v in pairs(Players:GetPlayers()) do 
-- 		if v.Character ~= nil and v.Character:FindFirstChild("Head") ~= nil and v.Team.Name == Settings.SelectedTeam and v.Name ~= game:GetService("Players").LocalPlayer.Name then 
-- 			if SharkTankCount <= #SharkTanks then 
-- 			   task.spawn(function()
-- 					repeat task.wait() 
-- 						SharkTanks[SharkTankCount].TouchEvent:FireServer(v.Character.Head, SharkTanks[SharkTankCount].Shark)
-- 					until v.Character == nil or v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health == 0
-- 					Library:MakeNotification({
-- 						Name = "Eazvy Hub - Success",
-- 						Content = "Killed " .. tostring(v.DisplayName .. " @" .. tostring(v.Name)),
-- 						Image = "rbxassetid://4914902889",
-- 						Time = 1.5
-- 					})
-- 					SharkTankCount = SharkTankCount + 1 
-- 					if SharkTankCount == #SharkTanks or #SharkTanks == 1 then 
-- 						SharkTankCount = 1 
-- 					end
-- 				end)
-- 			end
-- 		end
-- 	end
-- end
-- })


-- Trolling:AddButton({Name = "Kill All Customers",Callback = function()
-- 	local SharkTank = GetSharkTank(true)
-- 	local SharkTanks = {}
-- 	local SharkTankCount = 1 
-- 	for x,d in pairs(SharkTank.Parent:GetChildren()) do 
-- 		if d:IsA("Model") and d.Name == "Shark Tank" and d:FindFirstChild("TouchEvent") ~= nil then 
-- 		   table.insert(SharkTanks, d)
-- 		end
-- 	end
-- 	for i,v in pairs(game:GetService("Workspace").Customers:GetChildren()) do 
-- 		if v:IsA("Model") and v:FindFirstChild("Head") and SharkTanks[SharkTankCount]:FindFirstChild("TouchEvent") then 
-- 			repeat task.wait() 
-- 				SharkTanks[SharkTankCount].TouchEvent:FireServer(v:FindFirstChild("Head"), SharkTanks[SharkTankCount].Shark)
-- 			until v == nil or v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health == 0
-- 			SharkTankCount = SharkTankCount + 1 
-- 			if SharkTankCount == #SharkTanks or #SharkTanks == 1 then 
-- 				SharkTankCount = 1 
-- 			end
-- 		end
-- 	end		
-- end
-- })


function FindFirstDew()
	local children = workspace.AllMountainDew:GetChildren()
	for i=1,#children do
		local d = children[i]
		if (ffc(d,"IsBurned")==nil or d.IsBurned.Value==false) and not d.Anchored then
			return d
		end
	end
end

function getOvenNear(pos)
	local children = workspace.Ovens:GetChildren()
	for i=1,#children do
		if ffc(children[i],"Bottom") and (children[i].Bottom.Position-pos).magnitude < 1.5 then
			return children[i]
		end
	end
end

function isFullyOpen(oven)
	return oven.IsOpen.Value==true and (oven.Door.Meter.RotVelocity.Z^2)^.5<.0001
end

function getDoughNear(pos)
	local children = workspace.AllDough:GetChildren()
	for i=1,#children do
		if (children[i].Position-pos).magnitude < 1.5 then
			return children[i]
		end
	end
end

function FindBadDew()
	local children = workspace.AllMountainDew:GetChildren()
	for i=1,#children do
		local d = children[i]
		if (ffc(d,"IsBurned")==nil or d.IsBurned.Value==false) and d.Position.X > 53 and d.Position.Z > 50 and not d.Anchored then
			return d
		end
	end
end



local Section = Trolling:AddSection({
    Name = "// Kill All / Punch //"
})

Trolling:AddButton({Name = "Kill All", Callback = function()
    local DeliveryBikes = {}
    local BikeOwner
    for _, v in pairs(game.Players:GetChildren()) do
        if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
            local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
            if DeliveryBike and (DeliveryBike:FindFirstChild("CreateBike") or DeliveryBike:FindFirstChild("CleanupBike")) then
                local BikeRemote = DeliveryBike:FindFirstChild("CreateBike")
                if BikeRemote then
                    table.insert(DeliveryBikes, BikeRemote)
                    BikeOwner = v
                    break
                end
            end
        end
    end

    if #DeliveryBikes > 0 then
        for _, v in pairs(game.Players:GetChildren()) do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                local Bike = DeliveryBikes[math.random(1, #DeliveryBikes)]
                if v ~= BikeOwner then
					 task.spawn(function() 
						Bike.Parent.CleanupBike:InvokeServer(v.Character, v.Character.HumanoidRootPart)
						for _, part in pairs(v.Character:GetChildren()) do
							if part:IsA("Accessory") or part:IsA("Tool") then
								Bike:InvokeServer(part, workspace.OceanWater)
							end
						end
					end)
                    Library:MakeNotification({
                        Name = "Eazvy Hub - Success",
                        Content = "Killed " .. tostring(v.DisplayName) .. " @" .. tostring(v.Name),
                        Image = "rbxassetid://4914902889",
                        Time = 1.5
                    })
                    warn("Killed " .. v.Name)
                end
            end
        end
    else
       Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "No Delivery Bikes Found!",
            Image = "rbxassetid://161551681",
            Time = 3
        })
        return
    end
end})

Trolling:AddButton({Name = "Freeze All", Callback = function()
    local DeliveryBikes = {}

    for _, v in pairs(game.Players:GetChildren()) do
        if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
            local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
            if DeliveryBike and (DeliveryBike:FindFirstChild("CreateBike") or DeliveryBike:FindFirstChild("CleanupBike")) then
                local BikeRemote = DeliveryBike:FindFirstChild("CreateBike")
                if BikeRemote then
                    table.insert(DeliveryBikes, BikeRemote)
                end
            end
        end
    end

    if #DeliveryBikes > 0 then
        for _, player in pairs(game.Players:GetChildren()) do
            if player.Character then
                local Bike = DeliveryBikes[math.random(1, #DeliveryBikes)]
                task.spawn(function() 
					for _, part in pairs(player.Character:GetChildren()) do
						if part:IsA("BasePart") then
							Bike:InvokeServer(Bike.Parent, part)
						end
					end
				end)
                Library:MakeNotification({
                    Name = "Eazvy Hub - Success",
                    Content = "Froze " .. tostring(player.DisplayName) .. " @" .. tostring(player.Name),
                    Image = "rbxassetid://4914902889",
                    Time = 1.5
                })
            end
        end
    else
        Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "No Delivery Bikes Found!",
            Image = "rbxassetid://161551681",
            Time = 3
        })
    end
end})

Trolling:AddButton({Name = "Remove Accessories All", Callback = function()
    local DeliveryBikes = {}

    for _, v in pairs(game.Players:GetChildren()) do
        if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
            local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
            if DeliveryBike and (DeliveryBike:FindFirstChild("CreateBike") or DeliveryBike:FindFirstChild("CleanupBike")) then
                local BikeRemote = DeliveryBike:FindFirstChild("CreateBike")
                if BikeRemote then
                    table.insert(DeliveryBikes, BikeRemote)
                end
            end
        end
    end

    if #DeliveryBikes > 0 then
        for _, player in pairs(game.Players:GetChildren()) do
            if player.Character then
                local Bike = DeliveryBikes[math.random(1, #DeliveryBikes)]
                task.spawn(function() 
					for _, part in pairs(player.Character:GetChildren()) do
						if part:IsA("Accessory") or part:IsA("Tool") then
							Bike:InvokeServer(part, workspace.OceanWater)
						end
					end
				end)
                Library:MakeNotification({
                    Name = "Eazvy Hub - Success",
                    Content = "Removed Acessories from " .. tostring(player.DisplayName) .. " @" .. tostring(player.Name),
                    Image = "rbxassetid://4914902889",
                    Time = 1.5
                })
            end
        end
    else
        Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "No Delivery Bikes Found!",
            Image = "rbxassetid://161551681",
            Time = 3
        })
    end
end})



Trolling:AddButton({Name = "Punch All",Callback = function()
	local PunchingBag = GetPunchingBag()
	local PunchingBags = {}
	local PunchingBagCount = 1 
	for x,d in pairs(PunchingBag.Parent:GetChildren()) do 
		if d:IsA("Model") and d.Name:match("Punching") and d:FindFirstChild("TouchEvent") ~= nil then 
			table.insert(PunchingBags, d)
		end
	end
	for i,v in pairs(game.Players:GetPlayers()) do 
		if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then 
			repeat task.wait()
				PunchingBags[PunchingBagCount].TouchEvent:FireServer(v.Character.HumanoidRootPart, PunchingBags[PunchingBagCount].Bag)
			until v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()[2] ~= nil
			PunchingBagCount = PunchingBagCount + 1 
			if PunchingBagCount == #PunchingBags or #PunchingBags == 1 then 
				PunchingBagCount = 1 
			end
			Library:MakeNotification({
				Name = "Eazvy Hub - Success",
				Content = "Punched " .. tostring(v.DisplayName .. " @" .. tostring(v.Name)),
				Image = "rbxassetid://4914902889",
				Time = 1.5
			})
		end
	end
end
})

Trolling:AddToggle({Name = "Loop Kill All", Default = false, Callback = function(t)
    loopKillAll = t
	if loopKillAll == true then
		local DeliveryBikes = {}
		local BikeOwner
		for _, v in pairs(game.Players:GetChildren()) do
			if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
				local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
				if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
					BikeOwner = v
					table.insert(DeliveryBikes, DeliveryBike.CleanupBike)
				end
			end
		end

		if #DeliveryBikes == 0 then
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "No Delivery Bikes Found!",
				Image = "rbxassetid://161551681",
				Time = 3
			})
			return
		end

		Library:MakeNotification({
			Name = "Eazvy Hub - Success",
			Content = "Loop Kill All Enabled",
			Image = "rbxassetid://4914902889",
			Time = 1.5
		})

		while loopKillAll == true do task.wait()
			for _, v in pairs(game.Players:GetChildren()) do
				if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
					local Bike = DeliveryBikes[math.random(1, #DeliveryBikes)]
					if v ~= BikeOwner then
						task.spawn(function() 
							Bike.Parent.CleanupBike:InvokeServer(v.Character, v.Character.HumanoidRootPart)
							for _, part in pairs(v.Character:GetChildren()) do
								if part:IsA("Accessory") or part:IsA("Tool") then
									Bike:InvokeServer(part, workspace.OceanWater)
								end
							end
						end)
					end
				end
			end
		end
	end 
end})

Trolling:AddToggle({Name = "Loop Freeze All", Default = false, Callback = function(t)
    local loopFreezeAll = t
    while loopFreezeAll == true do task.wait()
        local DeliveryBikes = {}
        for _, v in pairs(game.Players:GetChildren()) do
            if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
                local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
                if DeliveryBike and DeliveryBike:FindFirstChild("CreateBike") then
                    table.insert(DeliveryBikes, DeliveryBike.CreateBike)
                end
            end
        end

        if #DeliveryBikes > 0 then
            for _, player in pairs(game.Players:GetChildren()) do
                if player.Character then
                    local Bike = DeliveryBikes[math.random(1, #DeliveryBikes)]
                    task.spawn(function() 
						for _, part in pairs(player.Character:GetChildren()) do
							if part:IsA("BasePart") then
								Bike:InvokeServer(Bike.Parent, part)
							end
						end
					end)
                end
            end
        end
        task.wait(2)
    end
end})


Trolling:AddToggle({Name = "Loop Punch All",Default = false,Callback = function(t)
	LoopPunch = t 
	if LoopPunch == true then 
		local PunchingBag = GetPunchingBag()
		local PunchingBags = {}
		local PunchingBagCount = 1 
		for x,d in pairs(PunchingBag.Parent:GetChildren()) do 
			if d:IsA("Model") and d.Name:match("Punching") and d:FindFirstChild("TouchEvent") ~= nil then 
				table.insert(PunchingBags, d)
			end
		end
		while LoopPunch == true do wait()
			Library:MakeNotification({
				Name = "Eazvy Hub - Success",
				Content = "Loop Punch All Enabled",
				Image = "rbxassetid://4914902889",
				Time = 1.5
			})
			for i,v in pairs(game.Players:GetPlayers()) do 
				if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then 
					repeat task.wait()
						PunchingBags[PunchingBagCount].TouchEvent:FireServer(v.Character.HumanoidRootPart, PunchingBags[PunchingBagCount].Bag)
					until v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()[2] ~= nil
					PunchingBagCount = PunchingBagCount + 1 
					if PunchingBagCount == #PunchingBags or #PunchingBags == 1 then 
						PunchingBagCount = 1 
					end
				end
			end
		end 
	end
end
})


local Section = Trolling:AddSection({
    Name = "// Spawning //"
})


Trolling:AddDropdown({Name = "Select Room",Default="",Options={"Cashier", "Cook", "Pizza Boxer", "Supplier"},Callback = function(s)
	Settings.SelectedRoom = tostring(s)
end
})

Trolling:AddToggle({Name = "Flood Room",Default = false,Callback = function(t)
	Settings.FloodRoom = t 
	if not Settings.SelectedRoom then return end 
	if #workspace.AllSupplyBoxes:GetChildren() >= 75 and Settings.FloodRoom then 
		Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "There's more than 75 Blocks already spawned! Failed due to server-limit.",
            Image = "rbxassetid://161551681",
            Time = 3
        })
        return
	end
	if Settings.FloodRoom then 
		local FloodCount = 0 
		local FloodParts = {}
		local TeleportLocation
		if Settings.SelectedRoom == "Cashier" then 
			TeleportLocation = CFrame.new(48, 4, 80)
		elseif Settings.SelectedRoom == "Cook" then 
			TeleportLocation = CFrame.new(42, 4, 61)
		elseif Settings.SelectedRoom == "Pizza Boxer" then 
			TeleportLocation = CFrame.new(55, 4, 31)
		elseif Settings.SelectedRoom == "Supplier" then 
			TeleportLocation = CFrame.new(8, 13, -1020)
		elseif Settings.SelectedRoom == "Delivery" then 
			TeleportLocation = CFrame.new(64, 4, -17)
		end
		Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
		task.spawn(function()
			while Settings.FloodRoom do task.wait()
				for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
					if v.Anchored == false and Settings.FloodRoom then 
						network:FireServer("UpdateProperty", v, "CFrame", TeleportLocation)
						task.wait(0.1)
					end
				end
			end 
		end)
		local supplyButtons = {}
		for i,v in ipairs(workspace.SupplyButtons:GetChildren()) do
			supplyButtons[i] = v.Unpressed
		end
		table.sort(supplyButtons,function(a,b) return a.Position.X < b.Position.X end)
		repeat wait()
			for _,btn in ipairs(supplyButtons) do
				if Settings.FloodRoom then 
					root.CFrame = CFrame.new(btn.Position + Vector3.new(0,1,0))
				end
				task.wait(0.1)
			end
			FloodCount = FloodCount + 1
		until FloodCount == 55 or  #workspace.AllSupplyBoxes:GetChildren() >= 100 or not Settings.FloodRoom
		FloodCount = 55
		Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, Settings.SelectedRoom)
	end
end    
})

Trolling:AddToggle({Name = "Flood Current Location",Default = false,Callback = function(t)
	Settings.FloodRoom = t 
	if #workspace.AllSupplyBoxes:GetChildren() >= 75 and Settings.FloodRoom then 
		Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "There's more than 75 Blocks already spawned! Failed due to server-limit.",
            Image = "rbxassetid://161551681",
            Time = 3
        })
        return
	end
	if Settings.FloodRoom then 
		local FloodCount = 0 
		local FloodParts = {}
		local LastPosition = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
		Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
		task.spawn(function()
			while Settings.FloodRoom do task.wait()
				for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
					if v.Anchored == false and Settings.FloodRoom then 
						network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(LastPosition))
						task.wait(0.1)
					end
				end
			end 
		end)
		local supplyButtons = {}
		for i,v in ipairs(workspace.SupplyButtons:GetChildren()) do
			supplyButtons[i] = v.Unpressed
		end
		table.sort(supplyButtons,function(a,b) return a.Position.X < b.Position.X end)
		repeat wait()
			for _,btn in ipairs(supplyButtons) do
				if Settings.FloodRoom then 
					game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(btn.Position + Vector3.new(0,1,0))
				end
				task.wait(0.1)
			end
			FloodCount = FloodCount + 1
		until FloodCount == 55 or  #workspace.AllSupplyBoxes:GetChildren() >= 100 or not Settings.FloodRoom
		FloodCount = 55
	end
end    
})

Trolling:AddToggle({Name = "Flood Player",Default = false,Callback = function(t)
	if not Settings.Player then return end 
	FloodPlayer = t
	local FloodCount = 0 
	local FloodParts = {}
	if FloodPlayer then 
		if #workspace.AllSupplyBoxes:GetChildren() >= 75 and Settings.FloodRoom then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "There's more than 75 Blocks already spawned! Failed due to server-limit.",
				Image = "rbxassetid://161551681",
				Time = 3
			})
			return
		end
		Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
		local supplyButtons = {}
		for i,v in ipairs(workspace.SupplyButtons:GetChildren()) do
			supplyButtons[i] = v.Unpressed
		end
		table.sort(supplyButtons,function(a,b) return a.Position.X < b.Position.X end)
		repeat wait()
			for _,btn in ipairs(supplyButtons) do
				if FloodPlayer == true then 
					game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(btn.Position + Vector3.new(0,1,0))
				end
				task.wait(.35)
			end
			FloodCount = FloodCount + 1
		until FloodCount == 55 or  #workspace.AllSupplyBoxes:GetChildren() >= 100 or not FloodPlayer
		task.spawn(function()
			while FloodPlayer == true do task.wait()
				for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
					if v.Anchored == false and FloodPlayer == true and Settings.Player and Settings.Player.Character and Settings.Player.Character:FindFirstChild("HumanoidRootPart") then 
						network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.HumanoidRootPart.Position))
						task.wait(0.1)
					end
				end
			end 
		end)
	end
end    
})


Trolling:AddButton({Name = "Clear Flood",Callback = function()
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Clearing Flood... | Make sure you are at-least 35 studs away from the Supplies you want to remove.",
		Image = "rbxassetid://4914902889",
		Time = 3
	})
	local FloodRoomCount = 0 
	while FloodRoomCount <= 85 do task.wait()
		for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
			if v.Anchored == false then 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(-191, -480, -1393))
				task.wait(.5)
				FloodRoomCount = FloodRoomCount + 1
			end
		end
	end 
end    
})



local Section = Trolling:AddSection({
    Name = "• Abuse Player"
})


Trolling:AddTextbox({Name = "Enter Player (Name)",Default = "",TextDisappear = true,Callback = function(s)
	Settings.Player = getPlayersByName(s)
	if not Settings.Player then 
		Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "Player not found! Make sure you entered the correct name.",
            Image = "rbxassetid://161551681",
            Time = 3
        })
	end
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Selected " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
		Image = "rbxassetid://4914902889",
		Time = 3
	})
end    
})

local SelectP = Trolling:AddDropdown({Name = "Select Player",Default = "",Options=getPlayers(),Callback = function(s)
    Settings.Player = game:GetService("Players"):FindFirstChild(getPlayersbyNick(s))
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Selected " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
		Image = "rbxassetid://4914902889",
		Time = 3
	})
end    
})

Trolling:AddButton({Name = "Kill", Callback = function()
    if not Settings.Player then return end
    local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetChildren()) do
        if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
            local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
            if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
                DeliveryBikeRmote = DeliveryBike.CleanupBike
                break
            end
        end
    end
    if DeliveryBikeRemote and Settings.Player.Character and Settings.Player.Character:FindFirstChild("HumanoidRootPart") then
		task.spawn(function()
			for _, part in pairs(Settings.Player.Character:GetChildren()) do
				if part:IsA("Accessory") then
					DeliveryBikeRemote.Parent.CreateBike:InvokeServer(part, workspace.OceanWater)
				end
			end
		end)
		DeliveryBikeRemote:InvokeServer(Settings.Player.Character, Settings.Player.Character.HumanoidRootPart)
        Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Killed " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
            Image = "rbxassetid://4914902889",
            Time = 1.5
        })
        return
    end
end})

Trolling:AddButton({Name = "Freeze", Callback = function()
    if not Settings.Player then return end
    local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetChildren()) do
        if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
            local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
            if DeliveryBike and DeliveryBike:FindFirstChild("CreateBike") then
                DeliveryBikeRemote = DeliveryBike.CreateBike
                break
            end
        end
    end
    if DeliveryBikeRemote and Settings.Player.Character then
        for _, part in pairs(Settings.Player.Character:GetChildren()) do
            if part:IsA("BasePart") then
                DeliveryBikeRemote:InvokeServer(DeliveryBikeRemote.Parent, part)
            end
        end
        Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Froze " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
            Image = "rbxassetid://4914902889",
            Time = 1.5
        })
        warn("Froze " .. Settings.Player.Name)
    else
        Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "No Delivery Bikes Found!",
            Image = "rbxassetid://161551681",
            Time = 3
        })
    end
end})

Trolling:AddButton({Name = "Punch",Callback = function()
	if not Settings.Player then return end 
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Punched " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
		Image = "rbxassetid://4914902889",
		Time = 3
	})
	local PunchingBag = GetPunchingBag()
	PunchingBag.TouchEvent:FireServer(Settings.Player.Character.Head, PunchingBag.Bag)
end})



-- Trolling:AddButton({Name = "Kick",Callback = function()
	-- game:GetService("TeleportService"):TeleportCancel()
-- 	if not Settings.Player then return end 
--     if Settings.Player and Settings.Player.Character:FindFirstChildOfClass("Humanoid") and Settings.Player.Character.Humanoid.Sit then 
--         Library:MakeNotification({
--             Name = "Eazvy Hub - Error",
--             Content = "Failed to Kick " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name .. " is sitting.",
--             Image = "rbxassetid://161551681",
--             Time = 3
--         })
--         return
--     end
-- 	local OriginalPos = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
-- 	local Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
-- 	if Tool and Settings.Player and not Tool:FindFirstChild("PresentCamera") then 
		-- game:GetService("TeleportService"):Teleport(10072127013,game:GetService("Players").LocalPlayer)
-- 		local hrp = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
-- 		attach(game:GetService("Players").LocalPlayer,Settings.Player)
-- 		task.wait(.35)
--         workspace.Main.ChangeFace:FireServer(game.Players.LocalPlayer.Character.Head.face, "rbxassetid://9789474866")
-- 		game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-500.241, -21.85, -543.175)
-- 		game:GetService("Players").LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = OriginalPos
-- 		game:GetService("TeleportService"):TeleportCancel()
-- 		wait(.1)
-- 		repeat task.wait() until game:GetService("Players").LocalPlayer.Character ~= nil 
-- 		workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
-- 		workspace.CurrentCamera.CameraType = "Custom"
-- 		game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0.5
-- 		game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 400
-- 		game:GetService("Players").LocalPlayer.CameraMode = "Classic"
-- 	end
-- end})


-- Trolling:AddButton({Name = "Void",Callback = function()
-- 	if not Settings.Player then return end 
--     if Settings.Player.Character.Humanoid.Sit then 
--         Library:MakeNotification({
--             Name = "Eazvy Hub - Error",
--             Content = "Failed to Bring " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name .. " is sitting.",
--             Image = "rbxassetid://161551681",
--             Time = 3
--         })
--         return
--     end
-- 	local OriginalPos = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
-- 	local Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
-- 	if Tool and Settings.Player and not Tool:FindFirstChild("PresentCamera") then 
-- 		local hrp = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		-- game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4924605743, "Head")
        -- game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11101107966, "HatAccessory")
        -- -- game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4794183296, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11213075009, "HatAccessory")
-- 		attach(game:GetService("Players").LocalPlayer,Settings.Player)
--         workspace.Main.ChangeFace:FireServer(game.Players.LocalPlayer.Character.Head.face, "rbxassetid://9789474866")
-- 		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4924605743, "Head")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11101107966, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4794183296, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11213075009, "HatAccessory")
-- 		game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9e9,9e9,9e9)
-- 		game:GetService("Players").LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = OriginalPos
-- 		for i=1,5 do task.wait()
-- 			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ResetAvatarAppearance", true)
-- 		end
-- 		Library:MakeNotification({
--             Name = "Eazvy Hub - Success",
--             Content = "Sent " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name .. " to the void.s",
--             Image = "rbxassetid://4914902889",
--             Time = 3
--         })
-- 	end
-- end})



-- local OriginalPosition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame 
--     if Settings.Player.Character.Humanoid.Sit then 
--         Library:MakeNotification({
--             Name = "Eazvy Hub - Error",
--             Content = "Failed to Skydive " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name .. " is sitting.",
--             Image = "rbxassetid://161551681",
--             Time = 3
--         })
--         return
--     end
-- 	if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("PaintBucket") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("PaintBucket") then 
--     	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 495886176)
-- 	end 
-- 	wait(.25)
-- 	task.spawn(function()
		-- game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Name = 1
        -- local h = game:GetService("Players").LocalPlayer.Character["1"]:Clone()
        -- h.Parent = game:GetService("Players").LocalPlayer.Character
        -- h.Name = "Humanoid"
        -- wait(0.1)
        -- game:GetService("Players").LocalPlayer.Character["1"]:Destroy()
        -- workspace.CurrentCamera.CameraSubject = Settings.Player.Character
        -- game:GetService("Players").LocalPlayer.Character.Animate.Disabled = true
        -- wait(0.1)
        -- game:GetService("Players").LocalPlayer.Character.Animate.Disabled = false
        -- game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType = "None"
-- 	end)
-- 	wait(.20)
-- 	local i = "PaintBucket"
--     for j, k in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
--         if k:IsA("Tool") and k.Name == i then
--             k.Parent = game:GetService("Players").LocalPlayer.Character
--         end
--     end
-- 	for i=1,6 do task.wait(.10) 
-- 		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Settings.Player.Character.HumanoidRootPart.CFrame
-- 	end
-- 	wait(.35)
-- 	for i=1,3 do task.wait(0.5)
-- 		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Settings.Player.Character.HumanoidRootPart.Position + Vector3.new(0, 50000, 0))
-- 	end 
-- 	wait(2.1)
-- 	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OriginalPosition


-- Trolling:AddButton({Name = "Skydive",Callback = function()
-- 	if not Settings.Player then return end 
--     if Settings.Player.Character.Humanoid.Sit then 
--         Library:MakeNotification({
--             Name = "Eazvy Hub - Error",
--             Content = "Failed to Skydive " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name .. " is sitting.",
--             Image = "rbxassetid://161551681",
--             Time = 3
--         })
--         return
--     end
-- 	local OriginalPos = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
-- 	local Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
-- 	if Tool and Settings.Player and not Tool:FindFirstChild("PresentCamera") then 
-- 	--    for i,v in pairs(game:GetService("Workspace").KrustyKrab:GetChildren()) do 
-- 	-- 		v:Destroy()
-- 	--    end
-- 		local hrp = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
-- 		attach(game:GetService("Players").LocalPlayer,Settings.Player)
--         workspace.Main.ChangeFace:FireServer(game.Players.LocalPlayer.Character.Head.face, "rbxassetid://9789474866")
-- 		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4924605743, "Head")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11101107966, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4794183296, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11213075009, "HatAccessory")
-- 		game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position + Vector3.new(0, 5000, 0))
-- 		game:GetService("Players").LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = OriginalPos
-- 		Library:MakeNotification({
--             Name = "Eazvy Hub - Success",
--             Content = "Skydived " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
--             Image = "rbxassetid://4914902889",
--             Time = 3
--         })
-- 		workspace.CurrentCamera:remove()
-- 		wait(.1)
-- 		repeat task.wait() until game:GetService("Players").LocalPlayer.Character ~= nil 
-- 		workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
-- 		workspace.CurrentCamera.CameraType = "Custom"
-- 		game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0.5
-- 		game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 400
-- 		game:GetService("Players").LocalPlayer.CameraMode = "Classic"
-- 		game:GetService("Players").LocalPlayer.Character.Head.Anchored = false
-- 		for i=1,5 do task.wait()
-- 			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ResetAvatarAppearance", true)
-- 		end
-- 	end
-- end})

Trolling:AddButton({Name = "Snowball",Callback = function()
	if not Settings.Player then return end 
	game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 19328185)
	wait(.55)
	local Snowball = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Snowball") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snowball")
		if not Snowball then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Purchase Snowball in the Catalog to use this.",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return
	end
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Sent Snowball to " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
		Image = "rbxassetid://4914902889",
		Time = 3
	})
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snowball") then 
		for i=1,5 do task.wait()
			game:GetService("Players").LocalPlayer.Character.Snowball.Clicked:FireServer(Vector3.new(Settings.Player.Character.Head.Position.X, Settings.Player.Character.Head.Position.Y, Settings.Player.Character.Head.Position.Z) + Vector3.new(0, .15, 0))
		end
	end 
end})

Trolling:AddButton({Name = "Goto",Callback = function()
	if not Settings.Player then return end 
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Teleported to " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
		Image = "rbxassetid://4914902889",
		Time = 3
	})
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Settings.Player.Character.HumanoidRootPart.CFrame
	return
end})

Trolling:AddButton({Name = "Goto House",Callback = function()
	if not Settings.Player then return end 
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Teleported to " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name .. " House",
		Image = "rbxassetid://4914902889",
		Time = 3
	})
	local Cur_Upg = game:GetService("Workspace").Houses[tostring(Settings.Player.House.Value)]:FindFirstChild("CurrentUpgrade").Value 
	local rotatedCFrame = CFrame.new(Cur_Upg.Doors.FrontDoorMain.DoorTouch.CFrame.Position) * CFrame.Angles(0, math.rad(90), 0)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rotatedCFrame
	return
end})


-- Trolling:AddButton({Name = "Bring",Callback = function()
-- 	if not Settings.Player then return end 
--     if Settings.Player.Character.Humanoid.Sit then 
--         Library:MakeNotification({
--             Name = "Eazvy Hub - Error",
--             Content = "Failed to Bring " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name .. " is sitting.",
--             Image = "rbxassetid://161551681",
--             Time = 3
--         })
--         return
--     end
-- 	local OriginalPos = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
-- 	local Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
-- 	if Tool and Settings.Player and not Tool:FindFirstChild("PresentCamera") then 
-- 	--    for i,v in pairs(game:GetService("Workspace").KrustyKrab:GetChildren()) do 
-- 	-- 		v:Destroy()
-- 	--    end
-- 		local hrp = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
-- 		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4924605743, "Head")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11101107966, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4794183296, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11213075009, "HatAccessory")
-- 		attach(game:GetService("Players").LocalPlayer,Settings.Player)
--         workspace.Main.ChangeFace:FireServer(game.Players.LocalPlayer.Character.Head.face, "rbxassetid://9789474866")
-- 		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4924605743, "Head")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11101107966, "HatAccessory")
--         game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 4794183296, "HatAccessory")
        -- game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LoadAvatarAsset", 11213075009, "HatAccessory")
-- 		game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = OriginalPos
-- 		game:GetService("Players").LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = OriginalPos
-- 		Library:MakeNotification({
--             Name = "Eazvy Hub - Success",
--             Content = "Bringed " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
--             Image = "rbxassetid://4914902889",
--             Time = 3
--         })
-- 		workspace.CurrentCamera:remove()
-- 		wait(.1)
-- 		repeat task.wait() until game:GetService("Players").LocalPlayer.Character ~= nil 
-- 		workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
-- 		workspace.CurrentCamera.CameraType = "Custom"
-- 		game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0.5
-- 		game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 400
-- 		game:GetService("Players").LocalPlayer.CameraMode = "Classic"
-- 		game:GetService("Players").LocalPlayer.Character.Head.Anchored = false
-- 		for i=1,5 do task.wait()
-- 			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ResetAvatarAppearance", true)
-- 		end
-- 	end
-- end})




Trolling:AddButton({Name = "View",Callback = function()
	if not Settings.Player then return end 
	game:GetService("Workspace").CurrentCamera.CameraSubject = Settings.Player.Character
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Viewing " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
		Image = "rbxassetid://4914902889",
		Time = 3
	})
	return
end})


Trolling:AddButton({Name = "Unview",Callback = function()
	if not Settings.Player then return end 
	game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character
	Library:MakeNotification({
		Name = "Eazvy Hub - Success",
		Content = "Unviewed " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
		Image = "rbxassetid://4914902889",
		Time = 3
	})
	return
end})






local Section = Trolling:AddSection({
    Name = "• Loops"
})



local XDTroll = Trolling:AddToggle({Name = "Annoy",Default = false,Callback = function(t)
    Settings.AnnoyPlayer = t
	if Settings.AnnoyPlayer and Settings.Player then 
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
			for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
			end
			for _,v in pairs(workspace.AllDough:GetChildren()) do 
				network:FireServer("SquishDough", v)
				task.wait()
				network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
				network:FireServer("AddIngredientToPizza", v,"Cheese")
				network:FireServer("AddIngredientToPizza", v,"Sausage")
				network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
			end 
		end)
		wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
			for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
				if v.Anchored == false then 
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
					task.wait()
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
				end
			end
		end)
		wait(.35)
		task.spawn(function()
			Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Boxer")
			for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "Anchored", false)
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
				end
			end
		end)
		wait(.35)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
				if v.Anchored == false then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
				end
			end
		end)
		wait(.35)
		Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
	end
    while Settings.AnnoyPlayer and Settings.Player do
        task.spawn(function()
            for _,v in pairs(workspace.AllMountainDew:GetChildren()) do 
				if Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
					task.wait(.15)
				end
			end
			for _,v in pairs(workspace.AllDough:GetChildren()) do 
				if Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("AddIngredientToPizza", v,"TomatoSauce")
					network:FireServer("AddIngredientToPizza", v,"Cheese")
					network:FireServer("AddIngredientToPizza", v,"Sausage")
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if v.BrickColor == BrickColor.new("Brick yellow") then 
						network:FireServer("SquishDough", v)
					end
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
				end
			end 
        end)
		task.spawn(function()
			for _,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do 
				if v.Anchored == false and Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end  
				end
			end
		end)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace").AllBox:GetChildren()) do 
				if v.Anchored == false and Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
				end
			end
		end)
		task.spawn(function()
			for _,v in pairs(game:GetService("Workspace").BoxingRoom:GetChildren()) do 
				if v.Anchored == false and Settings.AnnoyPlayer and Settings.Player then 
					network:FireServer("UpdateProperty", v, "CFrame", CFrame.new(Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)))
					task.wait(.15)
					if not v:FindFirstChildOfClass("BodyPosition") then 
						-- local ForceInstance = Instance.new("BodyPosition")
						-- ForceInstance.Parent = v
						-- ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						-- local bambam = Instance.new("BodyAngularVelocity")
						-- bambam.Name = "BAM BAM AHAHHAHAHHAHAH"
						-- bambam.Parent = v
						-- bambam.AngularVelocity = Vector3.new(99999,99999,99999)
						-- bambam.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
						-- bambam.P = math.huge
					end 
					if v:FindFirstChildOfClass("BodyPosition") then 
						v:FindFirstChildOfClass("BodyPosition").Position = Settings.Player.Character.Head.Position + Vector3.new(0, 1.5, 0)
					end
				end
			end
		end)
		task.wait(.35)
    end
end})

Trolling:AddToggle({Name = "Loop Kill Player", Default = false, Callback = function(t)
    LoopKill = t
    while LoopKill == true do
        local DeliveryBikeRemote
        for _, v in pairs(game.Players:GetChildren()) do
            if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
                local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
                if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
                    DeliveryBikeRemote = DeliveryBike.CleanupBike
                    break
                end
            end
        end
        if DeliveryBikeRemote and Settings.Player and Settings.Player.Character and Settings.Player.Character:FindFirstChild("HumanoidRootPart") then
            repeat
                task.wait()
				task.spawn(function()
					for _, part in pairs(Settings.Player.Character:GetChildren()) do
						if part:IsA("Accessory") then
							DeliveryBikeRemote.Parent.CreateBike:InvokeServer(part, workspace.OceanWater)
						end
					end
				end)
                DeliveryBikeRemote:InvokeServer(Settings.Player.Character, Settings.Player.Character.HumanoidRootPart)
            until not LoopKill or not Settings.Player or not Settings.Player.Character or not Settings.Player.Character:FindFirstChildOfClass("Humanoid") or Settings.Player.Character:FindFirstChildOfClass("Humanoid").Health == 0
        end
        task.wait(2)
    end
end})

Trolling:AddToggle({Name = "Loop Freeze Player", Default = false, Callback = function(t)
    LoopFreeze = t
    while LoopFreeze == true do
        local DeliveryBikeRemote
        for _, v in pairs(game.Players:GetChildren()) do
            if v and (v.Backpack or v.Character) and (v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")) then
                local DeliveryBike = v.Backpack:FindFirstChild("DeliveryBike") or v.Character:FindFirstChild("DeliveryBike")
                if DeliveryBike and DeliveryBike:FindFirstChild("CreateBike") then
                    DeliveryBikeRemote = DeliveryBike.CreateBike
                    break
                end
            end
        end
        if DeliveryBikeRemote and Settings.Player and Settings.Player.Character then
            repeat
                task.wait()
                for _, part in pairs(Settings.Player.Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        DeliveryBikeRemote:InvokeServer(DeliveryBikeRemote.Parent, part)
                    end
                end
            until not LoopFreeze or not Settings.Player or not Settings.Player.Character or not Settings.Player.Character:FindFirstChildOfClass("Humanoid") or Settings.Player.Character:FindFirstChildOfClass("Humanoid").Health == 0
        end
        task.wait(2)
    end
end})

workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
	if Settings.NoPresentAnimation and workspace.CurrentCamera.CameraSubject == Enum.CameraType.Scriptable then 
		workspace.CurrentCamera.CameraSubject = Enum.CameraType.Custom 
	end
end)

workspace.Cars.ChildAdded:Connect(function(v)
	if v:IsA("Model") and v:FindFirstChild("HoodSeat") and Settings.AntiSit then 
		v.HoodSeat.Locked = true 
		v.HoodSeat:GetPropertyChangedSignal("Locked"):Connect(function()
			if v.HoodSeat.Locked == false and Settings.AntiSit then 
				v.HoodSeat.Locked = true 
			end
		end)
	end
end)

workspace.ChildAdded:Connect(function(v)
	if v:IsA("Tool") and Settings.AutofarmToggle and Settings.doDelivery then 
		local wstools = FindAllDeliveryTools(workspace)
		for i=1,#wstools do
			if wstools[i].Parent == workspace and Settings.doDelivery then
				humanoid:EquipTool(wstools[i])
			end
		end
	end
	if v:IsA("Part") and v.Size == Vector3.new(0.4, 0.4, 0.4) then 
		v.CanCollide = false 
	end
	if v:IsA("Part") and Settings.AntiRagdoll then 
		v.CanCollide = false 
	end 
end)

Trolling:AddToggle({Name = "Loop Snowball Player",Default = false,Callback = function(t)
	LoopSnowball = t 
	if not LoopSnowball and workspace:FindFirstChild("SnowballPart") then 
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
			if v:IsA("Tool") and v.Name == "Snowball" then 
				game:GetService("ReplicatedStorage").PlayerChannel:FireServer("RemoveGear", v)
			end
		end
		return 
	end
	if LoopSnowball == true then 
		local a = Instance.new("Part",workspace)
		a.Name = "SnowballPart"
	end
	while LoopSnowball == true do task.wait()
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 19328185)
		local Snowball = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Snowball") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snowball")
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snowball") and LoopSnowball == true  then 
			for i=1,3 do task.wait()
				task.spawn(function()
					for _,v in pairs(workspace:GetChildren()) do 
						if v:IsA("Part") and v.Size == Vector3.new(0.4, 0.4, 0.4) then 
						   v.CanCollide = false 
						end
					end
				end)
				if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snowball") and LoopSnowball == true and Settings.Player.Character and Settings.Player.Character:FindFirstChild("Head")  then 
					game:GetService("Players").LocalPlayer.Character.Snowball.Clicked:FireServer(Vector3.new(Settings.Player.Character.Head.Position.X, Settings.Player.Character.Head.Position.Y, Settings.Player.Character.Head.Position.Z) + Vector3.new(0, .10, 0))
				end
			end
		end 
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("RemoveGear", Snowball)
	end		
end    
})



Trolling:AddToggle({Name = "Loop Punch Player",Default = false,Callback = function(t)
	LoopPunch = t 
	if LoopPunch == true and not GetPunchingBag() then 
		return
	end
	while LoopPunch == true do
		local PunchingBag = GetPunchingBag()
		if PunchingBag ~= nil and Settings.Player and Settings.Player.Character and Settings.Player.Character:FindFirstChild("Head") then 
			PunchingBag.TouchEvent:FireServer(Settings.Player.Character.Head, PunchingBag.Bag)
		end
		task.wait(.15)
	end		
end    
})

local Section = Trolling:AddSection({
    Name = "// Manager Related //"
})

Trolling:AddToggle({Name = "Auto-Bonus",Default = false,Callback = function(t)
	AutoPaycheck = t 
	while AutoPaycheck do task.wait()
		if AutoPaycheck == true and Settings.Player and game:GetService("Teams").Manager:GetPlayers()[1] == game:GetService("Players").LocalPlayer and Send_Data:SendData("GetCounters", "ManagerChannel", 2, game.Players.LocalPlayer).GiveBonus <= 0 then 
			game:GetService("ReplicatedStorage").ManagerChannel:FireServer("GiveBonus", Settings.Player)
			task.wait(10 * 60)
		end
	end
end})

Trolling:AddToggle({Name = "Auto-Employee of the Day",Default = false,Callback = function(t)
	AutoPaycheck = t 
	while AutoPaycheck do task.wait()
		if AutoPaycheck == true and Settings.Player and game:GetService("Teams").Manager:GetPlayers()[1] == game:GetService("Players").LocalPlayer and Send_Data:SendData("GetCounters", "ManagerChannel", 2, game.Players.LocalPlayer).EmployeeOfTheDay <= 0 then 
			game:GetService("ReplicatedStorage").ManagerChannel:FireServer("EmployeeOfTheDay", Settings.Player)
			task.wait(15 * 60)
		end
	end
end})

Trolling:AddButton({Name = "Vote-Kick",Callback = function()
	if Settings.Player and game:GetService("Teams").Manager:GetPlayers()[1] == game:GetService("Players").LocalPlayer and Send_Data:SendData("GetCounters", "ManagerChannel", 2, game.Players.LocalPlayer).NominateForBan <= 0 then 
		game:GetService("ReplicatedStorage").ManagerChannel:FireServer("NominateForBan", Settings.Player)
	end
end})

Trolling:AddButton({Name = "Put Back to Work",Callback = function()
	if Settings.Player and game:GetService("Teams").Manager:GetPlayers()[1] == game:GetService("Players").LocalPlayer and Send_Data:SendData("GetCounters", "ManagerChannel", 2, game.Players.LocalPlayer).BackToWork <= 0 then 
		game:GetService("ReplicatedStorage").ManagerChannel:FireServer("BackToWork", Settings.Player)
	end
end})

Trolling:AddButton({Name = "Quit My Job",Callback = function()
	if game:GetService("Teams").Manager:GetPlayers()[1] == game:GetService("Players").LocalPlayer then 
		Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
	end
end})

Trolling:AddButton({Name = "Remove Manager",Callback = function()
    Player_S = GetManager()
    if not Player_S or game:GetService('Players').LocalPlayer.Team.Name == "Manager" then 
        Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "There's no manager currently or you're currently the manager.",
            Image = "rbxassetid://161551681",
            Time = 3
        })
        return
    end
    if Player_S.Character.Humanoid.Sit then 
        Library:MakeNotification({
            Name = "Eazvy Hub - Error",
            Content = "Failed to Remove " .. Player_S.DisplayName .. " @" .. Player_S.Name .. " is currently sitting.",
            Image = "rbxassetid://161551681",
            Time = 3
        })
        return
    end
    local Vehicle = GetVehicle()
    local LastPosition = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position 
    if Vehicle.Occupant ~= nil then 
        Vehicle = GetVehicle()
    end 
    repeat
        wait()
		Vehicle.ClickDetector.Detector:FireServer()
    until Vehicle.Occupant == game:GetService('Players').LocalPlayer.Character.Humanoid or game:GetService('Players').LocalPlayer.Character.HumanoidRootPart == nil 
    wait(.15)
    task.spawn(function()
        repeat 
            wait()
            TP(GetCurrentVehicle().PrimaryPart, CFrame.new(Player_S.Character:FindFirstChild("HumanoidRootPart").Position + Vector3.new(0, -2, 5)))
        until Vehicle.Parent:FindFirstChild("HoodSeat").Occupant == Player_S.Character.Humanoid or game:GetService('Players').LocalPlayer.Character.HumanoidRootPart == nil
        repeat wait()
            TP(GetCurrentVehicle().PrimaryPart, CFrame.new(game:GetService("Workspace")["Remove Manager"].Head.Position + Vector3.new(0, -4, 5)))
        until not GetManager() or not GetCurrentVehicle() or not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        wait(.35)
        game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true 
        wait(.5)
        repeat wait()
		workspace.ManagerChair:FindFirstChildOfClass("Seat"):Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
        until game:GetService('Players').LocalPlayer.Character.Humanoid.Sit 
        Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Removed " .. Player_S.DisplayName .. " @" .. Player_S.Name .. " from being manager.",
            Image = "rbxassetid://4914902889",
            Time = 3
        })
    end) 
end    
})




Trolling:AddButton({Name = "Remove Manager Door",Callback = function()
	if game:GetService("Workspace").PizzaPlaceDoors:FindFirstChild("ManagerDoor") then 
		game:GetService("Workspace").PizzaPlaceDoors:FindFirstChild("ManagerDoor"):Destroy()
	end
end    
})

local Section = Trolling:AddSection({
    Name = "// Doors + Unanchored //"
})


Trolling:AddToggle({Name = "Unanchor Trees/Mailboxes",Default = false,Callback = function(t)
	Trees = t 
	while Trees == true do task.wait()
		for j,k in pairs(game.Workspace.Trees:GetChildren()) do
			if k.Name == "Tree" or k.Name == "DeadTree" and Trees == true then
				workspace.Main.UprootTree:FireServer(k)
			end
		end
		for i,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Mailbox") then 
				workspace.Main.KnockMailbox:FireServer(v)
			end
		end
	end
end})



Trolling:AddButton({Name = "Bring Unanchored",Callback = function()
	local F = {}
	local G = {}
	for H, I in pairs(workspace:GetDescendants()) do
		if
			game.Players.LocalPlayer.Character:FindFirstChild("Head") and
				I:IsA("BasePart" or "UnionOperation" or "Model") and
				I.Anchored == false and
				not I:IsDescendantOf(game.Players.LocalPlayer.Character) and
				I.Name == "Torso" == false and
				I.Name == "Head" == false and
				I.Name == "Right Arm" == false and
				I.Name == "Left Arm" == false and
				I.Name == "Right Leg" == false and
				I.Name == "Left Leg" == false and
				I.Name == "HumanoidRootPart" == false
		 then
			for j, w in pairs(I:GetChildren()) do
				if w:IsA("BodyPosition") or w:IsA("BodyGyro") then
					w:Destroy()
				end
			end
			local J = Instance.new("BodyPosition")
			J.Parent = I
			J.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			table.insert(F, J)
			if not table.find(G, I) then
				table.insert(G, I)
			end
		end
	end
	for j, w in pairs(F) do
		w.Position = game.Players.LocalPlayer.Character.Head.Position
	end
	wait(1)
    for j, k in pairs(G) do
        for j, w in pairs(k:GetChildren()) do
            if w:IsA("BodyPosition") or w:IsA("BodyGyro") then
                w:Destroy()
            end
        end
    end
    G = {}
end})

Trolling:AddToggle({Name = "Loop Bring Unanchored",Default = false,Callback = function(t)
	LoopBring = t 
	local AlreadyDone = false 
	while LoopBring == true do
		local Forces = {}
		for _,part in pairs(workspace:GetDescendants()) do
			if LoopBring == true and game:GetService("Players").LocalPlayer.Character:FindFirstChild('Head') and part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and not part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false then
				for i,c in pairs(part:GetChildren()) do
					if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
						c:Destroy()
					end
				end
				local ForceInstance = Instance.new("BodyPosition")
				ForceInstance.Parent = part
				ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				table.insert(Forces, ForceInstance)
			end
		end
		for i,c in pairs(Forces) do
			c.Position = game:GetService("Players").LocalPlayer.Character.Head.Position
		end
		task.wait(2.5)
	end 
end})

Trolling:AddToggle({Name = "Spam Oven Doors",Default = false,Callback = function(t)
    Settings.SpamDoors = t 
    while Settings.SpamDoors do wait()
        for _,v in pairs(workspace.Ovens:GetChildren()) do 
            if v.Name == "Oven" and v:FindFirstChild("Door") then 
                v.Door.ClickDetector.Detector:FireServer()
                wait(.25)
            end
        end
    end
end})


Trolling:AddToggle({Name = "Loop Toggle Doors",Default = false,Callback = function(t)
	Settings.LoopDoors = t 
	if Settings.LoopDoors and game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then 
		local Doors = {}
		for _,v in pairs(game:GetService("Workspace").PizzaPlaceDoors:GetDescendants()) do 
			if v:IsA("Part") and v.Name == "DoorTouch" and Settings.LoopDoors then 
				table.insert(Doors, v)
			end
		end
		while Settings.LoopDoors do
			task.spawn(function()
				for i,v in pairs(Doors) do 
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 1)
				end
			end)
			for _,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v:IsA("Part") and v.Name == "Gate" and v:FindFirstChild("ClickDetector") then 
					v:FindFirstChild("ClickDetector").Detector:FireServer()
				end
			end
			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").PizzaPlaceDoors.ManagerDoor.DoorTouch, 0)
			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").PizzaPlaceDoors.ManagerDoor.DoorTouch, 1)
			if game:GetService("Workspace"):FindFirstChild("DriveThroughWindow") then 
				game:GetService("Workspace"):FindFirstChild("DriveThroughWindow").ClickDetector.Detector:FireServer()
			end
			if game:GetService("Workspace"):FindFirstChild("Extinguisher") then 
				game:GetService("Workspace").Extinguisher.Door.ClickDetector.Detector:FireServer()
			end
			if workspace:FindFirstChild("Drawer") and workspace.Drawer:FindFirstChild("ClickDetector") then 
				workspace.Drawer.ClickDetector.Detector:FireServer()
			end 
			wait(3)
		end
	end
end    
})



function FindFirstCustomer()
	local children = workspace.Customers:GetChildren()
	for i=1,#children do
		local c = children[i]
		if ffc(c,"Head") and ffc(c,"Humanoid") and c.Head.CFrame.Z<1000 and ffc(c.Head,"Dialog") and ffc(c.Head.Dialog,"Correct") and ((c.Humanoid.SeatPart and c.Humanoid.SeatPart.Anchored) or (c.Humanoid.SeatPart==nil and (c.Head.Velocity.Z^2)^.5<.0001)) then
			local dialog = c.Head.Dialog.Correct.ResponseDialog or ''
			local order = "MountainDew"
			if dialog:sub(-8)=="instead." then
				dialog = dialog:sub(-30)
			end
			if dialog:find("pepperoni",1,true) then
				order = "PepperoniPizza"
			elseif dialog:find("sausage",1,true) then
				order = "SausagePizza"
			elseif dialog:find("cheese",1,true) then
				order = "CheesePizza"
			end
			return c,order
		end
	end
end




Trolling:AddToggle({Name = "Spam Wrong Orders",Default = false,Callback = function(t)
	WrongOrders = t 
	while WrongOrders == true do wait()
		for zz=1,3 do
			local c,order = FindFirstCustomer()
			if c and order then
				network:FireServer("OrderComplete", c, "I'll take your order and then I'll eat your food", workspace["Register"..zz])
				task.wait(3)
			end
		end
	end
end})

local Section = Trolling:AddSection({
    Name = "• LocalPlayer Related"
})



Trolling:AddToggle({Name = "Guitar Earrape",Default = false,Callback = function(t)
	Settings.SpamChat = t 
	if not game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Torso") then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Failed to Earrape! Switch to R6.",
			Image = "rbxassetid://161551681",
			Time = 5
		})	
		return
	end
	if Settings.SpamChat then 
		local Keys = {"z", "x", "c", "v", "b", "n", "m" }
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 193771176)
		wait(.55)
		local Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rockin' Pink Guitar") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rockin' Pink Guitar")
		if Tool == nil then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Purchase the Rockin' Pink Guitar in the Catalog to use this.",
				Image = "rbxassetid://161551681",
				Time = 3
			})		
			return
		else 
			Tool.Parent = Players.LocalPlayer.Character 
			wait(.35)
			if not mouse1click then 
				game:GetService("VirtualInputManager"):SendMouseButtonEvent(500, 500, 0, true, game, 1)
			else 
				mouse1click()
			end
		end
		while Settings.SpamChat do task.wait()
			game:GetService('Players').LocalPlayer.Character:FindFirstChild("Rockin' Pink Guitar").ServerControl:InvokeServer("Strike", {['Value']=true})
			for i,v in pairs(Keys) do 
				game:GetService('Players').LocalPlayer.Character:FindFirstChild("Rockin' Pink Guitar").ServerControl:InvokeServer("KeyPress", {Key=v, Down=true})
			end
		end
	end
end    
})

local UnicornAura = Trolling:AddToggle({Name = "Fluffy Unicorn Aura",Default = false,Callback = function(t)
	Settings.UnicornAura = t 
	Settings.UnicornAura = t 
	if Settings.UnicornAura then 
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 84012460)
		wait(.55)
		local Unicorn = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fluffy Unicorn") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fluffy Unicorn")
		if Unicorn == nil then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Purchase Fluffy Unicorn in the Catalog to use this.",
				Image = "rbxassetid://161551681",
				Time = 3
			})
			return
		else 
			local UnicornNum = 0 
			game:GetService("CoreGui").Orion.Enabled = false
			while Settings.UnicornAura do wait()
				game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 84012460)
				
				if not mouse1click then 
					game:GetService("VirtualInputManager"):SendMouseButtonEvent(500, 500, 0, true, game, 1)
				else 
					mouse1click()
				end
				UnicornNum = UnicornNum + 1 
				if UnicornNum == 350 then 
					Settings.UnicornAura = false 
					for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do 
						if v:IsA("Tool") and v.Name == "Fluffy Unicorn" then 
							game:GetService("ReplicatedStorage").PlayerChannel:FireServer("RemoveGear", v)
						end
					end
					if game:GetService("CoreGui"):FindFirstChild("Orion") then 
						game:GetService("CoreGui").Orion.Enabled = true
					end
					return
				end
				task.defer(function()
					task.wait(0.25)
					for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do 
						if v:IsA("Tool") and v.Name == "Fluffy Unicorn" and Settings.UnicornAura then 
							game:GetService("ReplicatedStorage").PlayerChannel:FireServer("RemoveGear", game:GetService("Players").Backpack['Fluffy Unicorn'])
						end
					end
				end)
			end
		end
	end
end    
})



Trolling:AddToggle({Name = "Snowball Aura",Default = false,Callback = function(t)
	Settings.SnowballAura = t 
	if Settings.SnowballAura then 
		game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 19328185)
		wait(.55)
		local Snowball = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Snowball") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snowball")
		if not Snowball then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Purchase Snowball in the Catalog to use this.",
				Image = "rbxassetid://161551681",
				Time = 3
			})
			return
		end

		while Settings.SnowballAura do task.wait()
			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem", 19328185)
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Snowball") and Settings.SnowballAura then
				game:GetService("Players").LocalPlayer.Character.Snowball.Clicked:FireServer(Vector3.new(game.Players.LocalPlayer.Character.Head.Position.X, game.Players.LocalPlayer.Character.Head.Position.Y, game.Players.LocalPlayer.Character.Head.Position.Z) + Vector3.new(0, .13, 0))
				task.defer(function()
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
					if v:IsA("Tool") and v.Name == "Snowball" and Settings.SnowballAura then 
						game:GetService("ReplicatedStorage").PlayerChannel:FireServer("RemoveGear", v)
						task.wait(0.2)
					end
					end
				end)
			end 
		end
	end
end    
})


Trolling:AddToggle({Name = "Spam Teams",Default = false,Callback = function(t)
	Settings.SpamTeams = t 
	while Settings.SpamTeams do wait()
		for i,v in pairs(TeamNames) do 
			game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ChangeJob", tostring(v))
			wait(.02)
		end
	end 
end})


LP:AddDropdown({Name = "Change Job",Default = "",Options=TeamNames,Callback = function(s)
	if s == "" then return end
    game:GetService("ReplicatedStorage").PlayerChannel:FireServer("ChangeJob", s)
	if s == "Manager" then 
		if not game:GetService("Teams").Manager:GetPlayers()[1] then 
			workspace.ManagerChair:FindFirstChildOfClass("Seat"):Sit(game:GetService("Players").LocalPlayer.Character.Humanoid)
		else 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "There's a manager currenty. Failed to switch Teams!",
				Image = "rbxassetid://161551681",
				Time = 3
			})
		end
	end
end    
})

LP:AddDropdown({Name = "Change Morph",Default = "",Options={"Dog","Rat","Gubby"},Callback = function(s)
	if s == "" then return end
    network:FireServer("Morph", s)
	Library:MakeNotification({
    	Name = "Eazvy Hub - Success",
    	Content = "Changed Morph to " .. s .. ".",
    	Image = "rbxassetid://4914902889",
    	Time = 3
    })
	return 
end    
})



local defSpeed = 16 
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then 
	defSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed 
end

LP:AddSlider({Name = "Walkspeed",Min = defSpeed,Max = 250,Default=defSpeed,Color = Color3.fromRGB(0, 128, 255),Increment = 1,ValueName = "",Callback = function(s)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = s
end    
})


LP:AddSlider({Name = "Jumppower",Min = 50,Max = 550,Default = 50,Color = Color3.fromRGB(0, 191, 255),Increment = 1,ValueName = "",Callback = function(s)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = s
end})

LP:AddSlider({Name = "Fly Speed",Min =1,Max=500,Default = 50,Color = Color3.fromRGB(0, 128, 255),Increment = 1,ValueName = "",Callback = function(s)
    Settings.FlySpeed = s
end})


LP:AddToggle({Name = "Fly",Default = false,Callback = function(t)
    Fly = t 
    if Fly then 
        StartFly();
    else 
        EndFly();
    end
end})

LP:AddToggle({Name = "Noclip",Default = false,Callback = function(t)
    Settings.NoClip = t 
    function noClip()
        if Settings.NoClip and game:GetService("Players").LocalPlayer.Character ~= nil then 
            for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do 
                if child:IsA('BasePart') and child.CanCollide and Settings.NoClip then 
                    child.CanCollide = false 
                end
            end
        end
    end 
    Noclipping = game:GetService("RunService").Stepped:Connect(noClip) 
end})


LP:AddToggle({Name = "Anti-Slow",Default = false,Callback = function(t)
	Settings.AntiSlow = t 
	if Settings.AntiSlow then
		if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0  then 
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		end
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed:GetPropertyChangedSignal("Value"):Connect(function()
			if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0  and Settings.AntiSlow then 
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end
		end) 
	end 
end})	


LP:AddToggle({Name = "Anti-Sit",Default = false,Callback = function(t)
	Settings.AntiSit = t 
	if Settings.AntiSit then 
		for _,v in pairs(workspace.Cars:GetChildren()) do 
			if v:FindFirstChild("HoodSeat") and Settings.AntiSit then 
			    v.HoodSeat.Locked = true 
				v.HoodSeat:GetPropertyChangedSignal("Locked"):Connect(function()
					if Settings.AntiSit then 
						v.HoodSeat.Locked = true 
					end
				end)
			end 
		end
	end
end})


local xdparts = {}


LP:AddToggle({
    Name = "Xray",
    Default = false,
    Callback = function(t)
        if t == true then
            local xrayPart = Instance.new("Part", workspace)
            xrayPart.Name = "Xray"
			for _, v in pairs(game.Workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name:match("Flap") or v.Name == "Hole" or v.Name == "Hole2" or v.Name == "Collector" or v.Name == "SupplyLift" or v.Name == "SupplyLift2" or v.Name:match("WallPizzaPlaceRemove") or v.Name:match("WallPizzaPlaceTransparent") or v.Name == "ExtraChair" or v.Name == "ManagerChair" then
                    v.Parent = game.ReplicatedStorage
                elseif v:IsA("Model") and v.Name == "Trash" and v:FindFirstChild("Delete") or v.Name == "Locker2" or v.Name == "Tuber" or v.Name == "Locker1" or v.Name == "SupplyRoof" then
                    v.Parent = game.ReplicatedStorage
				elseif v.Name:match("WallPizzaPlace") then 
					v.Parent = game.ReplicatedStorage
				elseif v:IsA("MeshPart") then 
					v.Transparency = v.Transparency + 0.65
					xdparts[v] = v.CanCollide
                    v.CanCollide = false
                end
            end


            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("BasePart") and v.Name ~= "DoorTouch" and v.Name ~= "Street" and v.Name ~= "Floor" and v.Name ~= "Wood" and v.Name ~= "BasePlate" and v.Name ~= "Beach" and v.Name ~= "DoorTouch" and v.Parent.Name ~= "CornMaze" and v.Parent.Parent.Name ~= "CornMaze" and not v.Name:match("Door") and not v.Parent.Name:match("Door") and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChildOfClass("VehicleSeat") and v.Parent.Name ~= "Dock" and v.Parent.Parent.Name ~= "Pets" then
                    v.Transparency = v.Transparency + 0.65
					xdparts[v] = v.CanCollide
                    v.CanCollide = false
				elseif v.Name:match("WallPizzaPlace") then
					v.Parent = game.ReplicatedStorage
                elseif v:IsA("BasePart") and v.Parent.Name == "PresentTable" and v.Parent.Name ~= "Dock" and v.Parent.Name ~= "Pets" then
                    v.Transparency = v.Transparency + 0.65
					xdparts[v] = v.CanCollide
                    v.CanCollide = false
                elseif v:IsA("BasePart") and v.Parent.Name == "Chair" and v.Parent.Name ~= "Dock" and v.Parent.Name ~= "Pets" then
                    v.Transparency = v.Transparency + 0.65
					xdparts[v] = v.CanCollide
                    v.CanCollide = false
                elseif v:IsA("BasePart") and v.Parent.Parent.Name == "Extinguisher" and v.Parent.Name ~= "Dock" and v.Parent.Name ~= "Pets" and v.Parent.Parent.Name ~= "Oven" then
                    v.Transparency = v.Transparency + 0.65
					xdparts[v] = v.CanCollide
                    v.CanCollide = false
                elseif v:IsA("BasePart") and v.Parent.Parent.Name == "Tables" and v.Parent.Name ~= "Dock" and v.Parent.Name ~= "Pets" and v.Parent.Parent.Name ~= "Oven" then
                    v.Transparency = v.Transparency + 0.65
					xdparts[v] = v.CanCollide
                    v.CanCollide = false
                elseif v:IsA("BasePart") and v.Name == "Window" then
                    v.Parent = game.ReplicatedStorage
				elseif v:IsA("Model") and v.Name == "Trash" and v:FindFirstChild("Delete") or v.Name == "Locker2" or v.Name == "Tuber" or v.Name == "Locker1" or v.Name == "SupplyRoof" then
                    v.Parent = game.ReplicatedStorage
				elseif v.Name == "ManagerDoor" then 
					v.Parent = game.ReplicatedStorage
                elseif v:IsA("BasePart") and (v.Parent.Name == "Oven" or v.Parent.Name == "Door_Closed" or v.Parent.Parent.Name == "Oven") then
                    v.Transparency = v.Transparency + 0.65
					xdparts[v] = v.CanCollide
                    v.CanCollide = false
                    -- if v.Parent.Name == "Door_Closed" then
                    --     v.Parent = game.ReplicatedStorage
                    -- end
                end
            end

            local xrayPart = Instance.new("Part", workspace)
            xrayPart.Name = "XrayPart"
        elseif workspace:FindFirstChild("XrayPart") then
            for _, v in pairs(game.ReplicatedStorage:GetChildren()) do
                if v:IsA("BasePart") and v.Name:match("Flap") or v.Name == "Hole" or v.Name == "Hole2" or v.Name == "Collector" then
                    v.Parent = workspace
                elseif v:IsA("BasePart") and v.Name == "Window" then
                    v.Parent = workspace
                elseif v:IsA("Model") and v.Name == "Trash" and v:FindFirstChild("Delete") or v.Name == "Locker2" or v.Name == "Tuber" or v.Name == "Locker1" or v.Name == "Door_Closed" or v.Name == "ExtraChair" or v.Name == "ManagerChair" then
                    v.Parent = workspace
				elseif v.Name:match("WallPizzaPlace") then 
					v.Parent = workspace
				elseif v.Name == "ManagerDoor" then 
					v.Parent = workspace.PizzaPlaceDoors
                end
            end

            if workspace:FindFirstChild("Xray") then
                workspace:FindFirstChild("Xray"):Destroy()
				for i,v in pairs(xdparts) do 
					i.CanCollide = v 
					i.Transparency = i.Transparency - 0.65
				end
				table.clear(xdparts)
            end
        end
    end
})






local Section = LP:AddSection({
    Name = "// LocalPlayer Unlock //"
})

LP:AddButton({Name ="Unlock all Emotes",Callback = function()
	local v8 = require(game.Players.LocalPlayer.PlayerGui:WaitForChild("GuiManager"));
	local v20 = v8:RegisterListView(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Emotions, game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Emotions.ScrollingFrame.List);
	v20:UpdateData(AllEmotes, game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Emotions.Template, getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Emotions.Emotions).ListDisplayFunction)
end    
})

LP:AddButton({Name ="Unlock Rat Hideout",Callback = function()
	if game.Players.LocalPlayer.Character then 
	   game.Players.LocalPlayer.Character:SetAttribute("CharacterType","Rat")
	end
end    
})



LP:AddButton({Name ="Get Hang Glider",Callback = function()
	local Hang 
	for _,v in pairs(game:GetService("Players"):GetPlayers()) do 
		if v ~= game:GetService('Players').LocalPlayer and v.Backpack:FindFirstChild("HangGlider") then 
			local HangGlider = v.Backpack:FindFirstChild("HangGlider")
			local Clone = HangGlider:Clone()
			Clone.Parent = game:GetService("Players").LocalPlayer.Backpack 
			Hang = true 
			return
		elseif v~= game:GetService("Players").LocalPlayer and v.Character:FindFirstChild("HangGlider") and not Hang then 
			local Clone =  v.Character:FindFirstChild("HangGlider"):Clone()
			Clone.Parent = game:GetService("Players").LocalPlayer.Backpack 
			Hang = true 
		end
	end	
	if Hang then
		Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Added Hang Glider to your Backpack!",
            Image = "rbxassetid://4914902889",
            Time = 5
        })
		return
	end
	if not Hang then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Nobody in the game has HangGlider gamepass.",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
end    
})

LP:AddButton({Name ="Get Delivery Bike",Callback = function()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("DeliveryBike") then 
		CheckBikes()
	end
	local FoundBike 
	for _,v in pairs(game:GetService("Players"):GetChildren()) do 
		if v ~= game:GetService("Players").LocalPlayer and v.Backpack:FindFirstChild("DeliveryBike") and not FoundBike then 
			local DeliveryBike =  v.Backpack:FindFirstChild("DeliveryBike"):Clone()
			DeliveryBike.Parent = game:GetService("Players").LocalPlayer.Backpack 
			DeliveryBike.Equipped:Connect(function() 
				DeliveryBike.CreateBike:InvokeServer(DeliveryBike, game.Players.LocalPlayer.Character.Head)
			end)
			FoundBike = true 
		end
	end
	if FoundBike then
		Library:MakeNotification({
            Name = "Eazvy Hub - Success",
            Content = "Added Delivery Bike to your Backpack!",
            Image = "rbxassetid://4914902889",
            Time = 5
        })
		return
	end
	if not FoundBike then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Error",
			Content = "Nobody in the game has Delivery Bike gamepass.",
			Image = "rbxassetid://161551681",
			Time = 3
		})
		return 
	end
end    
})


LP:AddButton({Name ="Get Fire Extinguisher",Callback = function()
	workspace.Extinguisher.Extinguisher.ClickDetector.Detector:FireServer()
end    
})

if game:GetService("ReplicatedStorage").GlobalData:FindFirstChild("Season") and game:GetService("ReplicatedStorage").GlobalData:FindFirstChild("Season").Value == "Fall" then 
	LP:AddButton({Name ="Get Trophy",Callback = function()
		local Trophy 
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
			if v:IsA("Folder") and v:FindFirstChild("Trophy") or v:IsA("Model") and v:FindFirstChild("Trophy") then 
				Trophy = v:FindFirstChild("Trophy")
			end
		end
		if not Trophy then 
			Library:MakeNotification({
				Name = "Eazvy Hub - Error",
				Content = "Failed to find Trophy...",
				Image = "rbxassetid://161551681",
				Time = 3
			})
		else 
			if Trophy:FindFirstChild("Touching") then 
				firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, Trophy:FindFirstChild("Touching"), 0)
				firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, Trophy:FindFirstChild("Touching"), 1)
			end
		end
	end})

	LP:AddButton({Name ="Get Corn-Maze Chests",Callback = function()
		for i=1,15 do task.wait()
			for i,v in pairs(game:GetService("Workspace").CornMaze.Chests:GetChildren()) do 
				if v:FindFirstChild("Touch") then 
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("Touch"), 0)
					firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("Touch"), 1)
					wait(3)
				end
			end		
		end
	end})
end 

local Section = LP:AddSection({
    Name = "// LocalPlayer Extra //"
})

LP:AddDropdown({Name = "Select Emote",Default = "",Options=EmoteNames,Callback = function(s)
	Settings.SelectedEmote = s
	end    
})

LP:AddButton({Name ="Play Emote",Callback = function()
	local FixedEmoji = FixEmoji(Settings.SelectedEmote)
	network:FireServer("EmotePlayed", FixedEmoji)
	game.Workspace.Animation.PlayAnimation.PlayAnimation:Fire(FixedEmoji, 0.3)
	if EmotesData[FixedEmoji] then
		getrenv()._G.Chat(EmotesData[FixedEmoji], false, false)
	end
end    
})

LP:AddToggle({Name="Loop Emote",Default=false,Callback=function(t)
	Settings.LoopEmote = t  
	while Settings.LoopEmote do
		local FixedEmoji = FixEmoji(Settings.SelectedEmote)
		if Settings.SelectedEmote then  
			game.Workspace.Animation.PlayAnimation.PlayAnimation:Fire(FixedEmoji, 0.3)
			if EmotesData[FixedEmoji] then
				getrenv()._G.Chat(EmotesData[FixedEmoji], false, false)
			end
			task.wait(3)
		end 
	end
end})


LP:AddToggle({Name="Anti-Ragdoll",Default=false,Callback=function(t)
	Settings.AntiRagdoll = t 
end})

local PPFarm = false 
LP:AddToggle({
    Name = "Anti-Vote",
    Default = false,
    Callback = function(t)
        Settings.AntiKick = t
		if Settings.AntiKick then 
			local ScriptStarted = false
			local Transparency = true 

			local Player = game:GetService("Players").LocalPlayer
			local RealCharacter = Player.Character or Player.CharacterAdded:Wait()

			local IsInvisible = false

			RealCharacter.Archivable = true
			local FakeCharacter = RealCharacter:Clone()
			local Part
			Part = Instance.new("Part", workspace)
			Part.Anchored = true
			Part.Size = Vector3.new(200, 1, 200)
			Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
			Part.CanCollide = true
			FakeCharacter.Parent = workspace
			FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

			for i, v in pairs(RealCharacter:GetChildren()) do
				if v:IsA("LocalScript") then
					local clone = v:Clone()
					clone.Disabled = true
					clone.Parent = FakeCharacter
				end
			end

			if Transparency then
				for i, v in pairs(FakeCharacter:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Transparency = 0.7
					end
				end
			end

			local CanInvis = true

			function RealCharacterDied()
				CanInvis = false
				RealCharacter:Destroy()
				RealCharacter = Player.Character
				CanInvis = true
				IsInvisible = false
				FakeCharacter:Destroy()
				workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid

				RealCharacter.Archivable = true
				FakeCharacter = RealCharacter:Clone()
				Part:Destroy()
				Part = Instance.new("Part", workspace)
				Part.Anchored = true
				Part.Size = Vector3.new(200, 1, 200)
				Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
				Part.CanCollide = true
				FakeCharacter.Parent = workspace
				FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

				for i, v in pairs(RealCharacter:GetChildren()) do
					if v:IsA("LocalScript") then
						local clone = v:Clone()
						clone.Disabled = true
						clone.Parent = FakeCharacter
					end
				end

				if Transparency then
					for i, v in pairs(FakeCharacter:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Transparency = 0.7
						end
					end
				end

				RealCharacter.Humanoid.Died:Connect(function()
					RealCharacter:Destroy()
					FakeCharacter:Destroy()
				end)

				Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
			end

			RealCharacter.Humanoid.Died:Connect(function()
				RealCharacter:Destroy()
				FakeCharacter:Destroy()
			end)

			Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)

			local PseudoAnchor

			PseudoAnchor = FakeCharacter.HumanoidRootPart

			local function Invisible()
				if IsInvisible == false then
					local StoredCF = RealCharacter.HumanoidRootPart.CFrame
					RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
					FakeCharacter.HumanoidRootPart.CFrame = StoredCF
					RealCharacter.Humanoid:UnequipTools()
					Player.Character = FakeCharacter
					workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
					PseudoAnchor = RealCharacter.HumanoidRootPart

					for i, v in pairs(FakeCharacter:GetChildren()) do
						if v:IsA("LocalScript") then
							v.Disabled = false
						end
					end

					IsInvisible = true
				else
					local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
					FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
					RealCharacter.HumanoidRootPart.CFrame = StoredCF
					FakeCharacter.Humanoid:UnequipTools()
					Player.Character = RealCharacter
					workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
					PseudoAnchor = FakeCharacter.HumanoidRootPart

					for i, v in pairs(FakeCharacter:GetChildren()) do
						if v:IsA("LocalScript") then
							v.Disabled = true
						end
					end

					IsInvisible = false
				end
			end
        while Settings.AntiKick do
            task.wait()
            if GetManager() and GetManager() ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local Manager = GetManager()
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Manager and Manager.Character and Manager.Character:FindFirstChild("HumanoidRootPart") then
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Manager.Character.HumanoidRootPart.Position).Magnitude
                    if distance <= 17 and not Settings.IsInvisible then
						if Settings.AutofarmToggle then 
							Settings.AutofarmToggle = false 
							PPFarm = true 
						end
                        Invisible() 
						Settings.IsInvisible = true 
						Library:MakeNotification({
							Name = "Eazvy Hub - Success",
							Content = Manager.Name .. " has been detected near you enabling anti-vote to prevent him from kicking.",
							Image = "rbxassetid://4914902889",
							Time = 3
						})
					elseif Settings.IsInvisible and distance >= 18 then 
						if PPFarm then 
						   Settings.AutofarmToggle = true 
						   PPFarm = false 
						end
						Invisible() 
						Settings.IsInvisible = false 
						Library:MakeNotification({
							Name = "Eazvy Hub - Success",
							Content = Manager.Name .. " is away from you...",
							Image = "rbxassetid://4914902889",
							Time = 3
						})
                    end
                end
            end
        end
    end
end
})

LP:AddToggle({Name="Anti-Fire",Default=false,Callback=function(t)
	Settings.AntiFire = t 
	if Settings.AntiFire then
		for i,v in pairs(game:GetService("Workspace").AllDough:GetChildren()) do 
			if v:IsA("BasePart") and v:FindFirstChildOfClass("Fire") then 
				workspace.GameService.ExtinguishFire:FireServer(v:FindFirstChildOfClass("Fire"))
			end
		end
	end
	while Settings.AntiFire do task.wait(.15)
		for i,v in pairs(game:GetService("Workspace").AllDough:GetChildren()) do 
			if v:IsA("Part") and v:FindFirstChild("Fire") and Settings.AntiFire then 
				workspace.GameService.ExtinguishFire:FireServer(v)
				task.wait()
			end
		end
		for _,v in pairs(game:GetService("Players"):GetChildren()) do 
			if v.Character and Settings.AntiFire then 
				for _,Base in pairs(v.Character:GetChildren()) do 
					if Base:IsA("BasePart") and Base:FindFirstChildOfClass("Fire") and Settings.AntiFire then 
						workspace.GameService.ExtinguishFire:FireServer(Base)
						task.wait()
					end
				end
			end
		end
	end
end})

LP:AddToggle({Name="No Present Animation",Default=false,Callback=function(t)
	Settings.NoPresentAnimation = t 
	if Settings.NoPresentAnimation and workspace.CurrentCamera.CameraSubject == Enum.CameraType.Scriptable then 
		workspace.CurrentCamera.CameraSubject = Enum.CameraType.Custom 
	end
end})


LP:AddToggle({Name="Door Bypass",Default=false,Callback=function(t)
	Settings.DoorBypass = t 
	if Settings.DoorBypass then 
		for i,v in pairs(game:GetService("Workspace").Houses:GetChildren()) do 
			if v:IsA("Model") and v:FindFirstChild("Furniture") and Settings.DoorBypass then 
				for Data,Furniture in pairs(v:FindFirstChild("Furniture"):GetChildren()) do 
					if (Furniture.Name == "Owner Door" or Furniture.Name == "Friend Door" or Furniture.Name:match("Door")) and Settings.DoorBypass then 
						if Furniture:FindFirstChild("DoorClosed") then 
							Furniture.DoorClosed.CanCollide = false
						else 
							for _,v in pairs(Furniture:GetChildren()) do 
								if v:IsA("BasePart") or v:IsA("MeshPart") then 
									v.CanCollide = false
								end
							end
						end
					elseif Furniture.Name:match("Door") and not Settings.DoorBypass then 
						Furniture.DoorClosed.CanCollide = true 
					end
				end
			end
		end
	end
end    
})


Teleports:AddDropdown({Name = Pizza .. " • Pizza Place",Default = "",Options=PizzaLocationNames,Callback = function(s)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = TeleportTable['PizzaPlace'][tostring(s)].Location
end})

Teleports:AddDropdown({Name = tostring(utf8.char(0x0001F3DD)) .. " • Islands",Default = "",Options=IslandLocationNames,Callback = function(s)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = TeleportTable['Islands'][tostring(s)].Location
end})

Teleports:AddDropdown({Name = tostring(utf8.char(0x0001F5FB)) .. " • Other Locations",Default = "",Options=OtherLocationNames,Callback = function(s)
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = TeleportTable['Other'][tostring(s)].Location
end})

local Teleportss = Teleports:AddDropdown({Name = tostring(utf8.char(0x0001F465)) .. " • Teleport to Player",Default = "",Options=getPlayers(),Callback = function(s)
	if Players.LocalPlayer.Character.Humanoid.Sit then 
		Players.LocalPlayer.Character.Humanoid.Sit = true 
	end
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[getPlayersbyNick(s)].Character.HumanoidRootPart.CFrame
end})


local Houses = Teleports:AddDropdown({Name = tostring(utf8.char(0x0001F3E0)) .. " • Teleport to Player House",Default = "",Options =getPlayers(),Callback = function(s)
    for _,v in pairs(game:GetService('Workspace').Houses:GetChildren()) do 
        if v:IsA("Model") and v:FindFirstChild(game:GetService("Players")[getPlayersbyNick(s)].DisplayName) ~= nil  then 
			local Cur_Upg = v:FindFirstChild("CurrentUpgrade").Value 
            local House = v[tostring(Cur_Upg)].GivePizza
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = House.CFrame
        else 
            House = nil 
        end
    end
end    
})


Server:AddButton({Name ="Rejoin",Callback = function()
    game:GetService("Players").LocalPlayer:Kick("Rejoining the game please wait... | This is to avoid bans in-game.")
    task.wait(.35)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)  
end    
})



Server:AddButton({Name = "Serverhop",Callback = function()
    game:GetService("Players").LocalPlayer:Kick("Serverhopping please wait... | This is to avoid bans in-game.")
    task.wait(.35)
    ServerHop()
end    
})

local TeleportNames = {}

local TeleportGame = Server:AddDropdown({Name = "Teleport to Game",Default = "",Options=TeleportNames,Callback = function(s)
	for i,v in pairs(require(game:GetService("ReplicatedStorage").Enums).LocationName) do 
		if tostring(game:GetService("MarketplaceService"):GetProductInfo(i).Name) == tostring(s) and not table.find(require(game:GetService("ReplicatedStorage").Enums).BannedPlacePortalIds, i)  then 
			Send_Data:SendData("TeleportToPlace", "PlayerChannel", nil, i)
			Library:MakeNotification({
				Name = "Eazvy Hub - Success",
				Content = "Teleporting to " .. tostring(game:GetService("MarketplaceService"):GetProductInfo(i).Name) .. "...",
				Image = "rbxassetid://4914902889",
				Time = 5
			})
			return
		end
	end
end    
})

Server:AddToggle({Name = "Click to Select (Player)",Default = false,Callback = function(t)
	Settings.ClickToSelect = t
	if Settings.ClickToSelect then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Success",
			Content = 'Click-to Select Player has been enabled; Keybind: CTRL + Click',
			Image = "rbxassetid://4914902889",
			Time = 10
		})
	end 
end})

Server:AddToggle({Name = "Click to Select (Model)",Default = false,Callback = function(t)
	Settings.ClickToSelectModel = t
	if Settings.ClickToSelectModel then 
		Library:MakeNotification({
			Name = "Eazvy Hub - Success",
			Content = 'Click-to Select Model has been enabled; Keybind: CTRL + Click',
			Image = "rbxassetid://4914902889",
			Time = 10
		})
	end 
end})


Server:AddToggle({Name = "Remove Descendant Models (Click-To-Select)",Default = false,Callback = function(t)
	Settings.RemoveModels = t
end})

Server:AddButton({Name ="Respawn Cars",Callback = function()
	local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetPlayers()) do
        local backpack = v:FindFirstChild("Backpack")
        local character = v.Character
        local DeliveryBike = (backpack and backpack:FindFirstChild("DeliveryBike")) or (character and character:FindFirstChild("DeliveryBike"))
        if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
            DeliveryBikeRemote = DeliveryBike.CleanupBike
            break
        end
    end
	if DeliveryBikeRemote then 
		for _,v in pairs(workspace.Cars:GetChildren()) do 
			task.spawn(function()
				DeliveryBikeRemote:InvokeServer(v, v) 
			end)
		end
	else 
		Library:MakeNotification({
           Name = "Eazvy Hub - Error",
           Content = "No DeliveryBike found!",
           Image = "rbxassetid://161551681",
           Time = 2
    })
	end
end}) 

Server:AddButton({Name ="Respawn Trucks",Callback = function()
	local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetPlayers()) do
        local backpack = v:FindFirstChild("Backpack")
        local character = v.Character
        local DeliveryBike = (backpack and backpack:FindFirstChild("DeliveryBike")) or (character and character:FindFirstChild("DeliveryBike"))
        if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
            DeliveryBikeRemote = DeliveryBike.CleanupBike
            break
        end
    end
	if DeliveryBikeRemote then 
		for _,v in pairs(workspace.Trucks:GetChildren()) do 
			task.spawn(function()
				DeliveryBikeRemote:InvokeServer(v, v) 
			end)
		end
	else 
		Library:MakeNotification({
           Name = "Eazvy Hub - Error",
           Content = "No DeliveryBike found!",
           Image = "rbxassetid://161551681",
           Time = 2
    })
	end
end}) 

Server:AddButton({Name ="Respawn Customers",Callback = function()
	local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetPlayers()) do
        local backpack = v:FindFirstChild("Backpack")
        local character = v.Character
        local DeliveryBike = (backpack and backpack:FindFirstChild("DeliveryBike")) or (character and character:FindFirstChild("DeliveryBike"))
        if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
            DeliveryBikeRemote = DeliveryBike.CleanupBike
            break
        end
    end
	if DeliveryBikeRemote then 
		for _,v in pairs(workspace.Customers:GetChildren()) do 
			task.spawn(function()
				DeliveryBikeRemote:InvokeServer(v, v) 
			end)	
		end
	else 
		Library:MakeNotification({
           Name = "Eazvy Hub - Error",
           Content = "No DeliveryBike found!",
           Image = "rbxassetid://161551681",
           Time = 2
    })
	end
end}) 

Server:AddButton({Name ="Remove Islands",Callback = function()
	local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetPlayers()) do
        local backpack = v:FindFirstChild("Backpack")
        local character = v.Character
        local DeliveryBike = (backpack and backpack:FindFirstChild("DeliveryBike")) or (character and character:FindFirstChild("DeliveryBike"))
        if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
            DeliveryBikeRemote = DeliveryBike.CleanupBike
            break
        end
    end
	if DeliveryBikeRemote then 
		for _,v in pairs(workspace:GetChildren()) do 
			if v:IsA("Model") and v.Name:match("Island") then 
				task.spawn(function()
					DeliveryBikeRemote:InvokeServer(v, v) 
				end)
			end
		end
	else 
		Library:MakeNotification({
           Name = "Eazvy Hub - Error",
           Content = "No DeliveryBike found!",
           Image = "rbxassetid://161551681",
           Time = 2
    })
	end
end}) 

Server:AddButton({Name ="Remove Trees",Callback = function()
	local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetPlayers()) do
        local backpack = v:FindFirstChild("Backpack")
        local character = v.Character
        local DeliveryBike = (backpack and backpack:FindFirstChild("DeliveryBike")) or (character and character:FindFirstChild("DeliveryBike"))
        if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
            DeliveryBikeRemote = DeliveryBike.CleanupBike
            break
        end
    end
	if DeliveryBikeRemote then 
		for _,v in pairs(workspace.Trees:GetChildren()) do 
			if v:IsA("Model") then 
				task.spawn(function() 
					DeliveryBikeRemote:InvokeServer(v, v) 
				end)
			end
		end
	else 
		Library:MakeNotification({
           Name = "Eazvy Hub - Error",
           Content = "No DeliveryBike found!",
           Image = "rbxassetid://161551681",
           Time = 2
    })
	end
end}) 


Server:AddButton({Name ="Remove All Models",Callback = function()
	local DeliveryBikeRemote
    for _, v in pairs(game.Players:GetPlayers()) do
        local backpack = v:FindFirstChild("Backpack")
        local character = v.Character
        local DeliveryBike = (backpack and backpack:FindFirstChild("DeliveryBike")) or (character and character:FindFirstChild("DeliveryBike"))
        if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
            DeliveryBikeRemote = DeliveryBike.CleanupBike
            break
        end
    end
	if DeliveryBikeRemote then 
		for _,v in pairs(workspace:GetDescendants()) do 
			if v:IsA("Model") then 
				task.spawn(function()
					DeliveryBikeRemote:InvokeServer(v, v) 
				end)
			end
		end
	else 
		Library:MakeNotification({
           Name = "Eazvy Hub - Error",
           Content = "No DeliveryBike found!",
           Image = "rbxassetid://161551681",
           Time = 2
    })
	end
end}) 

Server:AddBind({Name = "Toggle UI",Default = Enum.KeyCode.F,Hold =false,Callback = function()
	if game:GetService("CoreGui").Orion.Enabled then
        game:GetService("CoreGui").Orion.Enabled = false
    else
        game:GetService("CoreGui").Orion.Enabled = true
    end   
end  
})

Players.PlayerAdded:Connect(function()
	Teleportss:Refresh(getPlayers(), true)
	Houses:Refresh(getPlayers(), true)
	SelectP:Refresh(getPlayers(), true)
end)

Players.PlayerRemoving:Connect(function()
	Teleportss:Refresh(getPlayers(), true)
	Houses:Refresh(getPlayers(), true)
	SelectP:Refresh(getPlayers(), true)
end)


workspace.GameService.DoubleTimeStarted.OnClientEvent:Connect(function()
	Settings.NeonOrDoubleTimeStarted = true 
end)

workspace.GameService.NeonTimeStarted.OnClientEvent:Connect(function(p4)
	Settings.NeonOrDoubleTimeStarted = true
end)

game.ReplicatedStorage.GlobalData.NeonTime.Changed:connect(function()
	if not game:GetService("ReplicatedStorage").GlobalData.NeonTime.Value then 
		Settings.NeonOrDoubleTimeStarted = false 
	end
end)

game:GetService("ReplicatedStorage").GlobalData.DoubleTime.Changed:Connect(function()
	if not game:GetService("ReplicatedStorage").GlobalData.DoubleTime.Value then 
		Settings.NeonOrDoubleTimeStarted = false 
	end
end)

if game:GetService("Workspace").Camera:FindFirstChild("__RainEmitter") then 
	game:GetService("Workspace").Camera:FindFirstChild("__RainEmitter"):Destroy()
end

workspace.Main.VotePlayers.OnClientEvent:connect(function()
	Settings.VoteKicked = true 
	task.wait(659)
	Settings.VoteKicked = false
end)

game.Players.LocalPlayer.Moneyz.Changed:Connect(function()
	if Settings.AutofarmToggle then 
		local Result = game.Players.LocalPlayer.Moneyz.Value - tonumber(Previous_Money)
		Coins_Earned:Set(tostring(comma_value(Result)).."$")
	end
end)

local supplyCounts = {TomatoSauce=99,Cheese=99,Sausage=99,Pepperoni=99,Dough=99,Box=99,Dew=99}
for name in pairs(supplyCounts) do
	if workspace.SupplyCounters.Model[name=="Dew" and "CounterMountainDew" or "Counter"..name]:FindFirstChild("a") then 
		local lbl = workspace.SupplyCounters.Model[name=="Dew" and "CounterMountainDew" or "Counter"..name].a.SG.Counter
		supplyCounts[name]=tonumber(lbl.Text)
		lbl.Changed:Connect(function()
			supplyCounts[name]=tonumber(lbl.Text)
		end)
	end
end


local boxPtick=0
local boxDtick=0
function FindBoxes()
	local c,o,f
	local children = workspace.AllBox:GetChildren()
	for i=1,#children do
		local b = children[i]
		if ffc(b,"HasPizzaInside") or ffc(b,"Pizza") then
			if c==nil and b.Name=="BoxClosed" and b.Anchored==false and not b.HasPizzaInside.Value then
				c=b
			elseif o==nil and b.Name=="BoxOpen" and b.Anchored==false and not b.Pizza.Value then
				o=b
			elseif f==nil and (b.Name=="BoxOpen" and b.Pizza.Value) or (b.Name=="BoxClosed" and b.HasPizzaInside.Value) then
				f=b
			end
			if c and o and f then
				return c,o,f
			end
		end
	end
	return c,o,f
end

function FindUABoxingFoods()
	local p,d
	local xd = {}
	for i,v in pairs(workspace.BoxingRoom:GetChildren()) do 
		if not v.Anchored then 
			table.insert(xd, v)
		end
	end
	return xd
end

function FindBoxingFoods()
	local p,d
	local children = workspace.BoxingRoom:GetChildren()
	for i=1,#children do
		local f = children[i]
		if not f.Anchored then
			if p==nil and f.Name=="Pizza" then
				p=f
			elseif d==nil and f.Name=="Dew" then
				d=f
			end
			if p and d then
				return p,d
			end
		end
	end
	return p,d
end

local orderDict={["3540529228"]="Cheese",["3540530535"]="Sausage",["3540529917"]="Pepperoni",["2512571151"]="Dew",["2512441325"]="Dew",["11874352009"]="Dew"}
local cookingDict = {Cheese=0,Sausage=0,Pepperoni=0,Dew=0}
local cookPtick=0
local cookDtick=0
local cookWarned=false
local boxerWarned=false
function getOrders()
	local orders={}
	local tempCookingDict = {}
	for i,v in pairs(cookingDict) do tempCookingDict[i]=v end
	local children = workspace.Orders:GetChildren()
	for i=1,#children do
		local o = orderDict[children[i].SG.ImageLabel.Image:match("%d+$")]
		if o then
			if tempCookingDict[o]>0 then
				--ignores oven pizzas, so new orders are priority
				tempCookingDict[o]=tempCookingDict[o]-1
			elseif (o=="Dew" and #workspace.AllMountainDew:GetChildren()>0) or (supplyCounts[o]>0 and supplyCounts.TomatoSauce>0 and supplyCounts.Cheese>0) then
				--need supplies
				orders[#orders+1]=o
			end
		end
	end
	return orders
end


game:GetService("ReplicatedStorage").PlayerChannel:FireServer("LocationChanged", "Factory")
task.wait()


local bcolorToSupply = {["Dark orange"]="Sausage",["Bright blue"]="Pepperoni",["Bright yellow"]="Cheese",["Bright red"]="TomatoSauce",['Navy blue']="Dew",["Dark green"]="Dew",["Brick yellow"]="Dough",["Light stone grey"]="Box",["Really black"]="Dew"}
local supplyButtons = {}
for i,v in ipairs(workspace.SupplyButtons:GetChildren()) do
	if v and v:FindFirstChild("Unpressed") then
	   supplyButtons[i] = v.Unpressed
	end
end
table.sort(supplyButtons,function(a,b) return a.Position.X < b.Position.X end)
local delTick = 0
function FindAllDeliveryTools(parent)
	local t = {}
	local children = parent:GetChildren()
	for i=1,#children do
		local v = children[i]
		if v.ClassName=="Tool" and v.Name:match("^%u%d$") and ffc(v,"Handle") and ffc(v,"House") and (parent~=workspace or (v.Handle.Position-Vector3.new(54.45, 4.02, -16.56)).Magnitude < 30) then
			t[#t+1] = v
		end
	end
	return t
end




function getHousePart(address)
    local houses = workspace.Houses:GetChildren()
    for i=1,#houses do
        local h = houses[i]
        if ffc(h,"Address") and h.Address.Value==address and ffc(h,"GivePizza",true) then
            return ffc(h,"GivePizza",true)
        end
    end
end

function onCharacterAdded(char)
	if not char then return end
	character=char
	root = character:WaitForChild("HumanoidRootPart")
	humanoid = character:WaitForChild("Humanoid")
	humanoid:SetStateEnabled("FallingDown",false)
	if Settings.AntiSlow then
		humanoid.WalkSpeed:GetPropertyChangedSignal("Value"):Connect(function()
			if humanoid.WalkSpeed == 0 and Settings.AntiSlow then 
				humanoid.WalkSpeed = 16 
				humanoid.JumpPower = 50
			end
		end) 
	end 
end
onCharacterAdded(player.Character or player.CharacterAdded:Wait())
player.CharacterAdded:Connect(onCharacterAdded)


if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu:FindFirstChild("ChristmasRewards") then 
	task.spawn(function()
		repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu:FindFirstChild("ChristmasRewards").Visible 
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu:FindFirstChild("ChristmasRewards").Cancel.MouseButton1Click)
	end)
end

for _,o in ipairs(workspace.Ovens:GetChildren()) do
	if ffc(o,"Bottom") and o.Bottom:FindFirstChildOfClass("TouchTransmitter") then
		local a = o.Bottom:Clone()
		o.Bottom:Destroy() 
		a.Parent = o 
	end
end

function FindDoughAndWithout(str)
	local goodraw,p,raw,trash
	local children = workspace.AllDough:GetChildren()
	for i = #children, 2, -1 do --shuffle
		local j = RNG:NextInteger(1, i)
		children[j], children[i] = children[i], children[j]
	end
	for i=1,#children do
		local d = children[i]
		if d.Anchored==false and #d:GetChildren()>9 then
			if d.IsBurned.Value or d.HasBugs.Value or d.Cold.Value or (d.BrickColor.Name=="Bright orange" and ffc(d,"XBillboard")) then
				if trash==nil and d.Position.Y > 0 and ((d.Position*Vector3.new(1,0,1))-Vector3.new(47.90, 0, 72.49)).Magnitude > 1 then
					trash=d
				end
			elseif p==nil and d.BrickColor.Name=="Bright orange" then
				p=d
			elseif goodraw==nil and d.Position.X<55 and d.BrickColor.Name=="Brick yellow" and ((str and not ffc(d.SG.Frame,str)) or (str==nil and ffc(d.SG.Frame,"Sausage")==nil and ffc(d.SG.Frame,"Pepperoni")==nil)) then
				--prefers flat
				if d:FindFirstChildOfClass("Mesh") and d.Mesh.Scale.Y<1.1 then
					goodraw=d
				else
					raw=d
				end
			end
			if goodraw and p and trash then
				return goodraw,p,trash
			end
		end
	end
	return goodraw or raw,p,trash
end

local TeleportedAlready = false

workspace.Main.CandyGiven.OnClientEvent:Connect(function()
	if game:GetService("ReplicatedStorage").GlobalData:FindFirstChild("Holiday") and game:GetService("ReplicatedStorage").GlobalData:FindFirstChild("Holiday").Value == "Halloween" then 
		for i,v in pairs(Send_Data:SendData("GetCandyCounts", "PlayerChannel", 10)) do 
			if i =="CandyCorn" then 
				NewCandyCorn = math.abs(CandyCorn - v)
			elseif i == "Roll" then 
				NewRoll = math.abs(Roll - v) 
			elseif i == "Lollypop" then 
				NewLollypop = math.abs(Lollypop - v)
			end 
		end
		local Result = game.Players.LocalPlayer.Moneyz.Value - tonumber(Previous_Money)
		Coins_Earned:Set("Money: " .. tostring(comma_value(Result)).."$ " .. "| Candies: Candy Corn: " .. tostring(NewCandyCorn) .. " Roll: " .. tostring(NewRoll) .. " Lollypop: " .. tostring(NewLollypop))
	end
end)

workspace.Main.RefreshJobsCompleted.OnClientEvent:connect(function(Data)
    for i,v in pairs(Data) do 
		if i == "Cook" and v ~= nil then 
			NewCookStats = math.abs(CookStats - v)
		elseif i == "Cashier" and v ~= nil then 
			NewCashierStats = math.abs(CashierStats - v)
		elseif i == "Pizza Boxer" and v ~= nil then 
			NewBoxerStats = math.abs(BoxerStats - v)
		elseif i == "Delivery" and v ~= nil then 
			NewDeliveryStats = math.abs(DeliveryStats - v)
		elseif i == "Supplier" and v ~= nil then  
			NewSupplierStats = math.abs(SupplierStats - v)
		end
    end
end)



function tryCook()
	if Settings.AutofarmToggle then 
		for zz=1,5 do task.wait(.35)
			if true and Settings.AutofarmToggle and Settings.doCook then 
					if zz == 1 then 
						Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cook")
					end
					task.wait(.15)
					local order = getOrders()[1]
					local topping
					if order=="Pepperoni" or order=="Sausage" then topping=order end
					local cookD = FindFirstDew()
					local badD = FindBadDew()
					local raw,cookP,trash
					if topping then
						--pepperoni order avoids sausage dough and vice verca
						raw,cookP,trash = FindDoughAndWithout(topping=="Pepperoni" and "Sausage" or "Pepperoni")
					else
						raw,cookP,trash = FindDoughAndWithout()
					end
					local ovens = workspace.Ovens:GetChildren()
					for i=#ovens,1,-1 do
						if #ovens[i]:GetChildren() < 10 then
							table.remove(ovens,i)
						end
					end
					for i = #ovens, 2, -1 do --shuffle
						local j = RNG:NextInteger(1, i)
						ovens[j], ovens[i] = ovens[i], ovens[j]
					end
					if Settings.doCook and Settings.AutofarmToggle then
						local didsomething=false
						--move final pizza
						if cookP and tick()-cookPtick>0.5 then
							local oven = getOvenNear(cookP.Position)
							if oven==nil or oven.IsOpen.Value then
								cookPtick=tick()
								didsomething=true
								network:FireServer("UpdateProperty", cookP, "CFrame", CFrame.new(RNG:NextNumber(56,57),4.1,38))
								Status:Set("["..Pizza.."] Pizza Finished in Oven..")
								Status:Set("["..Pizza.."] Moving Pizza...")
							end
						end
						if order and Settings.AutofarmToggle then
							if order=="Dew" and cookD and tick()-cookDtick>0.5 then
								didsomething=true
								cookDtick=tick()
								Status:Set("["..Dew.."] Moving Mountain Dew...")
								network:FireServer("UpdateProperty", cookD, "CFrame", CFrame.new(RNG:NextNumber(56,57),4.1,38))
								Status:Set("["..Dew.."] Moving Dew...")
							elseif order~="Dew" and raw and raw.Parent and supplyCounts[order]>0 and supplyCounts.TomatoSauce>0 and supplyCounts.Cheese>0  and Settings.AutofarmToggle then
								--make pizza
								if raw.Mesh.Scale.Y>1.5 then
									Status:Set("["..Pizza.."] Making Pizza...") 
									didsomething=true
									task.wait()
									network:FireServer("SquishDough", raw)
								else
									local oven
									for _,o in ipairs(ovens) do
										if isFullyOpen(o) then
											local children = workspace.AllDough:GetChildren()
											local other = getDoughNear(o.Bottom.Position)
											if other==nil or not (other.BrickColor.Name=="Bright orange" and ffc(other.SG.Frame,"TomatoSauce") and ffc(other.SG.Frame,"MeltedCheese")) and Settings.AutofarmToggle then
												if other then
													didsomething=true
													network:FireServer("UpdateProperty", other, "CFrame", CFrame.new(RNG:NextNumber(29.6,44.6),3.7,RNG:NextNumber(42.5,48.5)))
													Status:Set("["..Pizza.."] Putting Pizza in Ovens..")
													task.wait()
												end
												oven=o
												break
											end
										end
									end
									if oven and raw.Parent==workspace.AllDough and Settings.AutofarmToggle then
											Status:Set("["..Pizza.."] Making Pizza...") 
											didsomething=true
											network:FireServer("AddIngredientToPizza", raw,"TomatoSauce")
											network:FireServer("AddIngredientToPizza", raw,"Cheese")
											network:FireServer("AddIngredientToPizza", raw,topping)
											task.wait()
											network:FireServer("UpdateProperty", raw, "CFrame", CFrame.new(oven.Bottom.Position+Vector3.new(0,0.7,0)))
											task.wait(.15)
											oven.Door.ClickDetector.Detector:FireServer()
											Status:Set("["..Pizza.."] Cooking Pizza in Oven...")
										
										cookingDict[order]=cookingDict[order]+1
										local revoked=false
										task.spawn(function()
											raw.AncestryChanged:Wait()
											if not revoked then
												cookingDict[order]=cookingDict[order]-1
												revoked=true
											end
										end)
											delay(40, function()
											if not revoked then
												cookingDict[order]=cookingDict[order]-1
												revoked=true
											end
										end)
									end
								end
							end
						end
						--open unnecessarily closed ovens
						for _,o in ipairs(ovens) do
							local bar = o.Door.Meter.SurfaceGui.ProgressBar.Bar
							if o.IsOpen.Value==false and (o.IsCooking.Value==false or (Vector3.new(bar.ImageColor3.r,bar.ImageColor3.g,bar.ImageColor3.b)-Vector3.new(.871,.518,.224)).magnitude>.1) and Settings.AutofarmToggle then
								Status:Set("["..Pizza.."] Opening Oven...")
								o.Door.ClickDetector.Detector:FireServer()
							end
						end
						didsomething=true
						--trash
						if badD and Settings.AutofarmToggle then
							didsomething=true
							network:FireServer("UpdateProperty", badD, "CFrame", CFrame.new(47.9,RNG:NextNumber(-10,-30),72.5))
						end
						if trash and (trash.IsBurned.Value==false or getOvenNear(trash.Position)==nil or getOvenNear(trash.Position).IsOpen.Value) and Settings.AutofarmToggle then
							--closed oven breaks if you take burnt out of it
							didsomething=true
							task.wait()
							network:FireServer("UpdateProperty", trash, "CFrame", CFrame.new(47.9,RNG:NextNumber(-10,-30),72.5))
							-- network:FireServer("UpdateProperty", trash, "CFrame", CFrame.new(-191, -480, -1393))
							Status:Set('['..Pizza..Bug..'] Moved Burnt/Expired Pizza into Trash...')
						end
					else
						
					end
					if didsomething then wait(0.4) end
			end
		end
		TeleportedAlready = false
	end
end

workspace.MessageService.ShowHint.ShowHint:Fire("Eazvy-Hub has been Loaded! Use this script with caution. If you get banned we're not responsible.", 10);
task.spawn(function()
	local BannerMain = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.LocalMain)
	BannerMain.BannerMessage("made by @omaw (:",4)
end)

for i,v in pairs(require(game:GetService("ReplicatedStorage").Enums).LocationName) do 
	if not table.find(require(game:GetService("ReplicatedStorage").Enums).BannedPlacePortalIds, i) then 
		table.insert(TeleportNames, game:GetService("MarketplaceService"):GetProductInfo(i).Name)
	end
end
TeleportGame:Refresh(TeleportNames, false)

task.spawn(function()
	while task.wait() do 
		if Settings.AutofarmToggle and game:GetService("Players").LocalPlayer.Character ~= nil and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil then
			if Settings.AutofarmToggle and not Settings.AutoUpgrade and Settings.AutofarmPet then 
				Upgrade:Set("Total: " .. tostring(game.Players.LocalPlayer:GetAttribute("TimesDidJob") or "0") .. " | Cashier: " .. tostring(NewCashierStats) .. " | Cook: " .. tostring(NewCookStats) .. " | Pizza Boxer: " .. tostring(NewBoxerStats) .. " | Delivery: " .. tostring(NewDeliveryStats) .. " | " .. "Supplier: " .. " " .. tostring(NewSupplierStats) .. " | Pet: " .. game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Pet.LevelBar.Bar.Level.Text ..  " | Next Level: " .. string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Menu.Pet.LevelBar.Bar.XP.Text, "XP ", ""))
			end
			if Settings.AutofarmToggle and not Settings.AutoUpgrade and not Settings.AutofarmPet then 
				Upgrade:Set("Total: " .. tostring(game.Players.LocalPlayer:GetAttribute("TimesDidJob") or "0") .. " | Cashier: " .. tostring(NewCashierStats) .. " | Cook: " .. tostring(NewCookStats) .. " | Pizza Boxer: " .. tostring(NewBoxerStats) .. " | Delivery: " .. tostring(NewDeliveryStats) .. " | " .. "Supplier: " .. " " .. tostring(NewSupplierStats))
			end
			game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Notifications.JobChange.Visible = false
            if Settings.AutofarmToggle then
                local refill=false
                for s,c in pairs(supplyCounts) do
                    if c <= Settings.Custom.refill_at then
                        refill=true
                        break
                    end
                end
                if refill and Settings.doSupplier then
                    local oldcf = root.CFrame
                    local waiting = false
                    local waitingTick = 0
                    local lastBox
                    Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Supplier")
                    task.wait(.15)
					if Settings.doSupplier then 
						while Settings.AutofarmToggle do
							if game.Lighting:FindFirstChild("Blur") then 
								game.Lighting.Blur:Destroy() -- removing retard blur
							end
							--check if refill is done otherwise hit buttons
							local fulfilled=true
							local boxes = workspace.AllSupplyBoxes:GetChildren()
							for yy=1,2 do
							local needtp=true
							local realc = 0
							Status:Set("["..Supply.."] Spawning Supplies...")
							for _,btn in ipairs(supplyButtons) do
								local s = bcolorToSupply[btn.BrickColor.Name]
								Status:Set("["..RedBox.."] Spawning " .. tostring(s) .. "...")
								if supplyCounts[s] < Settings.Custom.refill_end and Settings.AutofarmToggle then
									local count = 0
									if #boxes > 30 then
										for i=1,#boxes do
											local box = boxes[i]
											if bcolorToSupply[box.BrickColor.Name]==s and box.Anchored==false and box.Position.Z < -940 then
												count=count+1
											end
										end
									end
									if count < 2 then
										if needtp and Settings.AutofarmToggle then
											needtp=false
											root.CFrame = CFrame.new(btn.Position + Vector3.new(0,1,0))
											firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, btn, 0)
											firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, btn, 1)
											wait(0.1)
										end
										if not Settings.doSupplier then break end
										root.CFrame = CFrame.new(btn.Position + Vector3.new(0,1,0))
										firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, btn, 0)
										firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, btn, 1)
										wait(0.1)
										realc=realc+1
									end
									fulfilled=false
								end
							end
							wait(0.2)
							if yy == 1 and realc < 3 then
								wait(0.6)
							end
							end
							if fulfilled or not (Settings.doSupplier) then
								break
							end
							
							if not Settings.doSupplier then break end
							if waiting and (lastBox.Position.X>42 or tick()-waitingTick>6) then
								waiting=false
								wait(0.1)
								local boxes = workspace.AllSupplyBoxes:GetChildren()
								for i=1,#boxes do
									local box = boxes[i]
									if box.Anchored==false and box.Position.Z>-55 then
										network:FireServer("UpdateProperty", box, "CFrame", CFrame.new(RNG:NextNumber(0,40),RNG:NextNumber(-10,-30),-70))
										wait()
									end
								end
								wait(0.1)
							end
							if not waiting then
							if root.Position.Z > -900 then Status:Set("[⬜] Moving Boxes...") end
							wait(0.1)
							lastBox=nil
							local j=0
							local boxes = workspace.AllSupplyBoxes:GetChildren()
							for i=1,#boxes do
								local box = boxes[i]
								if box.Anchored==false and box.Position.Z < -940 and bcolorToSupply[box.BrickColor.Name] and supplyCounts[bcolorToSupply[box.BrickColor.Name]] < Settings.Custom.refill_end then
									box.CFrame = CFrame.new(38-4.3*math.floor(j/2),5,-7-5*(j%2))
									network:FireServer("UpdateProperty", box, "CFrame", box.CFrame)
									Status:Set("[⬜] Moved " .. tostring(bcolorToSupply[box.BrickColor.Name]) .. "...")
									lastBox=box
									j=j+1
									if j>13 then break end
									SupplierStats = SupplierStats + 1
								end
							end
							if lastBox then
								waiting=true
								waitingTick=tick()
							end
						end
                    end
                end
            end
			if Settings.AutofarmToggle and Settings.doCashier then 
				for _,c in pairs(workspace.Customers:GetChildren()) do 
					if ffc(c,"Head") and ffc(c,"Humanoid") and c.Head.CFrame.Z<1000 and ffc(c.Head,"Dialog") and ffc(c.Head.Dialog,"Correct") and Settings.doCashier and ((c.Humanoid.SeatPart and c.Humanoid.SeatPart.Anchored) or (c.Humanoid.SeatPart==nil and (c.Head.Velocity.Z^2)^.5<.0001)) and Settings.AutofarmToggle then
						local dialog = c.Head.Dialog.Correct.ResponseDialog or ''
						local order = "MountainDew"
						if dialog:sub(-8)=="instead." then
							dialog = dialog:sub(-30)
						end
						if dialog:find("pepperoni",1,true) then
							order = "PepperoniPizza"
						elseif dialog:find("sausage",1,true) then
							order = "SausagePizza"
						elseif dialog:find("cheese",1,true) then
							order = "CheesePizza"
						end
						Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
						local reg = 3 
						if c.Head.Position.X < 50 then 
							reg = 2 
						elseif c.Head.Position.X < 70 then 
							reg = 1 
						end 
						-- if Settings.AutofarmToggle and Settings.doCashier and not TeleportedAlready then 
						-- 	Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
						-- 	TeleportedAlready = true 
						-- end

						local RegPos
						if reg == 2 then 
							RegPos = CFrame.new(41, 5, 86)
						elseif reg == 1 then 
							RegPos = CFrame.new(56, 4, 86)
						else 
							RegPos = CFrame.new(70, 4, 83)
						end 
						task.wait(.15)
						if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then 
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RegPos
						end 
						task.wait()
						network:FireServer("OrderComplete", c, order, workspace["Register"..reg])
						local Bike = getDeliveryBike()
						if Bike then 
							Bike.Parent.CleanupBike:InvokeServer(c, c)
						end
						Status:Set(Notepad .. " Completed Order at " .. "Register "..tostring(reg))
						task.wait(0.3)
					end
				end
				end
				TeleportedAlready = false
				if Settings.AutofarmToggle and Settings.doBoxer and workspace:FindFirstChild("Drawer") then
					local player = game.Players.LocalPlayer
					local backpack = player.Backpack
					local character = player.Character
					local hasPizzaSlicer = (backpack and backpack:FindFirstChild("Pizza Slicer")) or (character and character:FindFirstChild("Pizza Slicer"))
				
					if not hasPizzaSlicer and Settings.doBoxer then
						local drawer = workspace.Drawer
						if drawer:FindFirstChild("ClickDetector") then
							drawer.ClickDetector.Detector:FireServer()
							task.wait()
						end
				
						if drawer:FindFirstChild("Pizza Slicer") and drawer["Pizza Slicer"]:FindFirstChild("ClickDetector") then
							drawer["Pizza Slicer"].ClickDetector.Detector:FireServer()
						end
					end
				end				
				if Settings.AutofarmToggle and Settings.doCook then 
					tryCook()
				end
				if Settings.AutofarmToggle and Settings.doBoxer and not TeleportedAlready then 
					Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Pizza Boxer")
					TeleportedAlready = true 
				end
				if Settings.doBoxer and #workspace.BoxingRoom:GetChildren() >= 1 then 
					for zz=1,#game:GetService("Workspace").BoxingRoom:GetChildren() * 2 do task.wait()
						if Settings.doBoxer and Settings.AutofarmToggle then
							local boxP,boxD = FindBoxingFoods()
							local closedBox,openBox,fullBox = FindBoxes()
							if boxD then
								boxDtick=tick()
								didsomething=true
								network:FireServer("UpdateProperty", boxD, "CFrame", CFrame.new(63,4.9,-1,-1,0,0,0,1,0,0,0,-1))
							end
							if fullBox and Settings.AutofarmToggle then
								if fullBox.Name=="BoxOpen" and Settings.AutofarmToggle then
									didsomething=true
									Status:Set("["..Pizza.."] Putting Pizza in Box...")
									task.wait()
									network:FireServer("CloseBox", fullBox)
								elseif Settings.AutofarmToggle and tick()-boxPtick>0.1 then
									didsomething=true
									Status:Set("["..Pizza.."] Finished Boxing Pizza...")
									task.wait()
									network:FireServer("UpdateProperty", fullBox, "CFrame", CFrame.new(68.2,4.4,RNG:NextNumber(-3,-2),-1,0,0,0,1,0,0,0,-1))
									local wstools = FindAllDeliveryTools(workspace)
									for i=1,#wstools do
										if wstools[i].Parent == workspace and Settings.doDelivery then
											humanoid:EquipTool(wstools[i])
											-- task.wait()
										end
									end
									boxPtick=tick()
								end
							end
							if closedBox and not openBox and Settings.AutofarmToggle then
								didsomething=true
								-- task.wait()
								network:FireServer("UpdateProperty", closedBox, "CFrame", CFrame.new(RNG:NextNumber(62.5,70.5),3.5,RNG:NextNumber(11,25)))
								-- wait()
								Status:Set("["..Pizza.."] Opening Pizza Box...")
								network:FireServer("OpenBox", closedBox)
							end
							if openBox and boxP  and Settings.AutofarmToggle then
								didsomething=true
								network:FireServer("UpdateProperty", boxP, "Anchored", true)
								-- task.wait()
								network:FireServer("UpdateProperty", openBox, "Anchored", true)
								-- task.wait()
								Status:Set("["..Pizza.."] Moving Pizza into Box...")
								network:FireServer("UpdateProperty", boxP, "CFrame", openBox.Position+Vector3.new(0,-2,0))
								-- task.wait()
								network:FireServer("AssignPizzaToBox", openBox, boxP)
								if openBox and openBox.IsSliced and not openBox.IsSliced.Value then 
									if game.Players.LocalPlayer and game.Players.LocalPlayer.Backpack and game.Players.LocalPlayer.Backpack:FindFirstChild("Pizza Slicer") then 
										local slicer = game.Players.LocalPlayer.Backpack:FindFirstChild("Pizza Slicer")
										game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(slicer)
									end
									Library:MakeNotification({
										Name = "Eazvy Hub - Success",
										Content = Pizza .. "] Slicing Pizza...",
										Image = "rbxassetid://4914902889",
										Time = 5
									})
									network:FireServer("SlicePizza",openBox,openBox:GetAttribute("InstanceId"))
								end
							end
							if didsomething then Status:Set("Waiting for Tasks...") wait(0.1) else break end
						else
							break
						end
						task.wait(.35)
					end
					TeleportedAlready = false
				end
				local wstools = FindAllDeliveryTools(workspace)
				if #wstools > 1 or (wstools[1] and ffc(wstools[1].Handle,"X10")) and Settings.AutofarmToggle and Settings.doDelivery then
					--get tools
					local deliveryTools = {}
					for i = 1, #wstools do
						if wstools[i].Parent == workspace and Settings.doDelivery then
							table.insert(deliveryTools, wstools[i])
						end
					end

					for i = 1, #deliveryTools do
						Status:Set("["..Pizza.. Dew.."] Grabbing Pizzas + Dew...")
						humanoid:EquipTool(deliveryTools[i])
						if Settings.TargetNeonAndDouble then 
							local playertools = FindAllDeliveryTools(game:GetService("Players").LocalPlayer.Backpack)
							for i, v in pairs(playertools) do 
								v.Parent = game:GetService("Players").LocalPlayer
							end
						end
					end
					wait(0.3)
					local t = FindAllDeliveryTools(character)
					for i=1,#t do
						t[i].Parent = player.Backpack
					end
					wait(0.1) 
					if ffc(character,"RightHand") and ffc(character.RightHand,"RightGrip") then
						character.RightHand.RightGrip:Destroy()
					end
				end
				if Settings.TargetNeonAndDouble and Settings.NeonOrDoubleTimeStarted and Settings.doDelivery then 
						for i,v in pairs(game:GetService("Players").LocalPlayer:GetChildren()) do 
							if v:IsA("Tool") then 
								humanoid:EquipTool(v)
							end
						end
					end
				if Settings.doDelivery and Settings.AutofarmToggle then
                    humanoid:UnequipTools()
					local wstools = FindAllDeliveryTools(workspace)
					if #wstools > 1 or (wstools[1] and ffc(wstools[1].Handle,"X10")) and Settings.doDelivery then
						--get tools
						Status:Set("["..Pizza.. Dew.."] Grabbing Pizzas + Dew...")
						for i=1,#wstools do
							if humanoid and wstools[i] and wstools[i].Parent == workspace and Settings.doDelivery then
								humanoid:EquipTool(wstools[i])
							end
						end
						local t = FindAllDeliveryTools(character)
						for i=1,#t do
							t[i].Parent = player.Backpack
						end
						if ffc(character,"RightHand") and ffc(character.RightHand,"RightGrip") and Settings.AutofarmToggle then
							character.RightHand.RightGrip:Destroy()
						end
					end
					local bptools = FindAllDeliveryTools(player.Backpack)
					if #bptools >= Settings.DeliverAt and #bptools > 0 and tick()-delTick > 43 and Settings.AutofarmToggle then
						--deliver to houses
						Status:Set("["..Pizza..Dew.."] Delivering " .. tostring(#bptools) .. " Pizzas and Dew.")
						task.wait()
						table.sort(bptools,function(a,b)
							a,b=tostring(a),tostring(b)
							if (a:sub(1,1)=="B" and b:sub(1,1)=="B") then
								return a < b
							end
							return a > b
						end)
						local fatass=false
						for i=1,#bptools do
							if not Settings.doDelivery then
								break
							end
							local tool = bptools[i]
							local tool_name 
							if tool:FindFirstChild("BloxyColaScript") then 
								tool_name = "["..Pizza.."] Delivered " .. "Dew"
							else 
								tool_name = "["..Pizza.."] Delivered " .. "Pizza"
							end
							Status:Set("["..Pizza.."] Delivering Pizza" .. " to " .. tostring(tool.Name).."...")
							local giver = getHousePart(tool.Name)
							if giver and Settings.AutofarmToggle then
								-- local Vehicle = GetVehicle()
								-- if not Vehicle then 
								-- 	Vehicle = GetVehicle()
								-- end
								if (giver.Position-root.Position).Magnitude > 10 then
									customTP(Vehicle, CFrame.new(giver.Position + Vector3.new(0, 20, 0)))
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = giver.CFrame + Vector3.new(0, 1, 0)
									workspace.Main.RealignCamera.RealignCamera:Fire(27,15);
									if giver.Parent==nil then
										giver = getHousePart(tool.Name) or giver
										customTP(Vehicle, CFrame.new(giver.Position + Vector3.new(0, 20, 0)))
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = giver.CFrame + Vector3.new(0, 1, 0)
										if giver and tool and tool:FindFirstChild("Handle") then 
											firetouchinterest(tool:FindFirstChild("Handle"), giver, 0)
											firetouchinterest(tool:FindFirstChild("Handle"), giver, 1)
										end
										workspace.Main.RealignCamera.RealignCamera:Fire(27,15);
									end
									pcall(function() tool.Parent = character end)
									local t = FindAllDeliveryTools(character)
									for i=1,#t do
										if t[i] ~= tool then
											t[i].Parent = player.Backpack
										end
									end
									Status:Set(tool_name .. " to " .. tostring(tool.Name).." " .. Checkmark)
									wait(3.5)
									fatass=false
								else
									if fatass then
										wait(0.3)
									else
										wait(0.2)
									end
									pcall(function() tool.Parent = character end)
									fatass=true
								end
							end
						end
						delTick = tick()
					end
				end
				for _,c in pairs(workspace.Customers:GetChildren()) do 
					if ffc(c,"Head") and ffc(c,"Humanoid") and c.Head.CFrame.Z<105 and ffc(c.Head,"Dialog") and ffc(c.Head.Dialog,"Correct") and Settings.doCashier and ((c.Humanoid.SeatPart and c.Humanoid.SeatPart.Anchored) or (c.Humanoid.SeatPart==nil and (c.Head.Velocity.Z^2)^.5<.0001)) and Settings.AutofarmToggle then
						local dialog = c.Head.Dialog.Correct.ResponseDialog or ''
						Send_Data:SendData("TeleportToJob", "PlayerChannel", nil, "Cashier")
						local order = "MountainDew"
						if dialog:sub(-8)=="instead." then
							dialog = dialog:sub(-30)
						end
						if dialog:find("pepperoni",1,true) then
							order = "PepperoniPizza"
						elseif dialog:find("sausage",1,true) then
							order = "SausagePizza"
						elseif dialog:find("cheese",1,true) then
							order = "CheesePizza"
						end
						local reg = 3 
						if c.Head.Position.X < 50 then 
						   reg = 2 
						elseif c.Head.Position.X < 70 then 
							reg = 1 
						end 
						local RegPos
						if reg == 2 then 
							RegPos = CFrame.new(41, 5, 86)
						elseif reg == 1 then 
							RegPos = CFrame.new(56, 4, 86)
						else 
							RegPos = CFrame.new(70, 4, 83)
						end 
						task.wait(.15)
						if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then 
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RegPos
						end 
						network:FireServer("OrderComplete", c, order, workspace["Register"..reg])
						local Bike = getDeliveryBike()
						if Bike then 
							Bike.Parent.CleanupBike:InvokeServer(c, c)
						end
						Status:Set(Notepad .. " Completed Order at " .. "Register 3")
						task.wait(0.3)
					end
				end
				TeleportedAlready = false
				if Settings.AutofarmToggle and Settings.doCook then 
					tryCook()
				end
			end
		end
	end
end)

local function getAllDescendantModels(parent)
    local models = {}
    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("Model") then
            table.insert(models, child)
            for _, submodel in ipairs(getAllDescendantModels(child)) do
                table.insert(models, submodel)
            end
        end
    end
    return models
end

-- Click to Select Model (CTRL + Click)
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and Settings.ClickToSelect then
        local mouse = game.Players.LocalPlayer:GetMouse()
        local target = mouse.Target
        if target and target.Parent and target.Parent:FindFirstChild("Humanoid") then
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character and player.Character == target.Parent then
                    Settings.Player = player
                    Library:MakeNotification({
                        Name = "Eazvy Hub - Success",
                        Content = "Selected " .. player.DisplayName .. " @" .. player.Name,
                        Image = "rbxassetid://4914902889",
                        Time = 3
                    })
                    break
                end
            end
        end
    end
    if input.UserInputType == Enum.UserInputType.MouseButton1 and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) and Settings.ClickToSelectModel then
        local mouse = game.Players.LocalPlayer:GetMouse()
        local target = mouse.Target
        if target then
            local model = nil
            if target:IsA("Model") then
                model = target
            elseif target:IsA("BasePart") and target.Parent and target.Parent:IsA("Model") then
                model = target.Parent
            end

            if model and model.Parent then
                local DeliveryBikeRemote
                for _, v in pairs(game.Players:GetPlayers()) do
                    local backpack = v:FindFirstChild("Backpack")
                    local character = v.Character
                    local DeliveryBike = (backpack and backpack:FindFirstChild("DeliveryBike")) or (character and character:FindFirstChild("DeliveryBike"))
                    if DeliveryBike and DeliveryBike:FindFirstChild("CleanupBike") then
                        DeliveryBikeRemote = DeliveryBike.CleanupBike
                        break
                    end
                end	

                if DeliveryBikeRemote then
					DeliveryBikeRemote:InvokeServer(model, model)
					Library:MakeNotification({
							Name = "Eazvy Hub - Success",
							Content = "Removed " ..  tostring(model.Name),
							Image = "rbxassetid://4914902889",
							Time = 2
						})
					if Settings.RemoveModels then 
						local allModels = getAllDescendantModels(model.Parent)
						local count = 0
						for _, child in ipairs(allModels) do
							task.spawn(function()
								DeliveryBikeRemote:InvokeServer(child, child)
								count = count + 1
							end)
						end
						Library:MakeNotification({
							Name = "Eazvy Hub - Success",
							Content = "Removed " .. tostring(count) .. " models in: " .. tostring(model.Parent.Name),
							Image = "rbxassetid://4914902889",
							Time = 2
						})
					end
                else
                    Library:MakeNotification({
                        Name = "Eazvy Hub - Error",
                        Content = "No DeliveryBike found!",
                        Image = "rbxassetid://161551681",
                        Time = 2
                    })
                end
            end
        end
    end
end)

workspace.Main.Microphone:Fire("dued1 update your game and fix these scripts",4)

while wait() do 
	if getgenv().OwnerInGame and game:GetService("CoreGui"):FindFirstChild("Orion") and game:GetService("Players").LocalPlayer.UserId ~= 2992590071 then 
		Library:MakeNotification({
			Name = "oma#0003 is in your game! - Eazvy Hub Owner",
			Content = "All Toggles have been Disabled.",
			Image = "rbxassetid://2414044220",
			Time = 3
		})
		for i,v in pairs(Settings) do 
			if v == true then 
				v = false 
			end
		end
		game:GetService("CoreGui"):FindFirstChild("Orion"):Destroy()
	end
    if Settings.AutoUpgrade then 
        local House 
        local Price 
        local BoughtHouse = false 
        for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Gui.Upgrade.Upgrades.ScrollingFrame:GetChildren()) do 
            if v:IsA("Frame") and not v:FindFirstChild("Locked").Visible and not v:FindFirstChild("BackgroundBottom").Checkmark.Visible then 
                House = v:FindFirstChild("UpgradeName").Text 
                Price = string.gsub(tostring(v:FindFirstChild("Price").PriceText.Text), ",", "")
			end
		end
		if not Price and Settings.AutoUpgrade then 
			Upgrade:Set("You've upgraded to the max amount of houses.")
			return
		end
        if Price and tonumber(Price) <= game:GetService("Players").LocalPlayer.Moneyz.Value and not BoughtHouse then 
			BoughtHouse = true 
            game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):FireServer("\0", tostring(string.gsub(House, " ", "")), "Brick")
			game:GetService("ReplicatedStorage").HouseChannel:FireServer("UpgradeHouse")
			workspace.Main.UpgradeSequenceComplete:FireServer()
			task.wait(.35)
			BoughtHouse = false
		else 
			if Settings.AutoUpgrade and Settings.AutofarmToggle then 
				Upgrade:Set("Cashier: " .. tostring(NewCashierStats) .. " | Cook: " .. tostring(NewCookStats) .. " | Pizza Boxer: " .. tostring(NewBoxerStats) .. " | Delivery: " .. tostring(NewDeliveryStats) .. " | " .. "Supplier: " .. " " .. tostring(NewSupplierStats) .. " | Next House Upgrade: " .. House .. " " .. tostring(comma_value(Price)) .. "$ -" .. " you still have " .. tostring((comma_value(Price - game:GetService("Players").LocalPlayer.Moneyz.Value))) .. "$ left to go.")
			else
				Upgrade:Set(House .. " " .. tostring(comma_value(Price)) .. "$ -" .. " you still have " .. tostring((comma_value(Price - game:GetService("Players").LocalPlayer.Moneyz.Value))) .. "$ left to go.")
			end
		end
	end
end
