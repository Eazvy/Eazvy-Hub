--Credits to RIP#6666 for this.
-- MADE BY RIP#6666
-- send issues or suggestions to my discord: discord.gg/rips

if not game['Loaded'] or not game:GetService('Players')['LocalPlayer'] then
    game['Loaded']:Wait();
    game:WaitForChild(game:GetService('Players'));
    game:GetService('Players'):WaitForChild(game:GetService('Players').LocalPlayer.Name)
end

local HiddenProps = sethiddenproperty or set_hidden_property or sethiddenprop or setscriptable and function(loc,prop,val) if not loc then return true end end

  for _,v in pairs(game:GetDescendants()) do 
            if v:IsA("MeshPart") then 
                HiddenProps(v,"RenderFidelityReplicate",Enum.RenderFidelity.Performance)
                v.CastShadow = false 
            end
        end

local LP = game:GetService('Players').LocalPlayer
--// Physical/UI Derender
for _, v in next, game:GetDescendants() do
    if v:IsA('Workspace') then
        sethiddenproperty(v, 'StreamingTargetRadius', 64)
        sethiddenproperty(v, 'StreamingPauseMode', 2)
        sethiddenproperty(v.Terrain, 'Decoration', false)
        v.Terrain.Elasticity = 0
        v.Terrain.WaterWaveSize = 0
        v.Terrain.WaterWaveSpeed = 0
        v.Terrain.WaterReflectance = 0
        v.Terrain.WaterTransparency = 1
    elseif v:IsA('NetworkClient') then
        v:SetOutgoingKBPSLimit(100)
    elseif v:IsA('Lighting') then
        sethiddenproperty(v, 'Technology', 2)
        v.GlobalShadows = false
        v.FogEnd = 1/0
        v.Brightness = 0
    elseif v:IsA('Model') then
        sethiddenproperty(v, 'LevelOfDetail', 1)
    elseif LP and v == LP then
        v.ReplicationFocus = nil
    elseif v:IsA('Decal') or v:IsA('Texture') then
        v.Transparency = 1
    elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
        v.Enabled = false
    elseif v:IsA('SpecialMesh') then
        v.TextureId = ''
        v.MeshId = ''
    elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
        v.Enabled = false
    elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('Pants') or v:IsA('Shirt') then
        v[v.ClassName..'Template'] = ''
    elseif v:IsA('Explosion') then
        v.BlastPressure = 0
        v.BlastRadius = 0
        v.Visible = false
        v.Position = Vector3.new(0, 0, 0)
    elseif v:IsA('ForceField') then
        v.Visible = false
    elseif v:IsA('ShirtGraphic') then
        v.Graphic = ''
    elseif v:IsA('MeshPart') then
        v.MeshId = ''
        v.TextureID = ''
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('CharacterMesh') then
        v.BaseTextureId = ''
        v.MeshId = ''
        v.OverlayTextureId = ''
    elseif v:IsA('Sound') then
        v.SoundId = ''
        v.Volume = 0
    end
end

local WorkspaceChildAdded;WorkspaceChildAdded = workspace.DescendantAdded:Connect(function(v)
    wait()
    if v:IsA('Model') then
        sethiddenproperty(v, 'LevelOfDetail', 1)
    elseif LP and v == LP then
        v.ReplicationFocus = nil
    elseif v:IsA('Decal') or v:IsA('Texture') or v:IsA('Beam') then
        v.Transparency = 1
    elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
        v.Enabled = false
    elseif v:IsA('SpecialMesh') then
        v.TextureId = ''
        v.MeshId = ''
    elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or v:IsA('DepthOfFieldEffect')  then
        v.Enabled = false
    elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('Pants') or v:IsA('Shirt') then
        v[v.ClassName..'Template'] = ''
    elseif v:IsA('Explosion') then
        v.BlastPressure = 0
        v.BlastRadius = 0
        v.Visible = false
        v.Position = Vector3.new(0, 0, 0)
    elseif v:IsA('ForceField') then
        v.Visible = false
    elseif v:IsA('ShirtGraphic') then
        v.Graphic = ''
    elseif v:IsA('MeshPart') then
        v.MeshId = ''
        v.TextureID = ''
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('CharacterMesh') then
        v.BaseTextureId = ''
        v.MeshId = ''
        v.OverlayTextureId = ''
    elseif v:IsA('Sound') then
        v.SoundId = ''
        v.Volume = 0
    end
end)



