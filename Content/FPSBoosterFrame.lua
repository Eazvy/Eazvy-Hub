if not getgenv().FpsBooster then 
   getgenv().FpsBooster = true 
end 

if FpsBooster then 
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ass"
    local Frame = Instance.new("Frame")
    local Frame_2 = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local ImageLabel = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(26, 32, 58)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 0, 0, 0) 
    Frame.Size = UDim2.new(1, 0, 1, 0)

    Frame_2.Parent = ScreenGui
    Frame_2.BackgroundColor3 = Color3.fromRGB(38, 45, 71)
    Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = Frame.Position 
    Frame_2.Size = UDim2.new(0, 250, 0, 764)

    TextLabel.Parent = Frame_2
    TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.0230534486, 0, 0.0134328362, 0)
    TextLabel.Size = UDim2.new(0, 302, 0, 50)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = "User: EazvyHub"
    TextLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
    TextLabel.TextSize = 35.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    ImageLabel.Parent = Frame_2
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.0414513648, 0, 0.0874079913, 0)
    ImageLabel.Size = UDim2.new(0, 192, 0, 161)
    ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

    UICorner.CornerRadius = UDim.new(0.5, 0)
    UICorner.Parent = ImageLabel

    local function KOQWIK_fake_script() 
        local script = Instance.new('LocalScript', TextLabel)

        repeat task.wait() until game:IsLoaded()
        local Text = script.Parent 
        local CheckName = "User: " .. game.Players.LocalPlayer.DisplayName 
        if game.Players.LocalPlayer.DisplayName  ~= game.Players.LocalPlayer.Name then 
        CheckName = CheckName .. " @"..game.Players.LocalPlayer.Name 
        end
        Text.Text = CheckName
    end
    coroutine.wrap(KOQWIK_fake_script)()
    local function RPZXBOV_fake_script()
        local script = Instance.new('LocalScript', ImageLabel)

        local Players = game:GetService("Players")
        
        local player = Players.LocalPlayer
        
        local userId = player.UserId
        local thumbType = Enum.ThumbnailType.HeadShot
        local thumbSize = Enum.ThumbnailSize.Size420x420
        local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
        
        local imageLabel = script.Parent
        imageLabel.Image = content
    end
    coroutine.wrap(RPZXBOV_fake_script)()
else 
  for i,v in pairs(game.CoreGui:GetChildren()) do 
    if v.Name == "ass" then 
        v:Destroy()
    end 
   end 
end 
