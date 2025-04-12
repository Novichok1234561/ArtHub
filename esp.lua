local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/CoolManYesYes/OrionLib/refs/heads/main/source.txt')))()
local Window = OrionLib:MakeWindow({
    Name = "Q1nly",
    HidePremium = false,
    SaveConfig = false,           
    ConfigFolder = nil,       
    IntroEnabled = true,
    IntroText = "Welcome, " .. game.Players.LocalPlayer.Name,
    IntroIcon = "rbxassetid://82778010291487"
})
local Tab = Window:MakeTab({
	Name = "Help",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddSlider({
	Name = "Slider",
	Min = 16,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "speed",
	Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Tab:AddSlider({
	Name = "Jump Huck",
	Min = 50,
	Max = 2000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "jump power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
OrionLib:MakeNotification({
	Name = "Q1nly",
	Content = "Hello my friend",
	Image = "rbxassetid://4483345998",
	Time = 2
})
Tab:AddButton({
	Name = "Fly",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
  	end    
})
Tab:AddButton({
	Name = "Noclip",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Mirgarr/noclip-script-roblox/refs/heads/main/Noclip"))()
  	end    
})
Tab:AddButton({
	Name = "Esp",
	Callback = function()
      		local Esp = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/x114/RobloxScripts/main/OpenSourceEsp"))()
-- Boxes --
Esp.Box = true
Esp.BoxColor = Color3.fromRGB(255,255,255)
Esp.BoxOutline = true
Esp.BoxOutlineColor = Color3.fromRGB(0,0,0)
-- HealthBars --
Esp.HealthBar = false
Esp.HealthBarSide = "Left" -- Left,Bottom,Right
-- Names --
Esp.Names = true
Esp.NamesColor = Color3.fromRGB(255,255,255)
Esp.NamesOutline = true
Esp.NamesFont = 2
Esp.NamesSize = 13
  	end    
})
