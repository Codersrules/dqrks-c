_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Codersrules/dqrks-c/main/guiLibrary.lua')))()
game.Players.LocalPlayer.CameraMaxZoomDistance = 150
game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic

local w = library:CreateWindow("Dqrk's Exploits") -- Creates the window

local b = w:CreateFolder("Master's Diff Chart") -- Creates the folder(U will put here your buttons,etc)

local DS = w:CreateFolder("Doomspire") -- Creates the folder(U will put here your buttons,etc)

local US = w:CreateFolder("Useful Tools")

DS:Label("Garfield Hub",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
})  
    
US:Button("Garfield Hub (OP)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/garfield%20hub", true))()
end)
    
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

US:Button("Dark Dex V3",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)


US:Button("Dark Dex V4",function()
     loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
end)

US:Button("SimpleSpy",function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

US:Button("OwlHub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

US:Toggle("Zoom out",function(bool)
    _G.off = false
    while _G.off == true do
        wait()
        game.Players.LocalPlayer.CameraMaxZoomDistance = 150
        game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
    end
    
    if bool == true then
        _G.off = true
    else
        _G.off = false
    end
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
