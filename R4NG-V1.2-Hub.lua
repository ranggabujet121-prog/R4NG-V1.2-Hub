local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "R4NG•V1.2 Hub ",
   Icon = "app-window-mac", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "R4NG•V1.2 Loading...",
   LoadingSubtitle = "Coded By: Rangapu bjirr",
   ShowText = "R4NG HUB", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "R4NG-V1.2", -- Create a custom folder for your hub/game
      FileName = "R4NG-V1.2"
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local UniversalTab = Window:CreateTab("Universal Script", "globe")
local Section = UniversalTab:CreateSection("Script universal")

local Slider = UniversalTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 300},
   Increment = 2,
   Suffix = "WS",
   CurrentValue = 16,
   Flag = "WalkSpeedSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
local Slider = UniversalTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 560},
   Increment = 5,
   Suffix = "JP",
   CurrentValue = 10,
   Flag = "JumpPowerSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end,
})
local Button = UniversalTab:CreateButton({
   Name = "FE Invisible GUI V1 (Akan membuka Rayfield lain)",
   Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/Mohamedguguu/invisible-V1-BY-MU/refs/heads/main/Maincode'),true))()
   -- The function that takes place when the button is pressed
   end,
})
local Button =UniversalTab:CreateButton({
   Name = "Fly GUI V3",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = UniversalTab:CreateButton({
   Name = "God Mode GUI",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/mascaracathub/Test-Script/refs/heads/main/obfuscated_script-1765900058766.lua.txt"))()
   -- The function that takes place when the button is pressed
   end,
})
local GameTab = Window:CreateTab("Spesific Game", "gamepad-2")
local Section = GameTab:CreateSection("Section Example")

local Button = GameTab:CreateButton({
   Name = "BrookHaven",
   Callback = function()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Nytherune-Hub-58124"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = GameTab:CreateButton({
   Name = "Escape the tsunami for brainrots",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/osakaTP2/OsakaTP2/main/Escape%20tsunamiV3.5"))()
   -- The function that takes place when the button is pressed
   end,
})

Rayfield:Notify({
   Title = "R4NG-V1.2 Loaded",
   Content = "Semua scriot berhasil dimuat!",
   Duration = 6,
   Image = "check-check",
})

Rayfield:LoadConfiguration()
