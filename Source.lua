local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Manny's Script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local teleportToggle = false
local teleportPosition = CFrame.new(-744.01806640625, 54.25789642333984, -557.5186157226562)

local Tab = Window:MakeTab({
	Name = "Welcome",
	Icon = "rbxassetid://17829948098",
	PremiumOnly = false
})

Tab:AddParagraph("Thank you for using Manny's Script","Thank you for using my script, it means a lot to me!")

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4034483357",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "Rejoin",
    Callback = function()
        game:service("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)

    end    
})

Tab:AddToggle({
    Name = "Rollback",
    Default = false,
    Callback = function(Value)
        
    end    
})

local Tab = Window:MakeTab({
	Name = "Exit",
	Icon = "rbxassetid://9405925538",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "Close gui",
    Callback = function()
        OrionLib:Destroy()
    end    
})


OrionLib:Init()
