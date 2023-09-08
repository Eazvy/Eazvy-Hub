--Credits to RIP#6666 for this.
-- MADE BY RIP#6666
-- send issues or suggestions to my discord: discord.gg/rips

--- Don't expect this to be well maintained anymore, as this script has been abandoned ---

local setfflag = setfflag or function(flag, bool)
    game:DefineFastFlag(tostring(flag), bool)
end

local setfint = setfflag or function(flag, int)
    game:DefineFastInt(tostring(flag), tonumber(int))
end

local wait = function(int)
if not int then
   int = 0
end
local t = tick()
repeat task.wait(0) until (tick() - t) >= int
    return (tick() - t), t
end

-- I have two sets of these because some exploits don't like the Boolean being outside of "" ;_; ---
--- Script has been abandoned, these flags may become out of date at any time ---

task.spawn(function()
if not game:GetService("UserInputService").TouchEnabled then -- Arceus X crash fix
--pcall(function() setfflag("DebugRenderForceTechnologyVoxel", true) end) -- Using manual checks now for this
pcall(function() setfflag("TweenServiceOnStepped", true) end)
pcall(function() setfflag("TweenServiceFixPathologicalCase", true) end)
pcall(function() setfflag("UserAtomicCharacterSounds2", true) end)
pcall(function() setfflag("WindowsUseHardwareCursor", true) end)
pcall(function() setfflag("EngineHardwareCursorSupport", true) end)
pcall(function() setfflag("ThrottleLightGridUpdate3", true) end)
pcall(function() setfflag("DebugEnableInterpThrottle", true) end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", true) end)
pcall(function() setfflag("DataModelFasterTaskProcessing", true) end)
pcall(function() setfflag("TaskSchedulerBlockingShutdownInClients", true) end)
pcall(function() setfflag("TaskSchedulerAsyncTasksTimingEnabled", true) end)
pcall(function() setfflag("TaskSchedulerAvoidYieldInBackground", true) end)
pcall(function() setfflag("UseAsyncTaskForMicroVis", true) end)
pcall(function() setfflag("UseAsyncTaskForTexturePack3", true) end)
pcall(function() setfflag("NewRunServiceSignals", true) end)
pcall(function() setfflag("AnimationTrackStepFix", true) end)
pcall(function() setfflag("FutureIsBrightPhase2", false) end)
pcall(function() setfflag("FutureIsBrightPhase3", false) end)
pcall(function() setfflag("MemoryPrioritizationEnabledForTextures", true) end)
pcall(function() setfflag("InterpolateCullDistance", true) end)
pcall(function() setfflag("SimIfNoInterp", true) end)
pcall(function() setfflag("BatchAssetApi", true) end)
pcall(function() setfflag("CharacterTaskQueueReschedule", true) end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", true) end)
pcall(function() setfflag("ReduceTrussSearchDistance2", true) end)
pcall(function() setfflag("RenderInstanceCulling2", true) end)
pcall(function() setfflag("RenderCompositorExperimentEnabled", true) end)
pcall(function() setfflag("RenderEnableHbao", false) end)
pcall(function() setfflag("RenderTC2_DiscardGeometryData2", true) end)
pcall(function() setfflag("RenderTC2_6", true) end)
pcall(function() setfflag("RenderTC2SaveTC1Memory", true) end)
pcall(function() setfflag("RenderFIB3Grass", false) end)
pcall(function() setfflag("RenderHalfresShadowsGlsles", true) end)
pcall(function() setfflag("RenderEnableSurfaceShadows", false) end)
pcall(function() setfflag("RenderShadowUseLastLOD", true) end)
pcall(function() setfflag("RenderLodShadows", false) end)
pcall(function() setfflag("RenderShadowUseHQLOD", false) end)	
pcall(function() setfflag("HumanoidParallelUseManager4", true) end)
pcall(function() setfflag("HumanoidParallelOnStep", true) end)
pcall(function() setfflag("HumanoidParallelOnStep2", true) end)
pcall(function() setfflag("HumanoidParallelFasterWakeUp", true) end)
pcall(function() setfflag("HumanoidParallelFasterSetCollision", true) end)
pcall(function() setfflag("HumanoidParallelSafeUnseat", true) end)
pcall(function() setfflag("HumanoidParallelSafeCofmUpdate", true) end) 
pcall(function() setfflag("HumanoidParallelFixTickleFloor", true) end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor2", true) end)
pcall(function() setfflag("HumanoidDeferredSyncFunction5", true) end)
pcall(function() setfflag("OptimizeNumUpdateEntityCalls6", true) end)
pcall(function() setfflag("AnimatorLodOptOutPhase", true) end)
pcall(function() setfflag("RigidBodyLazyUpdating", true) end)
pcall(function() setfflag("OptimizeNumUpdateEntityCalls7", true) end)
pcall(function() setfflag("HumanoidOnlySetCollisionsOnStateChangeDefaultIsEnabled", true) end)
pcall(function() setfflag("EnableBackgroundModeWhenInactive", true) end)
pcall(function() setfint("RequestingBackgroundExecutionTimeRollout", 10000) end)
pcall(function() setfflag("DeliverLowMemoryWarningsViaPolling", true) end)
pcall(function() setfflag("DynamicallyMoveSoundStorageLocationOnMemoryNotification", true) end)
pcall(function() setfflag("TryCacheAndReuseVideoAssets", true) end)
pcall(function() setfflag("AlwaysPutSoundsOnDiskWhenLowOnMemory", true) end)
end
end)

task.spawn(function()
if not game:GetService("UserInputService").TouchEnabled then -- Arceus X crash fix
--pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end) -- Using manual checks now for this
pcall(function() setfflag("DebugRenderForceTechnologyVoxel", true) end) -- Using manual checks now for this
pcall(function() setfflag("TweenServiceOnStepped", true) end)
pcall(function() setfflag("TweenServiceFixPathologicalCase", true) end)
pcall(function() setfflag("UserAtomicCharacterSounds2", true) end)
pcall(function() setfflag("WindowsUseHardwareCursor", true) end)
pcall(function() setfflag("EngineHardwareCursorSupport", true) end)
pcall(function() setfflag("ThrottleLightGridUpdate3", true) end)
pcall(function() setfflag("DebugEnableInterpThrottle", true) end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", true) end)
pcall(function() setfflag("DataModelFasterTaskProcessing", true) end)
pcall(function() setfflag("TaskSchedulerBlockingShutdownInClients", true) end)
pcall(function() setfflag("TaskSchedulerAsyncTasksTimingEnabled", true) end)
pcall(function() setfflag("TaskSchedulerAvoidYieldInBackground", true) end)
pcall(function() setfflag("UseAsyncTaskForMicroVis", true) end)
pcall(function() setfflag("UseAsyncTaskForTexturePack3", true) end)
pcall(function() setfflag("NewRunServiceSignals", true) end)
pcall(function() setfflag("AnimationTrackStepFix", true) end)
pcall(function() setfflag("FutureIsBrightPhase2", false) end)
pcall(function() setfflag("FutureIsBrightPhase3", false) end)
pcall(function() setfflag("MemoryPrioritizationEnabledForTextures", true) end)
pcall(function() setfflag("InterpolateCullDistance", true) end)
pcall(function() setfflag("SimIfNoInterp", true) end)
pcall(function() setfflag("BatchAssetApi", true) end)
pcall(function() setfflag("CharacterTaskQueueReschedule", true) end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", true) end)
pcall(function() setfflag("ReduceTrussSearchDistance2", true) end)
pcall(function() setfflag("RenderInstanceCulling2", true) end)
pcall(function() setfflag("RenderCompositorExperimentEnabled", true) end)
pcall(function() setfflag("RenderEnableHbao", false) end)
pcall(function() setfflag("RenderTC2_DiscardGeometryData2", true) end)
pcall(function() setfflag("RenderTC2_6", true) end)
pcall(function() setfflag("RenderTC2SaveTC1Memory", true) end)
pcall(function() setfflag("RenderFIB3Grass", false) end)
pcall(function() setfflag("RenderHalfresShadowsGlsles", true) end)
pcall(function() setfflag("RenderEnableSurfaceShadows", false) end)
pcall(function() setfflag("RenderShadowUseLastLOD", true) end)
pcall(function() setfflag("RenderLodShadows", false) end)
pcall(function() setfflag("RenderShadowUseHQLOD", false) end)	
pcall(function() setfflag("HumanoidParallelUseManager4", true) end)
pcall(function() setfflag("HumanoidParallelOnStep", true) end)
pcall(function() setfflag("HumanoidParallelOnStep2", true) end)
pcall(function() setfflag("HumanoidParallelFasterWakeUp", true) end)
pcall(function() setfflag("HumanoidParallelFasterSetCollision", true) end)
pcall(function() setfflag("HumanoidParallelSafeUnseat", true) end)
pcall(function() setfflag("HumanoidParallelSafeCofmUpdate", true) end) 
pcall(function() setfflag("HumanoidParallelFixTickleFloor", true) end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor2", true) end)
pcall(function() setfflag("HumanoidDeferredSyncFunction5", true) end)
pcall(function() setfflag("OptimizeNumUpdateEntityCalls6", true) end)
pcall(function() setfflag("AnimatorLodOptOutPhase", true) end)
pcall(function() setfflag("RigidBodyLazyUpdating", true) end)
pcall(function() setfflag("OptimizeNumUpdateEntityCalls7", true) end)
pcall(function() setfflag("HumanoidOnlySetCollisionsOnStateChangeDefaultIsEnabled", true) end)
pcall(function() setfflag("EnableBackgroundModeWhenInactive", true) end)
pcall(function() setfint("RequestingBackgroundExecutionTimeRollout", 10000) end)
pcall(function() setfflag("DeliverLowMemoryWarningsViaPolling", true) end)
pcall(function() setfflag("DynamicallyMoveSoundStorageLocationOnMemoryNotification", true) end)
pcall(function() setfflag("TryCacheAndReuseVideoAssets", true) end)
pcall(function() setfflag("AlwaysPutSoundsOnDiskWhenLowOnMemory", true) end)
end
end)

task.spawn(function()
pcall(function() 
if not sethiddenproperty and not gethiddenproperty and not game:GetService("UserInputService").TouchEnabled then
pcall(function() setfflag("DebugRenderForceTechnologyVoxel", true) end)
pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end)
end
end)
end)

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Rendering = settings().Rendering
local Diagnostics = settings().Diagnostics
local userSettings = UserSettings():GetService("UserGameSettings")

local cloneref = cloneref or function(ref)
    return ref
end

local function GetGameDescendants()
if getdescendants then
return getdescendants(game)
else
return game:GetDescendants()
end
end

local L = cloneref(game:GetService("Lighting"))
local P = cloneref(game:GetService("Players"))
local W = cloneref(game:GetService("Workspace"))
local T = cloneref(W.Terrain)
local C = T:FindFirstChildOfClass("Clouds")

local function GetLightingDescendants()
if getdescendants then
return getdescendants(L)
else
return L:GetDescendants()
end
end

--- mhm... i liek workspace properties ---

task.spawn(function()
pcall(function() sethiddenproperty(W, "LevelOfDetail", "Disabled") end)
pcall(function() sethiddenproperty(W, "ClientAnimatorThrottling", "Enabled") end)
pcall(function() sethiddenproperty(W, "InterpolationThrottling", "Enabled") end)
pcall(function() sethiddenproperty(W, "MeshPartHeadsAndAccessories", "Disabled") end)
pcall(function() sethiddenproperty(W, "HumanoidOnlySetCollisionsOnStateChange", "Enabled") end)
end)

task.spawn(function()
pcall(function() W.LevelOfDetail = "Disabled" end)
pcall(function() W.ClientAnimatorThrottling = "Enabled" end)
pcall(function() W.InterpolationThrottling = "Enabled" end)
pcall(function() W.HumanoidOnlySetCollisionsOnStateChange = "Enabled" end)
pcall(function() W:SetMeshPartHeadsAndAccessories(false) end)
pcall(function() W:SetPhysicsThrottleEnabled(true) end)
end)

task.spawn(function()
pcall(function() sethiddenproperty(L, "Technology", "Voxel") end)
end)

task.spawn(function()
pcall(function()
for i, v in pairs(GetGameDescendants()) do
	if v:IsA("MeshPart") then
	   pcall(function() sethiddenproperty(v, "RenderFidelityReplicate", Enum.RenderFidelity.Performance) end) --- HAHAHAH, I HAVE FOUND THE SECRET!
           pcall(function() v.CastShadow = false end)
	end
    end
end)
end)

task.spawn(function()
	pcall(function() L.Outlines = false end)
	pcall(function() L.Brightness = 2 end)
	pcall(function() L.GlobalShadows = false end)
	pcall(function() L.EnvironmentDiffuseScale = 0 end)
	pcall(function() L.EnvironmentSpecularScale = 0 end)
        pcall(function() L.FogEnd = 10000000 end) 
	pcall(function() L.FogStart = 0 end)
	pcall(function() L.ExposureCompensation = -0.65 end)
	pcall(function() L.ShadowSoftness = 0 end)
end)

task.spawn(function()
pcall(function()
if C ~= nil then
pcall(function() sethiddenproperty(C, "Enabled", false) end)
pcall(function() C.Enabled = false end)
end
end)
end)

T.ChildAdded:Connect(function(v)
if v:IsA("Clouds") then
pcall(function() sethiddenproperty(v, "Enabled", false)	end)	
pcall(function() v.Enabled = false end)
end
end)

task.spawn(function()
pcall(function() T.Decoration = false end)
pcall(function() sethiddenproperty(T, "Decoration", false) end)
end)

L.ChildAdded:Connect(function(v)
--if v:IsA("PostEffect") then
if v:IsA("DepthOfFieldEffect") then
pcall(function() sethiddenproperty(v, "Enabled", false)	end)
pcall(function() v.Enabled = false end)
end
end)
		
L.Changed:Connect(function(prop)
	if prop == "Brightness" or prop == "GlobalShadows" or prop == "Outlines" or prop == "EnvironmentDiffuseScale" or prop == "EnvironmentSpecularScale" or prop == "FogEnd" or prop == "FogStart" or prop == "ShadowSoftness" or prop == "ExposureCompensation" then 
	pcall(function() L.Outlines = false end)
	pcall(function() L.Brightness = 2 end)
	pcall(function() L.GlobalShadows = false end)
	pcall(function() L.EnvironmentDiffuseScale = 0 end)
	pcall(function() L.EnvironmentSpecularScale = 0 end)
        pcall(function() L.FogEnd = 10000000 end) 
	pcall(function() L.FogStart = 0 end)
	pcall(function() L.ExposureCompensation = -0.65 end)
	pcall(function() L.ShadowSoftness = 0 end)
        end
end)

task.spawn(function()
for i, v in pairs(GetLightingDescendants()) do
	--if v:IsA("PostEffect") then 
	if v:IsA("DepthOfFieldEffect") then
	   pcall(function() v.Enabled = false end)
	end
    end
end)

task.spawn(function()
for i, v in pairs(GetGameDescendants()) do
	if v:IsA("Model") then 
	   pcall(function() v.LevelOfDetail = "Disabled" end)
	   pcall(function() sethiddenproperty(v, "LevelOfDetail", "Disabled") end)
	end
    end
end)


task.spawn(function()
for i, v in pairs(GetLightingDescendants()) do
	--if v:IsA("PostEffect") then
        if v:IsA("DepthOfFieldEffect") then
	v.Changed:Connect(function(prop)
	if prop == "Enabled" then
	pcall(function() v.Enabled = false end)
	end
	end)
	end
    end
end)

task.spawn(function()
for i, v in pairs(GetLightingDescendants()) do
	if v:IsA("Atmosphere") and game.PlaceId ~= 185655149 then -- Bloxburg gets stuck on the loading screen due to an infinite yield, so exclude it from this
	   pcall(function() v:Remove() end)
	   --pcall(function() v:Destroy() end)
	end
    end
end)

pcall(function() Diagnostics.IsScriptStackTracingEnabled = false end)
pcall(function() Rendering.AutoFRMLevel = 1 end)
pcall(function() Rendering.EditQualityLevel = "Level01" end)
pcall(function() Rendering.QualityLevel = "Level01" end)
pcall(function() Rendering.MeshPartDetailLevel = "Level00" end)
pcall(function() Rendering.ReloadAssets = true end)
pcall(function() Rendering.MeshCacheSize = tonumber(999999999) end)
pcall(function() Rendering.FrameRateManager = "On" end)
pcall(function() Rendering.ExportMergeByMaterial = true end)
pcall(function() Rendering.EnableFRM = true end)
pcall(function() userSettings.GraphicsQualityLevel = 0 end)
pcall(function() userSettings.SavedQualityLevel = "0" end)

task.spawn(function()
	for i, v in pairs(GetGameDescendants()) do
		if v:IsA("BasePart") then
		    pcall(function() v.CastShadow = false end)
		end
	end
end)

task.spawn(function()
	for i, v in pairs(GetGameDescendants()) do
		if v:IsA("BasePart") and v.Material == "Plastic" then
			pcall(function() v.Material = "SmoothPlastic" end)
			pcall(function() v.CastShadow = false end)
		end
	end
end)

task.spawn(function()
	for i, v in pairs(GetGameDescendants()) do
		--if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") or v:IsA("Sparkles") then
		if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Sparkles") then
			pcall(function() v.Enabled = false end)
		end
	end
end)

task.spawn(function()
P.PlayerAdded:Connect(function(p)
p.CharacterAdded:Connect(function(c)
for i, v in pairs(c:GetDescendants()) do
	if obj:IsA("BasePart") then
    obj.CastShadow = false
    
    if obj.Material.Name == "Plastic" then
        obj.Material = "SmoothPlastic"
    end
    
    if obj:IsA("MeshPart") then
        pcall(function() sethiddenproperty(obj, "RenderFidelityReplicate", "Performance") end)
    end
--elseif obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Beam") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
elseif obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
    obj.Enabled = false
elseif obj:IsA("Model") then
    obj.LevelOfDetail = "Disabled"
end
end
end)
end)
end)
	
L.ChildAdded:Connect(function()
for i, v in pairs(GetLightingDescendants()) do
	--if v:IsA("PostEffect") then
	if v:IsA("DepthOfFieldEffect") then
	v.Changed:Connect(function(prop)
	if prop == "Enabled" then
	pcall(function() v.Enabled = false end)
	end
	end)
	end
    end
end)
	
local function OnDescendantAdded(obj)
if obj:IsA("BasePart") then
    obj.CastShadow = false
    
    if obj.Material == "Plastic" then
        obj.Material = "SmoothPlastic"
    end
    
    if obj:IsA("MeshPart") then
        pcall(function() sethiddenproperty(obj, "RenderFidelityReplicate", "Performance") end)
    end
--elseif obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Beam") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
elseif obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
    obj.Enabled = false
elseif obj:IsA("Model") then
    obj.LevelOfDetail = "Disabled"
end
end

W.DescendantAdded:Connect(function(v)
OnDescendantAdded(v)
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
