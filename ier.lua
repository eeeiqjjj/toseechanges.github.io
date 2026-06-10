-- ============================================
-- RINGTA SCRIPTS - WindUI Main Setup
-- ============================================

-- Load WindUI
WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- Get Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- ============================================
-- WINDUI WINDOW SETUP
-- ============================================

local Purple = Color3.fromHex("#7775F2")
local Yellow = Color3.fromHex("#ECA201")
local Green = Color3.fromHex("#10C550")
local Grey = Color3.fromHex("#83889E")
local Blue = Color3.fromHex("#257AF7")
local Red = Color3.fromHex("#EF4F1D")
local Cyan = Color3.fromHex("#00BFFF")

-- Create Main Window
local Window = WindUI:CreateWindow({
    Title = "RINGTA SCRIPTS",
    Folder = "RINGTA",
    Icon = "star",
    NewElements = true,
    HideSearchBar = false,
    
    OpenButton = {
        Title = "Open RINGTA",
        CornerRadius = UDim.new(0, 6),
        StrokeThickness = 2,
        Enabled = true,
        Draggable = true,
        OnlyMobile = false,
        Color = ColorSequence.new(
            Color3.fromRGB(200, 0, 255),
            Color3.fromRGB(0, 200, 255)
        )
    },
    Topbar = {
        Height = 44,
        ButtonsType = "Default",
    },
})

-- ============================================
-- HOME TAB
-- ============================================

local HomeTab = Window:Tab({
    Title = "Home",
    Icon = "star",
    IconColor = Purple,
    IconShape = "Square",
})

HomeTab:Paragraph({
    Title = "RINGTA SCRIPTS",
    Desc = "Join our Discord: discord.gg/ringta\nSubscribe on YouTube: @RINGTASCRIPTS",
    Buttons = {
        {
            Title = "Discord",
            Icon = "message-circle",
            Callback = function()
                if setclipboard then
                    setclipboard("discord.gg/ringta")
                    WindUI:Notify({
                        Title = "Invite Copied",
                        Content = "Discord Invite copied!",
                        Duration = 5
                    })
                end
            end,
        },
        {
            Title = "Youtube",
            Icon = "youtube",
            Callback = function()
                if setclipboard then
                    setclipboard("https://www.youtube.com/@RINGTASCRIPTS")
                    WindUI:Notify({
                        Title = "Link Copied",
                        Content = "Youtube Link copied!",
                        Duration = 5
                    })
                end
            end,
        }
    }
})

HomeTab:Space()

HomeTab:Section({
    Title = "Welcome to RINGTA SCRIPTS!",
    TextSize = 18,
    FontWeight = Enum.FontWeight.SemiBold,
})

HomeTab:Space()

HomeTab:Section({
    Title = "Features: Auto Void, ESP, Speed, Movement hacks, and more!\nPress V to toggle speed. Use the tabs to access all features.",
    TextSize = 14,
    TextTransparency = 0.35,
    FontWeight = Enum.FontWeight.Medium,
})

-- ============================================
-- SECTION LAYOUT
-- ============================================

local CombatSection = Window:Section({
    Title = "Combat",
})

local PlayerSection = Window:Section({
    Title = "Player",
})

local WorldSection = Window:Section({
    Title = "World",
})

local VisualSection = Window:Section({
    Title = "Visuals",
})

local UtilitySection = Window:Section({
    Title = "Utility",
})

-- ============================================
-- COMBAT TAB
-- ============================================

local CombatTab = CombatSection:Tab({
    Title = "Combat",
    Icon = "zap",
    IconColor = Yellow,
    IconShape = "Square",
})

local ComboSection = CombatTab:Section({
    Title = "Combat Features",
    Box = true,
    BoxBorder = true,
    Opened = true,
})

ComboSection:Toggle({
    Title = "Auto Block",
    Desc = "Automatically block enemy attacks",
    Value = false,
    Callback = function(state)
        print("Auto Block:", state)
        WindUI:Notify({
            Title = "Auto Block",
            Content = state and "Enabled" or "Disabled",
            Duration = 2
        })
    end
})

ComboSection:Space()

ComboSection:Toggle({
    Title = "Anti Invisibility",
    Desc = "Stop enemy invis animations",
    Value = false,
    Callback = function(state)
        print("Anti Invisibility:", state)
        WindUI:Notify({
            Title = "Anti Invisibility",
            Content = state and "Enabled" or "Disabled",
            Duration = 2
        })
    end
})

ComboSection:Space()

ComboSection:Toggle({
    Title = "Auto Roast",
    Desc = "Send roast message on kill",
    Value = false,
    Callback = function(state)
        print("Auto Roast:", state)
        WindUI:Notify({
            Title = "Auto Roast",
            Content = state and "Enabled" or "Disabled",
            Duration = 2
        })
    end
})

-- ============================================
-- PLAYER TAB
-- ============================================

local PlayerTab = PlayerSection:Tab({
    Title = "Player",
    Icon = "person-standing",
    IconColor = Blue,
    IconShape = "Square",
})

local PlayerSpeedSection = PlayerTab:Section({
    Title = "Player Movement",
    Box = true,
    BoxBorder = true,
    Opened = true,
})

PlayerSpeedSection:Toggle({
    Title = "Speed Boost",
    Desc = "Press V to toggle (Hotkey)",
    Value = false,
    Callback = function(state)
        print("Speed Boost:", state)
        WindUI:Notify({
            Title = "Speed Boost",
            Content = state and "Enabled" or "Disabled",
            Duration = 2
        })
    end
})

