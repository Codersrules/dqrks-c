_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Codersrules/dqrks-c/main/guiLibrary.lua')))()
game.Players.LocalPlayer.CameraMaxZoomDistance = 150
game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic

local w = library:CreateWindow("Dqrk's Exploits") -- Creates the window

local b = w:CreateFolder("Master's Diff Chart") -- Creates the folder(U will put here your buttons,etc)

local US = w:CreateFolder("Useful Tools")

US:Label("Hacking Scripts",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

US:Button("HYDROXIDE RSPY (D)",function()
    local owner = "Upbolt"
    local branch = "revision"

    local function webImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end

    webImport("init")
    webImport("ui/main")
end)

US:Button("SimpleSpy",function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

US:Button("SimpleSpy",function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

US:DestroyGui()

local obby = nil
b:Label("Checkpoint Hack",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Dropdown("Obby To Beat",{"Normal","Monthly","Pro"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    obby = mob
end)

b:Button("Get all Checkpoints",function()
    if obby == nil then
        return
    end
    if obby == "Normal" then
        local children = game.Workspace.Checkpoints:GetChildren()
        local amnt = #children
        for i = 1, amnt, 1 do
            game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game.Workspace.Checkpoints[i].Part.CFrame + Vector3.new(0, 3, 0)
        end
    elseif obby == "Monthly" then
        local children = game.Workspace.CheckpointsMonthly:GetChildren()
        local amnt = #children
        for i = 1, amnt, 1 do
            game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game.Workspace.CheckpointsMonthly[i].Part.CFrame + Vector3.new(0, 3, 0)
        end
    elseif obby == "Pro" then
        local children = game.Workspace.CheckpointsPro:GetChildren()
        local amnt = #children
        for i = 1, amnt, 1 do
            game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game.Workspace.CheckpointsPro[i].Part.CFrame + Vector3.new(0, 3, 0)
        end
    else
        print("ERROR HAS OCCURED")
    end
end)

b:DestroyGui()
--[[
for i = 1, 31, 1 do
    game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game.Workspace.CheckpointsPro[i].Part.CFrame + Vector3.new(0, 3, 0)
end]]
