_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Codersrules/dqrks-c/main/guiLibrary.lua?token=GHSAT0AAAAAABVLC4UKB4QRBVA4KJNMO7CKYU64WHA')))()

local w = library:CreateWindow("Dqrk's Exploits") -- Creates the window

local b = w:CreateFolder("Master's Diff Chart") -- Creates the folder(U will put here your buttons,etc)

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
