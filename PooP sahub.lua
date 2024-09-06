    local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
    if not OrionLib then
        warn("Failed to load OrionLib.")
    end
    
    
    OrionLib:MakeNotification({
        Name = "BerryHub Premium",
        Content = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
        Image = "rbxassetid://134693452691030",
        Time = 5
    })
    
    local Window = OrionLib:MakeWindow({
        Name = "| BerryHub.cc | " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. " | " .. identifyexecutor(),
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "BerryHub.cc"
    })
    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://8772968188"
    sound.Looped = false
    sound.Parent = game.Workspace.Camera
    sound.Volume = 10
    sound:Play()
    
    OrionLib:MakeNotification({
        Name = "BerryHub.cc",
        Content = "Waiting 6 seconds BerryHub Loading",
        Image = "rbxassetid://134693452691030",
        Time = 3
    })
    
    local MainsTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://18327385263",
        PremiumOnly = false
    })
    
    local MobsTab = Window:MakeTab({
        Name = "Mobs",
        Icon = "rbxassetid://7733673987",
        PremiumOnly = false
    })
    
    MainsTab:AddDropdown({
        Name = "Items",
        Default = "",
        Options = {"Big Heart", "Regeneration Cube"},
        Callback = function(Value)
            _G.Regen = Value
        end    
    })
    
    local function GloveSlap()
        if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") == nil and game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool") ~= nil and game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool").Name == "Lantern" then 
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Lantern) 
        end
        wait()
        if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") ~= nil then 
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate() 
        end
    end
    
    fireclickdetector(game.Workspace.Gate1Lever)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(569.70459, 5.96265125, 291.791595, -0.998774111, 5.41272662e-08, -0.0495008193, 5.83387134e-08, 1, -8.36335374e-08, 0.0495008193, -8.64188223e-08, -0.998774111)
    task.wait(11)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2829.57397, -48.8373451, 823.24884, -0.00630493509, -1.14465859e-08, -0.999980152, 4.58390392e-09, 1, -1.14757155e-08, 0.999980152, -4.65616612e-09, -0.00630493509)
    
    MainsTab:AddButton({
        Name = "Get",
        Callback = function()
            if _G.Regen == "Big Heart" then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace["Big Heart"], 1)
            elseif _G.Regen == "Regeneration Cube" then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace["the cube of life"], 1)
            end
        end
    })
    
    MainsTab:AddButton({
        Name = "Start Boss Fight",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3261.60913, -74.5373383, 822.463013, 0.00312531693, 4.57756055e-09, 0.999995112, -3.10946469e-09, 1, -4.56786475e-09, -0.999995112, -3.09517345e-09, 0.00312531693)
            task.wait(0.5)
            fireclickdetector(game.Workspace.ShackLever)
            task.wait(34)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(592.17041, 98.591835, -310.136963, -0.999876201, 5.24858912e-09, -0.0157340318, 3.95640454e-09, 1, 8.2157861e-08, 0.0157340318, 8.20854424e-08, -0.999876201)
        end
    })
    
    MobsTab:AddSlider({
        Name = "Guard HitBox",
        Min = 15,
        Max = 100,
        Default = 15,
        Color = Color3.fromRGB(128, 240, 105),
        Increment = 1,
        ValueName = "Size",
        Callback = function(Value)
            _G.GuardSize = Value
        end    
    })
    
    MobsTab:AddToggle({
        Name = "Auto Hit Guard",
        Default = false,
        Callback = function(Value)
            Golem = Value
            while Golem do 
                task.wait(.25)
                for _, v in pairs(workspace:GetChildren()) do
                    if v.Name == "golem" then
                        GloveSlap()
                        local args = {
                            [1] = "Hit",
                            [2] = v:FindFirstChild("Hitbox")
                        }
                        game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            end
        end
    })
    
    game:GetService("RunService").Heartbeat:Connect(function()
        local golem = game.Workspace:FindFirstChild("golem")
        if golem then
            local hitbox = golem:FindFirstChild("Hitbox")
            if hitbox then
                hitbox.Size = Vector3.new(_G.GuardSize, _G.GuardSize, _G.GuardSize)
            end
        end
    end)
    
    MobsTab:AddSlider({
        Name = "Track Glove HitBox",
        Min = 2,
        Max = 40,
        Default = 2,
        Color = Color3.fromRGB(128, 240, 105),
        Increment = 1,
        ValueName = "Size",
        Callback = function(Value)
            _G.TargetSize = Value
        end    
    })
    
    MobsTab:AddToggle({
        Name = "Auto Hit Track Glove",
        Default = false,
        Callback = function(Value)
            while Value do 
                task.wait(.5)
                for _, v in pairs(workspace:GetChildren()) do
                    if v.Name == "TrackGloveMissile" then
                        GloveSlap()
                        local args = {
                            [1] = "Hit",
                            [2] = v
                        }
                        game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            end
        end
    })
    
    game:GetService("RunService").Heartbeat:Connect(function()
        local trackGlove = game.Workspace:FindFirstChild("TrackGloveMissile")
        if trackGlove then
            trackGlove.Size = Vector3.new(_G.TargetSize, _G.TargetSize, _G.TargetSize)
        end
    end)
    
    MobsTab:AddToggle({
        Name = "Anti Death",
        Default = false,
        Callback = function(Value)
            if Value then
                game.Workspace.Map.Components.BossBattleDeathPart.CanTouch = false
                game.Workspace.Map.Components.BossBattleDeathPart.CanCollide = false
            else
                game.Workspace.Map.Components.BossBattleDeathPart.CanTouch = true
                game.Workspace.Map.Components.BossBattleDeathPart.CanCollide = true
            end
        end
    })
    
    MobsTab:AddSlider({
        Name = "Replica HitBox",
        Min = 2,
        Max = 100,
        Default = 2,
        Color = Color3.fromRGB(128, 240, 105),
        Increment = 1,
        ValueName = "Size",
        Callback = function(Value)
            _G.RSize = Value
        end    
    })
    
    MobsTab:AddToggle({
        Name = "Auto Kill Replica",
        Default = false,
        Callback = function(Value)
            while Value do 
                task.wait(.5)
                for _, v in pairs(workspace:GetChildren()) do
                    if v.Name == "ReplicaNPC" then 
                        GloveSlap()
                        local args = {
                            [1] = "Hit",
                            [2] = v:FindFirstChild("HumanoidRootPart")
                        }
                        game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            end
        end
    })
    
    game:GetService("RunService").Heartbeat:Connect(function()
        for _, Rep in ipairs(game.Workspace:GetChildren()) do
            if Rep.Name == "ReplicaNPC" then
                for _, Repl in ipairs(Rep:GetChildren()) do
                    if Repl.Name == "HumanoidRootPart" then
                        Repl.Size = Vector3.new(_G.RSize, _G.RSize, _G.RSize)
                    end
                end
            end
        end
    end)
    
    MobsTab:AddSlider({
        Name = "Boss HitBox",
        Min = 2,
        Max = 50,
        Default = 2,
        Color = Color3.fromRGB(128, 240, 105),
        Increment = 1,
        ValueName = "Size",
        Callback = function(Value)
            _G.GidSize = Value
        end    
    })
    
    MobsTab:AddToggle({
        Name = "Auto Hit Boss",
        Default = false,
        Callback = function(Value)
            while Value do 
                task.wait(.1)
                for _, v in pairs(workspace:GetChildren()) do
                    if v.Name == "GuideNPC" then
                        GloveSlap()
                        local args = {
                            [1] = "Hit",
                            [2] = v:FindFirstChild("HumanoidRootPart")
                        }
                        game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer(unpack(args))
                    end
                end
            end
        end
    })
    
    game:GetService("RunService").Heartbeat:Connect(function()
        local guideNPC = game.Workspace:FindFirstChild("GuideNPC")
        if guideNPC then
            guideNPC.Size = Vector3.new(_G.GidSize, _G.GidSize, _G.GidSize)
        end
    end)
    
            for i, v in pairs(workspace:GetChildren()) do
                if v.Name == "GuideNPC" then
                    local hum = v:FindFirstChild("Humanoid")
                    if hum then hum.Health = 0 end
                    game:GetService("ReplicatedStorage").Remotes.Data.AnswerInCutscene:FireServer("Eliminate")
                    game:GetService("ReplicatedStorage").Remotes.Data.AnswerInCutscene:FireServer("Spare")
                end
            end
    
    local AntiVoidRS = Instance.new("Part")
    AntiVoidRS.Name = "Anti-Hit"
    AntiVoidRS.Transparency = 0.3
    AntiVoidRS.BrickColor = BrickColor.new("Red")
    AntiVoidRS.Size = Vector3.new(800, 0.3, 800)
    AntiVoidRS.Anchored = true
    AntiVoidRS.CanCollide = true
    AntiVoidRS.CanTouch = true
    AntiVoidRS.CFrame = CFrame.new(600.514587, 95.479172, -290.646912) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    AntiVoidRS.Parent = game.Workspace
    
    game:GetService("RunService").Heartbeat:Connect(function()
        game:GetService("ReplicatedStorage").Remotes.Data.AnswerInCutscene:FireServer("Eliminate")
        game:GetService("ReplicatedStorage").Remotes.Data.AnswerInCutscene:FireServer("Spare")
    end)    
