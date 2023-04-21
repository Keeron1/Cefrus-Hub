getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

--Values



local Window = Rayfield:CreateWindow({
    Name = "Cefrus Hub | Demon Soul Simulator",
    LoadingTitle = "Cefrus Hub | Demon Soul Simulator",
    LoadingSubtitle = "by Purity #0311",
    ConfigurationSaving = {
       Enabled = true,
    
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Cefrus Hub | Demon Soul Simulator",
       Subtitle = "Key System",
       Note = "https://cefrus.xyz/cefruskey",
       FileName = "CefrusHubKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       Key = {"ckey89323"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })


 local AutoSkill = false

 function AutoSkillFunc()
    while true do task.wait()
        local args = {
            [1] = "skill001"
        }
        
        game:GetService("ReplicatedStorage").Events.Player.SkillEvent:FireServer(unpack(args))
    end
 
 
 
    local Tab = Window:CreateTab("Main")
    local Section = Tab:CreateSection("Main")

 -- Auto Swing
 local Toggle = Tab:CreateToggle({
    Name = "Auto Skill",
    CurrentValue = false,
    Flag = "autoskill", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        JumDev:CoroutineLoop({
            Name = 'AutoClick'
            Function = AutoSkillFunc
        })
    end,
 })













Rayfield:LoadConfiguration()