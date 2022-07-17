_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Codersrules/dqrks-c/main/guiLibrary.lua')))()
game.Players.LocalPlayer.CameraMaxZoomDistance = 150
game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic

local w = library:CreateWindow("Dqrk's Exploits") -- Creates the window

local b = w:CreateFolder("Master's Diff Chart") -- Creates the folder(U will put here your buttons,etc)

local BG = w:CreateFolder("Basic Games")

local US = w:CreateFolder("Useful Tools")

BG:Label("Very basic game scripts",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
})  

BG:Button("Bedwars Vape V4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Codersrules/dqrks-c/main/scripts/BedwarsVapeV4.lua", true))()
end)

BG:Button("Arsenal",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
end)

BG:Button("Doomspire Brickbattle",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Codersrules/dqrks-c/main/scripts/garfieldhub.lua", true))()
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

US:Button("Garfield Scripts",function()
    loadstring(game:HttpGet('https://garfieldscripts.xyz/cheatx/scripts/main.lua'))()
end)

US:Button("FROSTHOOK",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Codersrules/dqrks-c/main/scripts/frosthookspy.lua"))()
end)
US:Button("Dark Dex V3",function()
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/Codersrules/dqrks-c/main/scripts/darkdexv3.lua", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

US:Button("Infinite Yield FE",function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

US:Button("Dark Dex V4",function()
     --loadstring(game:HttpGet("https://raw.githubusercontent.com/Codersrules/dqrks-c/main/scripts/darkdexv4.lua"))()
     loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
end)

US:Button("SimpleSpy",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Codersrules/dqrks-c/main/scripts/SimpleSpy.lua"))()
end)

US:Button("OwlHub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Codersrules/dqrks-c/main/scripts/OwlHub.lua"))();
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
