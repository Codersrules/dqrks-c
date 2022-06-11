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

US:Button("Dark Dex V3",function()
    if game:GetService'CoreGui':FindFirstChild'Dex'then game:GetService'CoreGui'.Dex:Destroy()end;math.randomseed(tick())local a={}for b=48,57 do table.insert(a,string.char(b))end;for b=65,90 do table.insert(a,string.char(b))end;for b=97,122 do table.insert(a,string.char(b))end;function RandomCharacters(c)if c>0 then return RandomCharacters(c-1)..a[math.random(1,#a)]else return''end end;local d=game:GetObjects('rbxassetid://3567096419')[1]d.Name=RandomCharacters(math.random(5,20))d.Parent=game:GetService('CoreGui')local function e(f,g)local function h(i,j)local k={}local l={script=j}local m={}m.__index=function(n,o)if l[o]==nil then return getfenv()[o]else return l[o]end end;m.__newindex=function(n,o,p)if l[o]==nil then getfenv()[o]=p else l[o]=p end end;setmetatable(k,m)setfenv(i,k)return i end;local function q(j)if j.ClassName=='Script'or j.ClassName=='LocalScript'then spawn(function()h(loadstring(j.Source,'='..j:GetFullName()),j)()end)end;for b,r in pairs(j:GetChildren())do q(r)end end;q(f)end;e(d)0
end)


US:Button("Dark Dex V4",function()
     loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
end)

US:Button("SimpleSpy",function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
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
