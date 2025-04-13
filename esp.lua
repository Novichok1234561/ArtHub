local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
 
local Window = Library:CreateWindow{
    Title = `Fluent {Library.Version}`,
    SubTitle = "by Actual Master Oogway",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 400),
    Resize = true, -- Resize this ^ Size according to a 1920x1080 screen, good for mobile users but may look weird on some devices
    MinSize = Vector2.new(470, 380),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
}
local Tabs = {
    Main = Window:CreateTab{
        Title = "Main",
        Icon = "phosphor-users-bold"
    },
    Settings = Window:CreateTab{
        Title = "Settings",
        Icon = "settings"
    }
}
local Slider = Tabs.Main:CreateSlider("Slider", {
    Title = "Speed Hack",
    Description = "Speed power",
    Default = 16,
    Min = 16,
    Max = 5000,
    Rounding = 1,
    Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})
local Slider = Tabs.Main:CreateSlider("Slider", {
    Title = "Jump Power",
    Description = "Jump power",
    Default = 50,
    Min = 50,
    Max = 5000,
    Rounding = 1,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end
})
Library:Notify{
    Title = "Notification",
    Content = "Hello!",
    SubContent = "Hello my friend!", -- Optional
    Duration = 3 -- Set to nil to make the notification not disappear
}
Tabs.Main:CreateButton{
    Title = "Noclip",
    Description = "Noclip Script",
    Callback = function()
        Window:Dialog{
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Mirgarr/noclip-script-roblox/refs/heads/main/Noclip"))()
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        }
    end
}
Tabs.Main:CreateButton{
    Title = "Fly",
    Description = "Fly script",
    Callback = function()
        Window:Dialog{
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        }
    end
}

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Esp", Default = false })
    Toggle:OnChanged(function(Value)
        if Value == true then
            _G.espits = true
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v:FindFirstChild("Highlight") then
                    --nichego    

                else
                    
                    if v:FindFirstChild("Humanoid")then
                        local esp = Instance.new("Highlight", v)
                        esp.FillColor = Color3.fromRGB(17, 164, 255)                                         
                    end
                end
            end
        else
            _G.espits = false
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v:FindFirstChild("Highlight") then
                    v.Highlight:Destroy()
                end
            end
        end
    end)

    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(character)
            if _G.espits == true then
                local esp = Instance.new("Highlight", character)
                esp.FillColor = Color3.fromRGB(17, 164, 255)
            end
        end)
    end)

    Players.PlayerAdded:Connect(onPlayerAdded)

    local function onCharacterAdded(character)      
        if _G.espits == true then
            local esp = Instance.new("Highlight", character)
            esp.FillColor = Color3.fromRGB(17, 164, 255)
        end
    end

    local function onPlayerAdded(player)
        player.CharacterAdded:Connect(onCharacterAdded)      
        if player.Character then
            onCharacterAdded(player.Character)
        end
    end
    
    for _, player in pairs(Players:GetPlayers()) do
        onPlayerAdded(player)
    end
    