_G.Settings = {
    Players = {
        ["Ignore Me"] = false, -- Ignore your Character
        ["Ignore Others"] = false -- Ignore other Characters
    },
    Meshes = {
        Destroy = true, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = true, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = true, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}

if not _G.Ignore then
    _G.Ignore = {} -- Add Instances to this table to ignore them (e.g. _G.Ignore = {workspace.Map, workspace.Map2})
end
if not _G.WaitPerAmount then
    _G.WaitPerAmount = 500 -- Set Higher or Lower depending on your computer's performance
end
if _G.SendNotifications == nil then
    _G.SendNotifications = false -- Set to false if you don't want notifications
end
if _G.ConsoleLogs == nil then
    _G.ConsoleLogs = false -- Set to true if you want console logs (mainly for debugging)
end



if not game:IsLoaded() then
    repeat
        task.wait()
    until game:IsLoaded()
end
if not _G.Settings then
    _G.Settings = {
        Players = {
            ["Ignore Me"] = true,
            ["Ignore Others"] = true,
            ["Ignore Tools"] = true
        },
        Meshes = {
            NoMesh = false,
            NoTexture = false,
            Destroy = false
        },
        Images = {
            Invisible = true,
            Destroy = false
        },
        Explosions = {
            Smaller = true,
            Invisible = false, -- Not recommended for PVP games
            Destroy = false -- Not recommended for PVP games
        },
        Particles = {
            Invisible = true,
            Destroy = false
        },
        TextLabels = {
            LowerQuality = false,
            Invisible = false,
            Destroy = false
        },
        MeshParts = {
            LowerQuality = true,
            Invisible = false,
            NoTexture = false,
            NoMesh = false,
            Destroy = false
        },
        Other = {
            ["FPS Cap"] = 240, -- Set this true to uncap FPS
            ["No Camera Effects"] = true,
            ["No Clothes"] = true,
            ["Low Water Graphics"] = true,
            ["No Shadows"] = true,
            ["Low Rendering"] = true,
            ["Low Quality Parts"] = true,
            ["Low Quality Models"] = true,
            ["Reset Materials"] = true,
            ["Lower Quality MeshParts"] = true
        }
    }
end
local Players, Lighting, StarterGui, MaterialService = game:GetService("Players"), game:GetService("Lighting"), game:GetService("StarterGui"), game:GetService("MaterialService")
local ME, CanBeEnabled = Players.LocalPlayer, {"ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles"}
local function PartOfCharacter(Instance)
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= ME and v.Character and Instance:IsDescendantOf(v.Character) then
            return true
        end
    end
    return false
end
local function DescendantOfIgnore(Instance)
    for i, v in pairs(_G.Ignore) do
        if Instance:IsDescendantOf(v) then
            return true
        end
    end
    return false
end
local function CheckIfBad(Instance)
    if not Instance:IsDescendantOf(Players) and (_G.Settings.Players["Ignore Others"] and not PartOfCharacter(Instance) or not _G.Settings.Players["Ignore Others"]) and (_G.Settings.Players["Ignore Me"] and ME.Character and not Instance:IsDescendantOf(ME.Character) or not _G.Settings.Players["Ignore Me"]) and (_G.Settings.Players["Ignore Tools"] and not Instance:IsA("BackpackItem") and not Instance:FindFirstAncestorWhichIsA("BackpackItem") or not _G.Settings.Players["Ignore Tools"])--[[not PartOfCharacter(Instance)]] and (_G.Ignore and not table.find(_G.Ignore, Instance) and not DescendantOfIgnore(Instance) or (not _G.Ignore or type(_G.Ignore) ~= "table" or #_G.Ignore <= 0)) then
        if Instance:IsA("DataModelMesh") then
            if _G.Settings.Meshes.NoMesh and Instance:IsA("SpecialMesh") then
                Instance.MeshId = ""
            end
            if _G.Settings.Meshes.NoTexture and Instance:IsA("SpecialMesh") then
                Instance.TextureId = ""
            end
            if _G.Settings.Meshes.Destroy or _G.Settings["No Meshes"] then
                Instance:Destroy()
            end
        elseif Instance:IsA("FaceInstance") then
            if _G.Settings.Images.Invisible then
                Instance.Transparency = 1
                Instance.Shiny = 1
            end
            if _G.Settings.Images.LowDetail then
                Instance.Shiny = 1
            end
            if _G.Settings.Images.Destroy then
                Instance:Destroy()
            end
        elseif Instance:IsA("ShirtGraphic") then
            if _G.Settings.Images.Invisible then
                Instance.Graphic = ""
            end
            if _G.Settings.Images.Destroy then
                Instance:Destroy()
            end
        elseif table.find(CanBeEnabled, Instance.ClassName) then
            if _G.Settings["Invisible Particles"] or _G.Settings["No Particles"] or (_G.Settings.Other and _G.Settings.Other["Invisible Particles"]) or (_G.Settings.Particles and _G.Settings.Particles.Invisible) then
                Instance.Enabled = false
            end
            if (_G.Settings.Other and _G.Settings.Other["No Particles"]) or (_G.Settings.Particles and _G.Settings.Particles.Destroy) then
                Instance:Destroy()
            end
        elseif Instance:IsA("PostEffect") and (_G.Settings["No Camera Effects"] or (_G.Settings.Other and _G.Settings.Other["No Camera Effects"])) then
            Instance.Enabled = false
        elseif Instance:IsA("Explosion") then
            if _G.Settings["Smaller Explosions"] or (_G.Settings.Other and _G.Settings.Other["Smaller Explosions"]) or (_G.Settings.Explosions and _G.Settings.Explosions.Smaller) then
                Instance.BlastPressure = 1
                Instance.BlastRadius = 1
            end
            if _G.Settings["Invisible Explosions"] or (_G.Settings.Other and _G.Settings.Other["Invisible Explosions"]) or (_G.Settings.Explosions and _G.Settings.Explosions.Invisible) then
                Instance.BlastPressure = 1
                Instance.BlastRadius = 1
                Instance.Visible = false
            end
            if _G.Settings["No Explosions"] or (_G.Settings.Other and _G.Settings.Other["No Explosions"]) or (_G.Settings.Explosions and _G.Settings.Explosions.Destroy) then
                Instance:Destroy()
            end
        elseif Instance:IsA("Clothing") or Instance:IsA("SurfaceAppearance") or Instance:IsA("BaseWrap") then
            if _G.Settings["No Clothes"] or (_G.Settings.Other and _G.Settings.Other["No Clothes"]) then
                Instance:Destroy()
            end
        elseif Instance:IsA("BasePart") and not Instance:IsA("MeshPart") then
            if _G.Settings["Low Quality Parts"] or (_G.Settings.Other and _G.Settings.Other["Low Quality Parts"]) then
                Instance.Material = Enum.Material.Plastic
                Instance.Reflectance = 0
            end
        elseif Instance:IsA("TextLabel") and Instance:IsDescendantOf(workspace) then
            if _G.Settings["Lower Quality TextLabels"] or (_G.Settings.Other and _G.Settings.Other["Lower Quality TextLabels"]) or (_G.Settings.TextLabels and _G.Settings.TextLabels.LowerQuality) then
                Instance.Font = Enum.Font.SourceSans
                Instance.TextScaled = false
                Instance.RichText = false
                Instance.TextSize = 14
            end
            if _G.Settings["Invisible TextLabels"] or (_G.Settings.Other and _G.Settings.Other["Invisible TextLabels"]) or (_G.Settings.TextLabels and _G.Settings.TextLabels.Invisible) then
                Instance.Visible = false
            end
            if _G.Settings["No TextLabels"] or (_G.Settings.Other and _G.Settings.Other["No TextLabels"]) or (_G.Settings.TextLabels and _G.Settings.TextLabels.Destroy) then
                Instance:Destroy()
            end
        elseif Instance:IsA("Model") then
            if _G.Settings["Low Quality Models"] or (_G.Settings.Other and _G.Settings.Other["Low Quality Models"]) then
                Instance.LevelOfDetail = 1
            end
        elseif Instance:IsA("MeshPart") then
            if _G.Settings["Low Quality MeshParts"] or (_G.Settings.Other and _G.Settings.Other["Low Quality MeshParts"]) or (_G.Settings.MeshParts and _G.Settings.MeshParts.LowerQuality) then
                Instance.RenderFidelity = 2
                Instance.Reflectance = 0
                Instance.Material = Enum.Material.Plastic
            end
            if _G.Settings["Invisible MeshParts"] or (_G.Settings.Other and _G.Settings.Other["Invisible MeshParts"]) or (_G.Settings.MeshParts and _G.Settings.MeshParts.Invisible) then
                Instance.Transparency = 1
                Instance.RenderFidelity = 2
                Instance.Reflectance = 0
                Instance.Material = Enum.Material.Plastic
            end
            if _G.Settings.MeshParts and _G.Settings.MeshParts.NoTexture then
                Instance.TextureID = ""
            end
            if _G.Settings.MeshParts and _G.Settings.MeshParts.NoMesh then
                Instance.MeshId = ""
            end
            if _G.Settings["No MeshParts"] or (_G.Settings.Other and _G.Settings.Other["No MeshParts"]) or (_G.Settings.MeshParts and _G.Settings.MeshParts.Destroy) then
                Instance:Destroy()
            end
        end
    end
end

coroutine.wrap(pcall)(function()
    if (_G.Settings["Low Water Graphics"] or (_G.Settings.Other and _G.Settings.Other["Low Water Graphics"])) then
        if not workspace:FindFirstChildOfClass("Terrain") then
            repeat
                task.wait()
            until workspace:FindFirstChildOfClass("Terrain")
        end
        workspace:FindFirstChildOfClass("Terrain").WaterWaveSize = 0
        workspace:FindFirstChildOfClass("Terrain").WaterWaveSpeed = 0
        workspace:FindFirstChildOfClass("Terrain").WaterReflectance = 0
        workspace:FindFirstChildOfClass("Terrain").WaterTransparency = 0
        if sethiddenproperty then
            sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", false)
        end
    end
end)
coroutine.wrap(pcall)(function()
    if _G.Settings["No Shadows"] or (_G.Settings.Other and _G.Settings.Other["No Shadows"]) then
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 9e9
        Lighting.ShadowSoftness = 0
        if sethiddenproperty then
            sethiddenproperty(Lighting, "Technology", 2)
        end
    end
end)
coroutine.wrap(pcall)(function()
    if _G.Settings["Low Rendering"] or (_G.Settings.Other and _G.Settings.Other["Low Rendering"]) then
        settings().Rendering.QualityLevel = 1
        settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
    end
end)
coroutine.wrap(pcall)(function()
    if _G.Settings["Reset Materials"] or (_G.Settings.Other and _G.Settings.Other["Reset Materials"]) then
        for i, v in pairs(MaterialService:GetChildren()) do
            v:Destroy()
        end
        MaterialService.Use2022Materials = false
    end
end)
coroutine.wrap(pcall)(function()
    if _G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"]) then
        if setfpscap then
            if type(_G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"])) == "string" or type(_G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"])) == "number" then
                setfpscap(tonumber(_G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"])))
            elseif _G.Settings["FPS Cap"] or (_G.Settings.Other and _G.Settings.Other["FPS Cap"]) == true then
                setfpscap(1e6)
            end
        end
    end
end)
game.DescendantAdded:Connect(function(value)
    wait(_G.LoadedWait or 1)
    CheckIfBad(value)
end)
local Descendants = game:GetDescendants()
local StartNumber = _G.WaitPerAmount or 500
local WaitNumber = _G.WaitPerAmount or 500


for i, v in pairs(Descendants) do
    CheckIfBad(v)
    if i == WaitNumber then
        task.wait()
        if _G.ConsoleLogs then
            print("Loaded " .. i .. "/" .. #Descendants)
        end
        WaitNumber = WaitNumber + StartNumber
    end
end
--game.DescendantAdded:Connect(CheckIfBad)
--[[game.DescendantAdded:Connect(function(value)
    CheckIfBad(value)
end)]]
