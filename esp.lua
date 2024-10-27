local Rayfield = loadstring(game:HttpGet(`https://pastebin.com/raw/M1z7a7WX`))()
Flags = Rayfield[`Flags`]
local Window = Rayfield:CreateWindow({
   Name = "ArtHub",
   LoadingTitle = "ArtHub",
   LoadingSubtitle = "by q1nly0001",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab = Window:CreateTab("Help", 4483362458) -- Title, Image
local Slider = Tab:CreateSlider({
   Name = "Speed Hack",
   Range = {0, 500},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
local Slider = Tab:CreateSlider({
   Name = "Jump Hack",
   Range = {0, 500},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})
local Button = Tab:CreateButton({
   Name = "Fps Booster",
   Callback = function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Made by RIP#6666
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true -- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    Other = {
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "infinity Yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Dex Explorer",
   Callback = function()
   loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
   end,
})
local Button = Tab:CreateButton({
   Name = "Fly",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Esp",
   Callback = function()
   --BROUGHT TO YOU BY RSCRIPTS.NET--
_G.FriendColor = Color3.fromRGB(0, 0, 0)
_G.EnemyColor = Color3.fromRGB(0, 0, 0)
_G.UseTeamColor = felse
--------------------------------------------------------------------
if _G.Reantheajfdfjdgse then
    return
end
_G.Reantheajfdfjdgse = "susan"
local coregui = game:GetService("CoreGui")
local players = game:GetService("Players")
local plr = players.LocalPlayer
local highlights = {}
function esp(target, color)
    pcall(function()
        if target.Character then
            if not highlights[target] then
                local highlight = Instance.new("Highlight", coregui)
                highlight.Name = target.Name
                highlight.Adornee = target.Character
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = color
                highlights[target] = highlight
            else
                highlights[target].FillColor = color
            end
        end
    end)
end
players.PlayerAdded:Connect(function(v)
    v.CharacterAdded:Connect(function()
        esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
    end)
end)
players.PlayerRemoving:Connect(function(v)
    if highlights[v] then
        highlights[v]:Destroy()
        highlights[v] = nil
    end
end)
for i, v in pairs(players:GetPlayers()) do
    if v ~= plr then
        local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.CharacterAdded:Connect(function()
            local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
            esp(v, color)
        end)
        
        esp(v, color)
    end
end
while task.wait() do
    for i, v in pairs(highlights) do
        local color = _G.UseTeamColor and i.TeamColor.Color or ((plr.TeamColor == i.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.FillColor = color
    end
end
   end,
})
local Button = Tab:CreateButton({
   Name = "Anti Afk",
   Callback = function()
   wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by Dynamic. (please subscribe)"
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox Tried to kick you but we didnt let them kick you :D"wait(2)ab.Text="Status : Active"end)
   end,
})
local Button = Tab:CreateButton({
   Name = "Rejoin",
   Callback = function()
   local TeleportService = game:GetService("TeleportService")
local Players game:GetService("Players")
local Local_Player = game:GetService("Players").LocalPlayer
local Destination = game.PlaceId
local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(Destination, Local_Player)
    end)
    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)
coroutine.resume(Rejoin)
   end,
})
local Button = Tab:CreateButton({
   Name = "Noclip (press V)",
   Callback = function()
   -- Press V to activate
local StealthMode = false -- If game has an anticheat that checks the logs
local Indicator
if not StealthMode then
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    print("NOCLIP: Press V to Activate")
    Indicator = Instance.new("TextLabel", ScreenGui)
    Indicator.AnchorPoint = Vector2.new(0, 1)
    Indicator.Position = UDim2.new(0, 0, 1, 0)
    Indicator.Size = UDim2.new(0, 200, 0, 50)
    Indicator.BackgroundTransparency = 1
    Indicator.TextScaled = true
    Indicator.TextStrokeTransparency = 0
    Indicator.TextColor3 = Color3.new(0, 0, 0)
    Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
    Indicator.Text = "Noclip: Enabled"
end
local noclip = true
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local mouse = player:GetMouse()
mouse.KeyDown:Connect(function(key)
    if key == "v" then
        noclip = not noclip
        if not StealthMode then
            Indicator.Text = "Noclip press V: " .. (noclip and "Enabled" or "Disabled")
        end
    end
end)
while true do
    player = game.Players.LocalPlayer
    character = player.Character
    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end
    game:GetService("RunService").Stepped:wait()
end
   end,
})
local Tab = Window:CreateTab("Scripts", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "The Strongest Battlegrounds",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/KadeHubRepository/main/Latest.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Anim Gojo(tsb)",
   Callback = function()
   _G.settings = {
    ["RedStartupId"] = "rbxassetid://1177475221",
    ["RedHitId"] = "rbxassetid://8625377966",
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/main/Latest.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "The Strongest Battlegrounds",
   Callback = function()
   loadstring(game:HttpGet"https://raw.githubusercontent.com/tamarixr/tamhub/main/bettertamhub.lua")()
   end,
})
local Button = Tab:CreateButton({
   Name = "Basketball Legends",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Novichok1234561/Basketball-Legends/refs/heads/main/Bs"))()
   end,
})
request({Url = `http://127.0.0.1:6463/rpc?v=1`,Method = `POST`,Headers = {[`Content-Type`] = `application/json`,Origin = `https://discord.com`},Body = game:GetService(`HttpService`):JSONEncode({cmd = `INVITE_BROWSER`,nonce = game:GetService(`HttpService`):GenerateGUID(false),args = {code = `zfBsMem7`}})})
local Settings = Window:CreateTab("Settings", 4483362458) -- Title, Image
Settings:CreateKeybind({
    Name = `Toggle`,
    CurrentKeybind = `H`,
    HoldToInteract = false,
    Flag = `ToggleUI`,
    Callback = function()
        getgenv().CloseKey = Flags[`ToggleUI`]
    end,
})