PlayerSpeedSection:Space()

PlayerSpeedSection:Slider({
    Title = "Speed Value",
    IsTooltip = true,
    Step = 1,
    Value = {
        Min = 1,
        Max = 50,
        Default = 9,
    },
    Callback = function(value)
        print("Speed Value:", value)
    end
})

PlayerSpeedSection:Space()

PlayerSpeedSection:Toggle({
    Title = "Jump Boost",
    Value = false,
    Callback = function(state)
        print("Jump Boost:", state)
    end
})

PlayerSpeedSection:Space()

PlayerSpeedSection:Toggle({
    Title = "No Stun",
    Desc = "Keep walkspeed at 25",
    Value = false,
    Callback = function(state)
        print("No Stun:", state)
    end
})

-- ============================================
-- WORLD TAB
-- ============================================

local WorldTab = WorldSection:Tab({
    Title = "World",
    Icon = "earth",
    IconColor = Green,
    IconShape = "Square",
})

local WorldObjectsSection = WorldTab:Section({
    Title = "World Objects",
    Box = true,
    BoxBorder = true,
    Opened = true,
})

WorldObjectsSection:Toggle({
    Title = "Hide Benches",
    Desc = "Make benches invisible",
    Value = false,
    Callback = function(state)
        print("Hide Benches:", state)
    end
})

WorldObjectsSection:Space()

WorldObjectsSection:Toggle({
    Title = "Hide Trees",
    Desc = "Make trees invisible",
    Value = false,
    Callback = function(state)
        print("Hide Trees:", state)
    end
})

WorldObjectsSection:Space()

WorldObjectsSection:Toggle({
    Title = "Hide Walls",
    Desc = "Make walls invisible",
    Value = false,
    Callback = function(state)
        print("Hide Walls:", state)
    end
})

-- ============================================
-- VISUALS TAB
-- ============================================

local VisualsTab = VisualSection:Tab({
    Title = "Visuals",
    Icon = "eye",
    IconColor = Cyan,
    IconShape = "Square",
})

local ESPSection = VisualsTab:Section({
    Title = "ESP",
    Box = true,
    BoxBorder = true,
    Opened = true,
})

ESPSection:Toggle({
    Title = "ESP Everyone",
    Desc = "Show player info (name, ping, platform, streak)",
    Value = false,
    Callback = function(state)
        print("ESP Everyone:", state)
        WindUI:Notify({
            Title = "ESP",
            Content = state and "Enabled" or "Disabled",
            Duration = 2
        })
    end
})

ESPSection:Space()

ESPSection:Toggle({
    Title = "ESP Ultimate Bar",
    Desc = "Show ultimate charge percentage",
    Value = false,
    Callback = function(state)
        print("ESP Ult Bar:", state)
    end
})

ESPSection:Space()

ESPSection:Toggle({
    Title = "Rainbow Chams",
    Desc = "Highlight players with rainbow effect",
    Value = false,
    Callback = function(state)
        print("Rainbow Chams:", state)
    end
})

-- ============================================
-- UTILITY TAB
-- ============================================

local UtilityTab = UtilitySection:Tab({
    Title = "Utility",
    Icon = "wrench",
    IconColor = Grey,
    IconShape = "Square",
})

local TeleportSection = UtilityTab:Section({
    Title = "Teleport",
    Box = true,
    BoxBorder = true,
    Opened = true,
})

local targetPlayerName = ""

TeleportSection:Input({
    Title = "Player Name",
    Placeholder = "Enter player name...",
    Callback = function(value)
        targetPlayerName = value
        print("Target Player:", value)
    end
})

TeleportSection:Space()

TeleportSection:Button({
    Title = "Teleport to Player",
    Color = Blue,
    Icon = "",
    Justify = "Center",
    Callback = function()
        print("Teleporting to:", targetPlayerName)
        WindUI:Notify({
            Title = "Teleport",
            Content = "Teleporting to " .. targetPlayerName,
            Duration = 2
        })
    end
})

UtilityTab:Space()

local MiscSection = UtilityTab:Section({
    Title = "Miscellaneous",
    Box = true,
    BoxBorder = true,
    Opened = true,
})

MiscSection:Button({
    Title = "Copy Discord",
    Color = Purple,
    Icon = "message-circle",
    Justify = "Center",
    Callback = function()
        if setclipboard then
            setclipboard("discord.gg/ringta")
            WindUI:Notify({
                Title = "Copied",
                Content = "Discord invite copied!",
                Duration = 2
            })
        end
    end
})

MiscSection:Space()

MiscSection:Button({
    Title = "Rejoin Server",
    Color = Green,
    Icon = "redo-2",
    Justify = "Center",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        TeleportService:Teleport(game.PlaceId)
    end
})

MiscSection:Space()

MiscSection:Button({
    Title = "Close Script",
    Color = Red,
    Icon = "x",
    Justify = "Center",
    Callback = function()
        Window:Destroy()
    end
})

-- ============================================
-- STARTUP NOTIFICATION
-- ============================================

WindUI:Notify({
    Title = "RINGTA SCRIPTS",
    Content = "Script loaded! Press V for speed toggle.",
    Icon = "star",
    Duration = 5
})

print("✓ RINGTA Scripts loaded successfully!")
