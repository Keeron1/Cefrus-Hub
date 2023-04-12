local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- To Do Future:
-- Add Configuration Tab
-- Add AntiAFK

--Values
getgenv().autoSwing = false --use getgenv() instead of _G, its way safer for exploiters to use
getgenv().autoSkill = false -- _G can be accessed by the game developer so that means he can check it and if there is anything he bans the player

local Window = Rayfield:CreateWindow({
    Name = "Cefrus Hub | Anime Lost Simulator",
    LoadingTitle = "Cefrus Hub | Anime Lost Simulator",
    LoadingSubtitle = "by Purity #0311 & Keeron #9602",
    ConfigurationSaving = {
       Enabled = true,
       FileName = "Cefrus Hub"
    },
    KeySystem = true,
    KeySettings = {
       Title = "Cefrus Hub Key System",
       Subtitle = "Key System",
       Note = "Join the discord (https://discord.gg/pRSDRu2nYW)",
       Key = "cefrus hub"
    }
 })
 
 Rayfield:Notify({
    Title = "Visit The #1 Scripts Provider!",
    Content = "https://cefrus.xyz/scripts",
    Duration = 6.5,
    Image = 1042449943778033744,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Will Do!",
          Callback = function()
          print("The user tapped Will Do!")
       end
    },
 },
 })


 local Tab = Window:CreateTab("Main")
 local Section = Tab:CreateSection("Main")

 --Auto Swing
 local Toggle = Tab:CreateToggle({
    Name = "Auto Swing",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().autoSwing = Value
    end,
 })

 --Auto Skill
 local Toggle = Tab:CreateToggle({
    Name = "Auto Skill",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        local args = {
            [1] = "Slot1"
        }
      
        game:GetService("ReplicatedStorage").Remotes:FindFirstChild("Send Information"):FireServer(unpack(args))
    end,
 })

 local Tab = Window:CreateTab("Eggs")
 local Section = Tab:CreateSection("Eggs")
 
 --
 local Toggle = Tab:CreateToggle({
    Name = "Open Eggs",
    CurrentValue = false,
    Flag = "Toggle3",
    Callback = function(Value)
        local args = {
            [1] = "Open_1",
            [2] = true
        }
        
        game:GetService("ReplicatedStorage").Modules.LBConnection.Remotes.AutoSpin:FireServer(unpack(args))
end,
})

local Toggle = Tab:CreateToggle({
    Name = "Open Special Eggs",
    CurrentValue = false,
    Flag = "Toggle4",
    Callback = function(Value)
        local args = {
            [1] = "Sarnek",
            [2] = true
        }
        
        game:GetService("ReplicatedStorage").Remotes.getEggChance:InvokeServer(unpack(args))
end,
})

-- Equip Best Pets
local Toggle = Tab:CreateToggle({
    Name = "Equip Best Pets",
    CurrentValue = false,
    Flag = "Toggle5",
    Callback = function(Value)
        local args = {
            [1] = "Pets"
        }
        
        game:GetService("ReplicatedStorage").Modules.LBConnection.Remotes.EquipBest:FireServer(unpack(args))
end,
})

-- Unequip Pets
local Toggle = Tab:CreateToggle({
    Name = "Unequip Pets",
    CurrentValue = false,
    Flag = "Toggle6",
    Callback = function(Value)
        local args = {
            [1] = "Pets"
        }
        
        game:GetService("ReplicatedStorage").Modules.LBConnection.Remotes.UnequipAll:FireServer(unpack(args))
end,
})

local Tab = Window:CreateTab("Teleport")
local Section = Tab:CreateSection("Teleport")

-- Teleport dropdown
local Dropdown = Tab:CreateDropdown({
    Name = "Teleport",
    Options = {"Spawn","Ninja Town"},
    CurrentOption = {"Spawn"},
    MultipleOptions = false,
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
    -- The function that takes place when the selected option is changed
    -- The variable (Option) is a table of strings for the current selected options
    end,
 })

 -- Teleport button
 local Button = Tab:CreateButton({
    Name = "Click To Teleport",
    Callback = function()
    -- The function that takes place when the button is pressed
    end,
 })

 local Tab = Window:CreateTab("Local Player")
 local Section = Tab:CreateSection("Local Player")

 -- Walkspeed 
 local Slider = Tab:CreateSlider({
	Name = "WalkSpeed",
	Range = {16, 500},
	Increment = 10,
	Suffix = "WalkSpeed",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(s)
		game.Players.LocalPlayer.character.Humanoid.WalkSpeed = s
	end,
})

-- Jumppower
local Slider = Tab:CreateSlider({
	Name = "JumpPower",
	Range = {50, 500},
	Increment = 10,
	Suffix = "JumpPower",
	CurrentValue = 50,
	Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(s)
		game.Players.LocalPlayer.character.Humanoid.JumpPower = s
	end,
})

--Main Run
function main() -- this function will run indefinite so put whatever you need to loop in here
    
    --auto swing
    if getgenv().autoSwing == true then
        game:GetService("ReplicatedStorage").Modules.LBConnection.Remotes.attackFunc:FireServer()
        print("fired attack")
    end


end
game:GetService('RunService'):BindToRenderStep('Main', 201, main); --no touching

Rayfield:LoadConfiguration()