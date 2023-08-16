if game.PlaceId == 5769070963 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "All games", HidePremium = false, IntroText = "Скрипт от не негра", SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
_G.autoTap = true

--Functions

function autoTap()
    while _G.autoTap == true do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/markxd07/Luxury-Free/main/Auto_Kaitun.lua"))()
    end
   end


--Tabs
local FarmTab = Window:MakeTab({
    Name = "AutoLimited",
    Icon = "rbxassetid://10633329746",
    PremiumOnly = false
})

--Toggles
FarmTab:AddButton({
    Name = "AutoSearch",
    Callback = function()
        _G.autoTap == Value
        autoTap()           
    end    
})


end
OrionLib:Init()
