local function SafeZoneBigCube()
    local roomCFrame = CFrame.new(14553.8418, 6484.78418, -6722.23242)
    local transparency = 0.5
    local size = Vector3.new(50, 50, 50)
    
    local function createPart(size, cframe, transparency)
        local part = Instance.new("Part")
        part.Name = "Big Cube"
        part.Size = size
        part.CFrame = cframe * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
        part.Transparency = transparency
        part.Anchored = true
        part.Parent = game.Workspace
    end
    
    createPart(Vector3.new(size.X, 1, size.Z), roomCFrame * CFrame.new(0, -size.Y/2, 0), transparency)
    
    createPart(Vector3.new(size.X, 1, size.Z), roomCFrame * CFrame.new(0, size.Y/2, 0), transparency)
    
    createPart(Vector3.new(size.X, size.Y, 1), roomCFrame * CFrame.new(0, 0, -size.Z/2), transparency)
    createPart(Vector3.new(size.X, size.Y, 1), roomCFrame * CFrame.new(0, 0, size.Z/2), transparency)
    createPart(Vector3.new(1, size.Y, size.Z), roomCFrame * CFrame.new(-size.X/2, 0, 0), transparency)
    createPart(Vector3.new(1, size.Y, size.Z), roomCFrame * CFrame.new(size.X/2, 0, 0), transparency)
    end
    
    --##################################################################################################################--
    
    local function SafeZoneMegaCube()
    local roomCFrame = CFrame.new(16212.2617, 13089.4453, -38180.4688)
    local transparency = 0.5
    local size = Vector3.new(500, 800, 500)
    
    local function createPart(size, cframe, transparency)
        local part = Instance.new("Part")
        part.Name = "MegaCube"
        part.Size = size
        part.CFrame = cframe * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
        part.Transparency = transparency
        part.Anchored = true
        part.Parent = game.Workspace
    end
    
    createPart(Vector3.new(size.X, 1, size.Z), roomCFrame * CFrame.new(0, -size.Y/2, 0), transparency)
    
    createPart(Vector3.new(size.X, 1, size.Z), roomCFrame * CFrame.new(0, size.Y/2, 0), transparency)
    
    createPart(Vector3.new(size.X, size.Y, 1), roomCFrame * CFrame.new(0, 0, -size.Z/2), transparency)
    createPart(Vector3.new(size.X, size.Y, 1), roomCFrame * CFrame.new(0, 0, size.Z/2), transparency)
    createPart(Vector3.new(1, size.Y, size.Z), roomCFrame * CFrame.new(-size.X/2, 0, 0), transparency)
    createPart(Vector3.new(1, size.Y, size.Z), roomCFrame * CFrame.new(size.X/2, 0, 0), transparency)
    end
    
    --###########################################################################################################--
    
    local function SafeZoneSmally()
        local roomCFrame = CFrame.new(9979.24414, 34627.3008, -59440.9023)
        local transparency = 0.5
        local size = Vector3.new(20, 20, 20)
        
        local function createPart(size, cframe, transparency)
            local part = Instance.new("Part")
            part.Name = "Smally"
            part.Size = size
            part.CFrame = cframe * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
            part.Transparency = transparency
            part.Anchored = true
            part.Parent = game.Workspace
        end
        
        createPart(Vector3.new(size.X, 1, size.Z), roomCFrame * CFrame.new(0, -size.Y/2, 0), transparency)
        
        createPart(Vector3.new(size.X, 1, size.Z), roomCFrame * CFrame.new(0, size.Y/2, 0), transparency)
        
        createPart(Vector3.new(size.X, size.Y, 1), roomCFrame * CFrame.new(0, 0, -size.Z/2), transparency)
        createPart(Vector3.new(size.X, size.Y, 1), roomCFrame * CFrame.new(0, 0, size.Z/2), transparency)
        createPart(Vector3.new(1, size.Y, size.Z), roomCFrame * CFrame.new(-size.X/2, 0, 0), transparency)
        createPart(Vector3.new(1, size.Y, size.Z), roomCFrame * CFrame.new(size.X/2, 0, 0), transparency)
    end
    
    local AntiVoid = Instance.new("Part")
    AntiVoid.Name = "Anti-Void"
    AntiVoid.Transparency = 1
    AntiVoid.BrickColor = BrickColor.new("Red")
    AntiVoid.Size = Vector3.new(90000, 0.2, 90000)
    AntiVoid.Anchored = true
    AntiVoid.CanCollide = false
    AntiVoid.CanTouch = false
    AntiVoid.CFrame = CFrame.new(-84.3658981, -12.2258596, -82.1421356) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    AntiVoid.Parent = game.Workspace
    
    local AntiVoids = Instance.new("Part")
    AntiVoids.Name = "Anti-Void-Responce-Remorries"
    AntiVoids.Transparency = 1
    AntiVoids.BrickColor = BrickColor.new("Red")
    AntiVoids.Size = Vector3.new(90000, 0.2, 90000)
    AntiVoids.Anchored = true
    AntiVoids.CanCollide = false
    AntiVoids.CanTouch = false
    AntiVoids.CFrame = CFrame.new(18427.0801, 2945.49609, -181.005951) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    AntiVoids.Parent = game.Workspace
    
    local AntiVoidR = Instance.new("Part")
    AntiVoidR.Name = "Anti-Void-Retro2"
    AntiVoidR.Transparency = 1
    AntiVoidR.BrickColor = BrickColor.new("Red")
    AntiVoidR.Size = Vector3.new(90000, 0.2, 90000)
    AntiVoidR.Anchored = true
    AntiVoidR.CanCollide = false
    AntiVoidR.CanTouch = false
    AntiVoidR.CFrame = CFrame.new(-16671.5312, 768.009644, 4701.30322) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    AntiVoidR.Parent = game.Workspace
    
    local AntiVoidRS = Instance.new("Part")
    AntiVoidRS.Name = "Anti-Void-Retro1"
    AntiVoidRS.Transparency = 1
    AntiVoidRS.BrickColor = BrickColor.new("Red")
    AntiVoidRS.Size = Vector3.new(90000, 0.2, 90000)
    AntiVoidRS.Anchored = true
    AntiVoidRS.CanCollide = false
    AntiVoidRS.CanTouch = false
    AntiVoidRS.CFrame = CFrame.new(-16908.1758, -9.09881783, 4791.04932) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    AntiVoidRS.Parent = game.Workspace
    
    local AntiVoidRSa = Instance.new("Part")
    AntiVoidRSa.Name = "Anti-Void-Retro3"
    AntiVoidRSa.Transparency = 1
    AntiVoidRSa.BrickColor = BrickColor.new("Red")
    AntiVoidRSa.Size = Vector3.new(90000, 0.2, 90000)
    AntiVoidRSa.Anchored = true
    AntiVoidRSa.CanCollide = false
    AntiVoidRSa.CanTouch = false
    AntiVoidRSa.CFrame = CFrame.new(-28041.3711, -220.375229, 4911.94531) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
    AntiVoidRSa.Parent = game.Workspace
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    
    OrionLib:MakeNotification({
        Name = "BerryHub Premium",
        Content = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
        Image = "rbxassetid://134693452691030",
        Time = 5
    })
    
    local Window = OrionLib:MakeWindow({Name = "| BerryHub.cc | " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "| " .. identifyexecutor(), HidePremium = false, SaveConfig = true, ConfigFolder = "BerryHub.cc"})
    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://8772968188"
    sound.Looped = false
    sound.Parent = game.Workspace.Camera
    sound.Volume = 10
    sound:Play()
    
    OrionLib:MakeNotification({
        Name = "BerryHub.cc",
        Content = "Waiting 6 second BerryHub Loading",
        Image = "rbxassetid://134693452691030",
        Time = 3
    })
    
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://18327385263",
        PremiumOnly = false
    })
    
    local BadgeTab = Window:MakeTab({
        Name = "Badge/Glove",
        Icon = "rbxassetid://7733673987",
        PremiumOnly = false
    })
    
    local FarmTab = Window:MakeTab({
        Name = "Farm",
        Icon = "rbxassetid://18315577124",
        PremiumOnly = false
    })
    
    local AbilityTab = Window:MakeTab({
        Name = "Abilities",
        Icon = "rbxassetid://82001502088047",
        PremiumOnly = false
    })
    
    local ContraTab = Window:MakeTab({
        Name = "Contra",
        Icon = "rbxassetid://71747983480341",
        PremiumOnly = false
    })
    
    local AntiTab = Window:MakeTab({
        Name = "Anti",
        Icon = "rbxassetid://18347556472",
        PremiumOnly = false
    })
    
    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://18348821479",
        PremiumOnly = false
    })
    
    local TpTab = Window:MakeTab({
        Name = "Teleport",
        Icon = "rbxassetid://18320381727",
        PremiumOnly = false
    })
    
    local PlayerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://18320365219",
        PremiumOnly = false
    })

    local DanceTab = Window:MakeTab({
        Name = "Dance",
        Icon = "rbxassetid://116452212520039",
        PremiumOnly = false
    })

    local OfterTab = Window:MakeTab({
        Name = "Ofter",
        Icon = "rbxassetid://18320365219",
        PremiumOnly = false
    })

    local InfoTab = Window:MakeTab({
        Name = "Info",
        Icon = "rbxassetid://106355181587859",
        PremiumOnly = false
    })
    
    
    BadgeTab:AddButton({
        Name = "Orage pip",
        Callback = function()
        fireclickdetector(game.Workspace.Arena.island5.Orange)
          end    
    })
    
    BadgeTab:AddButton({
        Name = "Secret Knife",
        Callback = function()
        fireclickdetector(game.Workspace.Lobby.Scene.knofe)
          end    
    })
    
    BadgeTab:AddButton({
        Name = "Rubber Duck",
        Callback = function()
        fireclickdetector(game.workspace.Arena["default island"]["Rubber Ducky"])
        end    
    })
    
    BadgeTab:AddLabel("-------------------------------------------------------------------------------------")
    
    BadgeTab:AddButton({    
        Name = "Get Lump",
        Callback = function()
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" then
    for i = 1, 10 do
    game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
    
    local args = {
        [1] = "LightBroken"
    }
    
    game:GetService("ReplicatedStorage").nightmare:FireServer(unpack(args))
    task.wait(0.10)
    end
    else
    OrionLib:MakeNotification({
        Name = "Error FN",
        Content = "Equip Zzzzzzzz Glove",
        Image = "rbxassetid://18328441059",
        Time = 3
    })
    end
    end
    })
    
    BadgeTab:AddButton({    
        Name = "Get Siphon",
        Callback = function()
        if game.Workspace:FindFirstChild("SiphonOrb") then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace.SiphonOrb, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace.SiphonOrb, 1)
        else
        OrionLib:MakeNotification({
        Name = "Error FN",
        Content = "SiphonOrb Not Found",
        Image = "rbxassetid://18328441059",
        Time = 3
        })
        end
        end
    })
    
    BadgeTab:AddButton({    
        Name = "Get Elude",
        Callback = function()
        if game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name == "?" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace.Ruins.Elude.Glove, 1)
        else
        OrionLib:MakeNotification({
        Name = "Error FN",
        Content = "You Not in Elude",
        Image = "rbxassetid://18328441059",
        Time = 3
        })
        end
        end
    })
    
    BadgeTab:AddButton({    
        Name = "Get Counter",
        Callback = function(ssda)
        if game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name == "?" then
        Time = 121
        fireclickdetector(game.Workspace.CounterLever.ClickDetector)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        for i = 1,Time do
        Time = Time - 1
        game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        task.wait(0.5)
        for i,v in pairs(workspace.Maze:GetDescendants()) do
        if v:IsA("ClickDetector") then
        fireclickdetector(v)
        else
        OrionLib:MakeNotification({
        Name = "Error FN",
        Content = "You not in EludePip",
        Image = "rbxassetid://18328441059",
        Time = 3
        })
        end
        end
        end
        end
        end
    })
    
    BadgeTab:AddButton({
        Name = "Get [Redacted]",
        Callback = function()
    if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
    Door = 0
    for i = 1, 10 do
    Door = Door + 1
    Door = nil
    if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
    else
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 0)
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 1)
    wait(3.75)
    end
    end
    else
    OrionLib:MakeNotification({Name = "Error Fn",Content = "You don't have 5000 slap",Image = "rbxassetid://7733658504",Time = 5})
    end
    end    
    })
    
    BadgeTab:AddButton({
        Name = "Get FrostBite",
        Callback = function()
    local teleportFunc = queueonteleport or queue_on_teleport
        if teleportFunc then
            teleportFunc([[
                if not game:IsLoaded() then
                    game.Loaded:Wait()
                end
                repeat wait() until game.Players.LocalPlayer
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
    wait(0.7)
    for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    fireproximityprompt(v)
                end
            end
    ]])
    end
    game:GetService("TeleportService"):Teleport(17290438723)
          end    
    })
    
    BadgeTab:AddButton({    
        Name = "Get Ice Skate",
        Callback = function()
        game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
        end
    })

    BadgeTab:AddButton({    
        Name = "Get Knockoff",
        Callback = function()
        if game.Workspace.RoomsFolder:FindFirstChild("Kar1H04ka's Room") then
        game.Workspace.RoomsFolder["Kar1H04ka's Room"].Frame:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RoomsFolder:FindFirstChild("Kar1H04ka's Room"):GetChildren()[79]:GetChildren()[7].Seat.CFrame
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons["4"])
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons["5"])
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons["5"])
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons["3"])
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons["2"])
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons["9"])
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons["3"])
        task.wait(0.2)
        fireclickdetector(game.Workspace.RoomsFolder["Kar1H04ka's Room"].PocketKeypad.Buttons.Enter)
        else
        OrionLib:MakeNotification({Name = "Error Fn",Content = "You Dont Create Pocket or You Dont Have Pocket",Image = "rbxassetid://7733658504", Time = 3})
        end
    end
})

BadgeTab:AddToggle({
    Name = "Auto Get Alchemist",
    Default = false,
    Callback = function(Plag)
        PlagF = Plag
        while PlagF do
            local players = game.Players:GetChildren()
            if #players > 1 then  -- Ensure there are other players in the game
                local randomPlayer = players[math.random(1, #players)]  -- Pick a random player

                -- Avoid teleporting to yourself
                if randomPlayer ~= game.Players.LocalPlayer then
                    -- Teleport to the random player's position
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = randomPlayer.Character.HumanoidRootPart.CFrame
                    task.wait(0.2)

                    -- Attempt to hit the random player
                    local loes = {
                        [1] = "Hit",
                        [2] = randomPlayer.Character:WaitForChild("HumanoidRootPart")
                    }
                    game:GetService("ReplicatedStorage").PlagueHit:FireServer(unpack(loes))
                end
            end

            task.wait(1)  -- Adjust this wait time as needed
        end
    end
})

    
    BadgeTab:AddButton({    
        Name = "Get Tkinter",
        Callback = function()
        if game.PlaceId == "14422118326" then
            fireclickdetector(game.Workspace:GetChildren()[13].Handle.ClickDetector)
            else
            OrionLib:MakeNotification({
            Name = "Error FN",
            Content = "You not in Null",
            Image = "rbxassetid://18328441059",
            Time = 3
            })
            end
        end
    })
    
    
    BadgeTab:AddButton({    
        Name = "Get Tycoon",
        Callback = function()
                   if game:GetService("Players").LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text == "Plate Counter: 0" then
                   while true do
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame
                   task.wait(0.02) 
                   if game:GetService("Players").LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text == "Plate Counter: 600" then
                   return
                end
                end
            end
        end
    })
    
    BadgeTab:AddButton({    
        Name = "Get Plank",
        Callback = function()
           if game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-400.160583, 85.1122131, -12.6422682, -0.803432107, -2.26815651e-08, -0.595396399, 1.54924662e-09, 1, -4.01854621e-08, 0.595396399, -3.32087069e-08, -0.803432107)
               task.wait(0.01)
               game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
               task.wait(0.5)
               game:GetService("ReplicatedStorage").Fortlol:FireServer()
               task.wait(2)
               game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
               else
               OrionLib:MakeNotification({
               Name = "Error FN",
               Content = "Equip Fort Glove",
               Image = "rbxassetid://18328441059",
               Time = 3
               })
           end
        end
    })
    
    BadgeTab:AddLabel("-------------------------------------------------------------------------------------")
    
    BadgeTab:AddDropdown({
        Name = "Farm Brick Type",
        Default = "Normal (88min)",
        Options = {"Normal (88min)", "Legit (50min)", "Fast (25min)"},
        Callback = function(Value)
        AutoBrick = Value
        end    
    })
    
    BadgeTab:AddToggle({
        Name = "Farm Brick",
        Default = false,
        Callback = function(Values)
            _G.Brickfarm = Values
            if _G.Brickfarm then
                if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Brick" then
                    OrionLib:MakeNotification({
                        Name = "Error FN",
                        Content = "Equip Brick Glove",
                        Image = "rbxassetid://18328441512",
                        Time = 3
                    })
                    return -- Прерываем выполнение, если условие не выполнено
                end
    
                if AutoBrick == "Normal (88min)" then
                    while _G.Brickfarm do
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                        task.wait(5.05)
                    end
                elseif AutoBrick == "Legit (50min)" then
                    while _G.Brickfarm do
                        game:GetService("ReplicatedStorage").lbrick:FireServer()
                        local brickCountLabel = game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel
                        brickCountLabel.Text = tonumber(brickCountLabel.Text) + 1
                        wait(3)
                    end
                elseif AutoBrick == "Fast (25min)" then
                    while _G.Brickfarm do
                        game:GetService("ReplicatedStorage").lbrick:FireServer()
                        local brickCountLabel = game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel
                        brickCountLabel.Text = tonumber(brickCountLabel.Text) + 1
                        wait(1.50)
                    end
                end
            end
        end   
    })

    BadgeTab:AddLabel("-------------------------------------------------------------------------------------")

BadgeTab:AddDropdown({
    Name = "Farm BoB Type",
    Default = "",
    Options = {"Normal (15 hours)", "Fast (9 Hours)", "Glith Super Fast (5 Hours)", "Ultimate 200 Replic/s (Kicked) [1 hours]"},
    Callback = function(Value)
        AutoBoB = Value
    end    
})

local function S()
    for i = 1, 5000 do
        game.ReplicatedStorage.Duplicate:FireServer(true)
        task.wait(0.00000001)
    end
end

local function A()
    for f = 1, 5000 do
        S()
        task.wait(0.000000001)
    end
end

local function f()
    for i = 1, 5000 do
        A()
        S()
        game.ReplicatedStorage.Duplicate:FireServer(true)
        task.wait(0.00000001)
    end
end

BadgeTab:AddToggle({
    Name = "Farm BoB",
    Default = false,
    Callback = function(Bossssa)
        _G.Fbob = Bossssa
        if _G.Fbob then
            if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14555.2344, 6470.43359, -6723.40088, 0.0150836511, 1.61993441e-08, 0.999886215, -5.41334799e-08, 1, -1.53845647e-08, -0.999886215, -5.38952669e-08, 0.0150836511)
                
                if AutoBoB == "Normal (15 hours)" then
                    while _G.Fbob do
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                        task.wait(15.2)
                    end
                elseif AutoBoB == "Fast (9 Hours)" then
                    while _G.Fbob do
                        game.ReplicatedStorage.Duplicate:FireServer(true)
                        task.wait(8)
                    end
                elseif AutoBoB == "Glith Super Fast (5 Hours)" then
                    while _G.Fbob do
                        game.ReplicatedStorage.Duplicate:FireServer(true)
                        task.wait(5.9)
                    end
                elseif AutoBoB == "Ultimate 200 Replic/s (Kicked) [1 hours]" then
                    f()
                end
            end
        end
    end
})

    
    local RunService = game:GetService("RunService")
    
    AntiTab:AddDropdown({
        Name = "Anti Void Location",
        Default = "Arena",
        Options = {"Arena", "Repressed Memorie", "Retro World"},
        Callback = function(Value)
            AntiVoidL = Value
        end    
    })
    
    AntiTab:AddToggle({
        Name = "Anti Void",
        Default = false,
        Callback = function(VDF)
            _G.GH = VDF
            RunService.Heartbeat:Connect(function()
                if _G.GH then
                    if AntiVoidL == "Arena" then
                        game.Workspace["Anti-Void"].CanCollide = true
                        game.Workspace["Anti-Void"].CanTouch = true
                        game.Workspace["Anti-Void"].Transparency = 0.5
                    elseif AntiVoidL == "Repressed Memorie" then
                        game.Workspace["Anti-Void-Responce-Remorries"].CanCollide = true
                        game.Workspace["Anti-Void-Responce-Remorries"].CanTouch = true
                        game.Workspace["Anti-Void-Responce-Remorries"].Transparency = 0.5
                    elseif AntiVoidL == "Retro World" then
                        game.Workspace["Anti-Void-Retro1"].CanCollide = true
                        game.Workspace["Anti-Void-Retro1"].CanTouch = true
                        game.Workspace["Anti-Void-Retro1"].Transparency = 0.5
                        task.wait(0.01)
                        game.Workspace["Anti-Void-Retro2"].CanCollide = true
                        game.Workspace["Anti-Void-Retro2"].CanTouch = true
                        game.Workspace["Anti-Void-Retro2"].Transparency = 0.5
                        task.wait(0.02)
                        game.Workspace["Anti-Void-Retro3"].CanCollide = true
                        game.Workspace["Anti-Void-Retro3"].CanTouch = true
                        game.Workspace["Anti-Void-Retro3"].Transparency = 0.5
                    end
                else
                    if AntiVoidL == "Arena" then
                        game.Workspace["Anti-Void"].CanCollide = false
                        game.Workspace["Anti-Void"].CanTouch = false
                        game.Workspace["Anti-Void"].Transparency = 1
                    elseif AntiVoidL == "Repressed Memorie" then
                        game.Workspace["Anti-Void-Responce-Remorries"].CanCollide = false
                        game.Workspace["Anti-Void-Responce-Remorries"].CanTouch = false
                        game.Workspace["Anti-Void-Responce-Remorries"].Transparency = 1
                    elseif AntiVoidL == "Retro World" then
                        game.Workspace["Anti-Void-Retro1"].CanCollide = false
                        game.Workspace["Anti-Void-Retro1"].CanTouch = false
                        game.Workspace["Anti-Void-Retro1"].Transparency = 1
                        task.wait(0.01)
                        game.Workspace["Anti-Void-Retro2"].CanCollide = false
                        game.Workspace["Anti-Void-Retro2"].CanTouch = false
                        game.Workspace["Anti-Void-Retro2"].Transparency = 1
                        task.wait(0.02)
                        game.Workspace["Anti-Void-Retro3"].CanCollide = false
                        game.Workspace["Anti-Void-Retro3"].CanTouch = false
                        game.Workspace["Anti-Void-Retro3"].Transparency = 1
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Mail",
        Default = false,
        Callback = function(Vls)
            _G.V = Vls
            RunService.Heartbeat:Connect(function()
                if _G.V then
                    game:GetService("Players").LocalPlayer.PlayerGui.MailPopup.Enabled = Vls
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Portals",
        Default = false,
        Callback = function(PRT)
            _G.FS = PRT
            if _G.FS then
                game.Workspace.Lobby.Teleport6.CanTouch = false
                game.Workspace.Lobby.Teleport4.CanTouch = false
                game.Workspace.Lobby.Teleport3.CanTouch = false
            else
                game.Workspace.Lobby.Teleport6.CanTouch = true
                game.Workspace.Lobby.Teleport4.CanTouch = true
                game.Workspace.Lobby.Teleport3.CanTouch = true
            end
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Kick",
        Default = false,
        Callback = function(Value)
            _G.AntiKick = Value
            RunService.Heartbeat:Connect(function()
                if _G.AntiKick then
                    for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                        if v.Name == "ErrorPrompt" then
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                        end
                    end
                end
            end)
        end    
    })
    
    AntiTab:AddToggle({
        Name = "Anti Rocky",
        Default = false,
        Callback = function(RKS)
            _G.DSD = RKS
            RunService.Heartbeat:Connect(function()
                if _G.DSD then
                    for _, Rock in ipairs(Rocky:GetChildren()) do
                        if Rock.Name == "Part" and Rock:IsA("Part") then
                            Rock.Transparency = 0.7
                            Rock.CanTouch = false
                            Rock.CanCollide = false
                        end
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Baller Ball",
        Default = false,
        Callback = function(AB)
            _G.BALL = AB
            RunService.Heartbeat:Connect(function()
                if _G.BALL then
                    for _, Ball in ipairs(game.Workspace:GetChildren()) do
                        if Ball.Name == "ClonedBall" then
                            Ball.CanTouch = false
                            Ball.CanCollide = false
                            Ball.Transparency = 0.9
                            for _, TchIns in ipairs(Ball:GetChildren()) do
                                if TchIns.Name == "TouchInterest" then
                                    TchIns:Destroy()
                                end
                            end
                        end
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Reaper",
        Default = false,
        Callback = function(REP)
            _G.RT = REP
            RunService.Heartbeat:Connect(function()
                if _G.RT then
                    local args = {
                        [1] = game:GetService("Players").LocalPlayer.Character.DeathMark
                    }
                    game:GetService("ReplicatedStorage").ReaperGone:FireServer(unpack(args))
                    local deathMark = game:GetService("Lighting"):FindFirstChild("DeathMarkColorCorrection")
                    if deathMark then
                        deathMark:Destroy()
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Leash",
        Default = false,
        Callback = function(Vlss)
            _G.Vs = Vlss
            RunService.Heartbeat:Connect(function()
                if _G.Vs then
                    local character = game.Players.LocalPlayer.Character
                    local fakeParts = {
                        "FakePart Left Arm",
                        "FakePart Left Leg",
                        "FakePart Right Arm",
                        "FakePart Right Leg"
                    }
                    for _, partName in ipairs(fakeParts) do
                        local part = character:FindFirstChild(partName)
                        if part then
                            part:Destroy()
                        end
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Mega Rock",
        Default = false,
        Callback = function(Vlsssa)
            _G.Vssa = Vlsssa
            RunService.Heartbeat:Connect(function()
                if _G.Vssa then
                    for _, ants in ipairs(game:GetService("Players"):GetChildren()) do
                        if ants.Character.rock then
                            ants.CanCollide = false
                            ants.CanTouch = false
                            else
                            ants.CanCollide = true
                            ants.CanTouch = true
                        end
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Steve",
        Default = false,
        Callback = function(aese)
            _G.SASA = aese
            RunService.Heartbeat:Connect(function()
                if _G.SASA then
    for _,v in pairs(game.Players:GetChildren()) do
                        if v.Character:FindFirstChild("stevebody") then
                            v.Character:FindFirstChild("stevebody").CanTouch = false
                            v.Character:FindFirstChild("stevebody").CanQuery = false
                            v.Character:FindFirstChild("stevebody").CanCollide = false
                        end
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Brick",
        Default = false,
        Callback = function(Vlsd)
            _G.B = Vlsd
            RunService.Heartbeat:Connect(function()
                if _G.B then
                    for _, bricks in ipairs(game.Workspace:GetChildren()) do
                        if bricks:IsA("UnionOperation") and bricks.Name == "Union" then
                            bricks.CanTouch = Vlsd
                        end
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Lava",
        Default = false,
        Callback = function(asa)
            _G.Bsas = asa
            RunService.Heartbeat:Connect(function()
                if _G.Bsas then
                game.Workspace.Arena.CannonIsland["Cannon Island"].Traps:GetChildren()[2].Hitbox.CanTouch = _G.Bsas
                game.Workspace.Arena.CannonIsland["Cannon Island"].Traps.TrapEmitter.Hitbox.CanTouch = _G.Bsas
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Ice",
        Default = false,
        Callback = function(aice)
            _G.iSS = aice
            RunService.Heartbeat:Connect(function()
                if _G.iSS then
                    for _, Ice in ipairs(game.Workspace:GetChildren()) do
                        if Ice:IsA("Model") and Ice.Name == "iceage" then
                            for _, INICE in ipairs(Ice:GetChildren()) do
                                if INICE:IsA("MeshPart") then
                                    INICE.CanTouch = false
                                    INICE.CanCollide = false
                                    INICE.Transparency = 0.8
                                    local character = game.Players.LocalPlayer.Character
                                    for _, bodyPart in ipairs({"Torso", "Head", "HumanoidRootPart", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}) do
                                        local part = character:FindFirstChild(bodyPart)
                                        if part then
                                            part.Anchored = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Ice Cube",
        Default = false,
        Callback = function(CBIC)
            _G.CffD = CBIC
            RunService.Heartbeat:Connect(function()
                if _G.CffD then
                    local iceCube = game.Players.LocalPlayer.Character:FindFirstChild("Icecube")
                    if iceCube then
                        iceCube:Destroy()
                    end
                end
            end)
        end
    })
    
    AntiTab:AddToggle({
        Name = "Anti Death Cube",
        Default = false,
        Callback = function(Des)
            _G.De = Des
            if _G.De then
                game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
            else
                game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
        end
    })
    
    -- ############################################################################# --
    
    TpTab:AddButton({    
        Name = "Teleport To Moai Island",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194.842773, -12.172925, -2.60586905, -0.0502552204, -0.0289926026, 0.998315513, -8.49686685e-08, 0.999578536, 0.0290292799, -0.998736382, 0.00145878806, -0.0502340421)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Main Island",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.82399559, 0.76297003, -1.3452704, 0.999758601, -0.000902074622, 0.0219541527, -8.00903237e-08, 0.999156773, 0.0410580188, -0.0219726786, -0.0410481095, 0.998915553)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Island 2",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.2484467, -1.70068634, 180.767929, 0.993254006, 0.00243691332, 0.115933336, -8.22880253e-08, 0.999779165, -0.0210146066, -0.115958944, 0.0208728332, 0.993034661)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Island 1",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.85391676, -3.65820742, -163.219299, -0.999876738, 3.03397137e-05, 0.0157006197, -8.26914786e-08, 0.999998152, -0.00193765201, -0.0157006495, -0.0019374144, -0.99987489)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Rainbow Sky",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-124.209961, -2.54019284, 121.931664, 0.666021407, 0.0448229685, -0.744584739, 6.66622171e-08, 0.998192966, 0.0600898936, 0.745932639, -0.0400212035, 0.66481787)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Slapply Island",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-403.006592, 53.6843834, -10.6706505, 0.0753273219, 0.0362721495, -0.996498942, -7.59887513e-08, 0.99933821, 0.0363754928, 0.997158885, -0.00273999269, 0.0752774701)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Sakura Island",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-191.433502, -2.49440265, 3.5949254, 0.0188427158, -0.0400125124, -0.999021471, 8.63975842e-08, 0.999198914, -0.0400196128, 0.999822438, 0.000753991946, 0.0188276246)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Tower Island",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(264.22525, 35.3202286, 197.865021, 0.625254035, -0.0635880232, 0.777826428, 9.31456228e-08, 0.996675074, 0.0814790204, -0.780421317, -0.0509450138, 0.623175085)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Plate",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Arena.Plate.CFrame
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Death Cube",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.627167, 0.674602032, 0.822199464, -0.0106147481, -0.017060101, 0.999798119, -0.000610129442, 0.999854386, 0.0170545839, -0.999943495, -0.000428976171, -0.0106236115)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Hunter Room",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17894.7676, -123.304779, -3540.91357, -0.999394476, -3.51293643e-08, 0.0347955264, -3.3823067e-08, 1, 3.81306826e-08, -0.0347955264, 3.69307003e-08, -0.999394476)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Lobby",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-799.420349, 334.284698, -1.27635109, -0.00711954199, 5.82984816e-09, -0.999974668, 6.04591854e-12, 1, 5.82995296e-09, 0.999974668, 3.54608287e-11, -0.00711954199)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Flying Island",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127.607231, 366.625061, -3.82452798, 0.00133693602, 2.65062194e-09, 0.999999106, -5.91942451e-09, 1, -2.64271049e-09, -0.999999106, -5.915886e-09, 0.00133693602)
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport To Killer Fish",
        Callback = function()
        fireclickdetector(game.workspace.Lobby.killafish)
        task.wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4752.47168, 8665.58691, 8824.18555, -0.0562592484, -1.27330878e-07, -0.998416185, -5.26712647e-08, 1, -1.2456492e-07, 0.998416185, 4.55799167e-08, -0.0562592484)
        end
    })
    
    TpTab:AddLabel("-------------------------------------------------------------------------------------")
    
    TpTab:AddDropdown({
        Name = "Safe Zones",
        Default = "",
        Options = {"Small Box", "Big Box", "Mega Cube"},
        Callback = function(obb)
        safeType = obb
        end
    })
    
    TpTab:AddButton({
        Name = "Teleport To Safe",
        Callback = function()
        if safeType == "Small Box" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9980.17578, 34626.3906, -59441.1836, 0.0176702607, 1.0351004e-07, 0.999843895, -1.63085563e-08, 1, -1.0323798e-07, -0.999843895, -1.44817687e-08, 0.0176702607)
        elseif safeType == "Big Box" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14555.2344, 6470.43359, -6723.40088, 0.0150836511, 1.61993441e-08, 0.999886215, -5.41334799e-08, 1, -1.53845647e-08, -0.999886215, -5.38952669e-08, 0.0150836511)
        elseif safeType == "Mega Cube" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16230.9609, 12699.959, -38173.4648, 0.0302515496, 7.1222594e-08, 0.999542296, -8.49863235e-10, 1, -7.12294863e-08, -0.999542296, 1.30532807e-09, 0.0302515496)
        end
        end
    })
    
    TpTab:AddLabel("-------------------------------------------------------------------------------------")
    
    TpTab:AddDropdown({
        Name = "Elude Type",
        Default = "",
        Options = {"KeyPad", "Glitch Teleport", "Teleport"},
        Callback = function(Valueae)
        EludeType = Valueae
        end
    })
    
    TpTab:AddButton({
        Name = "Teleport To Elude",
        Callback = function()
        if EludeType == "KeyPad" then
        fireclickdetector(game.Workspace.Keypad.Buttons.Reset.ClickDetector)
        wait(0.1)
        local player = game.Players.LocalPlayer
        if player then
            local backpack = player.Backpack
    
            if backpack then
                for _, tool in ipairs(backpack:GetChildren()) do
                    if tool:IsA("Tool") then
                        tool:Destroy()
                    end
                end
                print("Все инструменты из инвентаря удалены.")
            end
            
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Keypad.Buttons["1"].CFrame
            local result = (#game.Players:GetPlayers()) * 25 + 1100 - 7
            game.Workspace.Keypad.Display.SurfaceGui.TextLabel.Text = tostring(result)
    
            local resultString = tostring(result)
            local buttons = {
                game.Workspace.Keypad.Buttons["0"],
                game.Workspace.Keypad.Buttons["1"],
                game.Workspace.Keypad.Buttons["2"],
                game.Workspace.Keypad.Buttons["3"],
                game.Workspace.Keypad.Buttons["4"],
                game.Workspace.Keypad.Buttons["5"],
                game.Workspace.Keypad.Buttons["6"],
                game.Workspace.Keypad.Buttons["7"],
                game.Workspace.Keypad.Buttons["8"],
                game.Workspace.Keypad.Buttons["9"]
            }
    
            for i = 1, #resultString do
                local digit = tonumber(resultString:sub(i, i))
                local button = buttons[digit + 1]
                if button then
                    local clickDetector = button:FindFirstChild("ClickDetector")
                    if clickDetector then
                        fireclickdetector(clickDetector)
                        wait(1)
                        fireclickdetector(game.Workspace.Keypad.Buttons.Enter.ClickDetector)
                    end
                end
            end
        end
        elseif EludeType == "Teleport" then
        game:GetService("TeleportService"):Teleport(11828384869)
        elseif EludeType == "Glitch Teleport" then
        local Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, 0, false), {CFrame = CFrame.new(-99999999, 0, 999999)})
        Tween:Play()
        task.wait(1.3)
        game:GetService("TeleportService"):Teleport(11828384869)
        else
        if not game.Workspace:FindFirstChild("Keypad") then
        OrionLib:MakeNotification({
        Name = "Error FN",
        Content = "KeyPad Not Found",
        Image = "rbxassetid://18328441059",
        Time = 3
        })
        end
        end
        end
    })
    
    TpTab:AddLabel("-------------------------------------------------------------------------------------")
    
    TpTab:AddDropdown({
        Name = "Teleport To Obby",
        Default = "",
        Options = {"Ice Obby", "Admin Obby"},
        Callback = function(obb)
        ObbyType = obb
        end
    })
    
    TpTab:AddButton({    
        Name = "Teleport",
        Callback = function()
        if ObbyType == "Ice Obby" then
        game:GetService("TeleportService"):Teleport(17290438723)
        elseif ObbyType == "Admin Obby" then
        game:GetService("ReplicatedStorage").RetroTP:FireServer()
        end
        end
    })
    
    TpTab:AddLabel("-------------------------------------------------------------------------------------")

    TpTab:AddDropdown({
        Name = "Teleport To",
        Default = "",
        Options = {"Brazil", "Guide BOSS Fight", "Lobby"},
        Callback = function(Value)
        RTptOType = Value
        end
    })

    TpTab:AddButton({    
        Name = "Teleport",
        Callback = function()
        if RTptOType == "Brazil" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace.Lobby.brazil, 1)
        elseif RTptOType == "Guide BOSS Fight" then
        game:GetService("TeleportService"):Teleport("18550498098")
        elseif RTptOType == "Lobby" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-806.273254, 360.846008, -1.22305167, 0.00940967537, 0.140787154, -0.989995182, -1.16224513e-07, 0.990038991, 0.140793383, 0.999955714, -0.00132470496, 0.00931596197)
        end
        end
    })

    TpTab:AddLabel("-------------------------------------------------------------------------------------")

       
TpTab:AddTextbox({
	Name = "Player Name",
	Default = "Name",
	TextDisappear = false,
	Callback = function(GV)
	TpName = GV
	end	  
})

    TpTab:AddButton({    
        Name = "Teleport",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TpName].Character.HumanoidRootPart.CFrame
    end
})
    -- ############################################################################# --
    
    MainTab:AddSlider({
        Name = "HitBox Size",
        Min = 5,
        Max = 30,
        Default = 5,
        Color = Color3.fromRGB(128, 240, 105),
        Increment = 1,
        ValueName = "Size",
        Callback = function(Value)
            _G.Sizes = Value
        end    
    })
    
    MainTab:AddToggle({
        Name = "Visible HitBox",
        Default = false,
        Callback = function(VHIT)
            _G.TRNS = VHIT
        end
    })
    
    MainTab:AddToggle({
        Name = "Enable Big HitBox",
        Default = false,
        Callback = function(EBH)
            _G.EFSE = EBH
            if _G.EFSE then
                _G.HeadSize = _G.Sizes
                game:GetService('RunService').RenderStepped:Connect(function()
                    for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
                        if player.Name ~= game:GetService('Players').LocalPlayer.Name then
                            pcall(function()
                                local character = player.Character
                                if character and character:FindFirstChild("HumanoidRootPart") then
                                    local humanoidRootPart = character.HumanoidRootPart
                                    if humanoidRootPart then
                                        humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                                        humanoidRootPart.BrickColor = BrickColor.new("Really black")
                                        humanoidRootPart.Material = Enum.Material.Neon
                                        humanoidRootPart.CanCollide = false
                                        if _G.TRNS == true then
                                            humanoidRootPart.Transparency = 0.5
                                        else
                                            humanoidRootPart.Transparency = 1
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end)
            end
        end
    })
    
    
    MainTab:AddToggle({
        Name = "Auto Collect Gift",
        Default = false,
        Callback = function(GFT)
        _G.ASA = GFT
        if _G.ASA then
        while _G.ASA do
        for _, dfg in ipairs(game.Workspace:GetChildren()) do
        if dfg.Name == "Gift" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, dfg, 1)
        task.wait(0.02)
        end
        end
        end
        end
        end
    })
    
    -- ############################################################################# --
    
    PlayerTab:AddSlider({
        Name = "Speed",
        Min = 16,
        Max = 999,
        Default = 16,
        Color = Color3.fromRGB(200, 255, 200),
        Increment = 1,
        ValueName = "Speed",
        Callback = function(Value)
        speedsw = Value
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end    
    })
    
    PlayerTab:AddSlider({
        Name = "Jump Power",
        Min = 50,
        Max = 999,
        Default = 50,
        Color = Color3.fromRGB(200, 255, 200),
        Increment = 1,
        ValueName = "Jump Power",
        Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end    
    })
    
    
    -- ############################################################################# --
    
     local humanoid = game.Players.LocalPlayer.Character.Humanoid
    local animationPack = game:GetService("ReplicatedStorage").AnimationPack
    
    DanceTab:AddButton({
        Name = "Floss",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Floss)
            anim:Play()
            task.wait(1.6)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Groove",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Groove)
            anim:Play()
            task.wait(7)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "HeadLess",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Headless)
            anim:Play()
            task.wait(3.75)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Helicopter",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Helicopter)
            anim:Play()
            task.wait(2)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Kick",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Kick)
            anim:Play()
            task.wait(4)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Loser",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.L)
            anim:Play()
            task.wait(3)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Laugh",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Laugh)
            anim:Play()
            task.wait(5.2)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Parker",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Parker)
            anim:Play()
            task.wait(3.2)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Spasm",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Spasm)
            anim:Play()
            task.wait(1.9)
            anim:Stop()
        end    
    })
    
    DanceTab:AddButton({
        Name = "Thriller",
        Callback = function()
            local anim = humanoid:LoadAnimation(animationPack.Thriller)
            anim:Play()
            task.wait(6)
            anim:Stop()
        end
    })
    
    -- Определение переменной Fish
    local Fish = "Default"
    local FishSt = 10
    
    AbilityTab:AddDropdown({
        Name = "Fish Ability Type",
        Default = "Default",
        Options = {"Default", "Up", "Down", "Up-Up"},
        Callback = function(Fishs)
            Fish = Fishs
        end
    })
    
    AbilityTab:AddSlider({
        Name = "Fish Ability Strong",
        Min = 10,
        Max = 1000,
        Default = 10,
        Color = Color3.fromRGB(163, 161, 34),
        Increment = 1,
        ValueName = "Strong",
        Callback = function(FFI)
            FishSt = FFI 
        end    
    })
    
    AbilityTab:AddButton({
        Name = "Fish Ability",
        Callback = function()
            local cameraLookVector = game:GetService("Workspace").CurrentCamera.CFrame.LookVector
            local knockBackDirection
    
            if Fish == "Default" then
                knockBackDirection = Vector3.new(cameraLookVector.X, 0, cameraLookVector.Z).Unit + Vector3.new(0, 1, 0) * 0.5
            elseif Fish == "Up" then
                knockBackDirection = Vector3.new(cameraLookVector.X, 5, cameraLookVector.Z).Unit + Vector3.new(0, 1, 0) * 0.05
            elseif Fish == "Up-Up" then
                knockBackDirection = Vector3.new(cameraLookVector.X, 50, cameraLookVector.Z).Unit + Vector3.new(-6, -6, -6) * 0.01
            elseif Fish == "Down" then
                knockBackDirection = Vector3.new(cameraLookVector.X, -150, cameraLookVector.Z).Unit + Vector3.new(0, 1, 0) * 0.05
            end
    
            -- Отправка события на сервер с параметрами силы и направления
            game:GetService("ReplicatedStorage"):WaitForChild("SelfKnockback"):FireServer({
                ["Force"] = FishSt,
                ["Direction"] = knockBackDirection
            })
        end
    })
    
    AbilityTab:AddBind({
        Name = "Fish Ability Bind",
        Default = Enum.KeyCode.Z,
        Hold = false,
        Callback = function()
            local cameraLookVector = game:GetService("Workspace").CurrentCamera.CFrame.LookVector
            local knockBackDirection
    
            if Fish == "Default" then
                knockBackDirection = Vector3.new(cameraLookVector.X, 0, cameraLookVector.Z).Unit + Vector3.new(0, 1, 0) * 0.5
            elseif Fish == "Up" then
                knockBackDirection = Vector3.new(cameraLookVector.X, 5, cameraLookVector.Z).Unit + Vector3.new(0, 1, 0) * 0.05
            elseif Fish == "Up-Up" then
                knockBackDirection = Vector3.new(cameraLookVector.X, 50, cameraLookVector.Z).Unit + Vector3.new(-6, -6, -6) * 0.01
            elseif Fish == "Down" then
                knockBackDirection = Vector3.new(cameraLookVector.X, -150, cameraLookVector.Z).Unit + Vector3.new(0, 1, 0) * 0.05
            end
    
            -- Отправка события на сервер с параметрами силы и направления
            game:GetService("ReplicatedStorage"):WaitForChild("SelfKnockback"):FireServer({
                ["Force"] = FishSt,
                ["Direction"] = knockBackDirection
            })
        end    
    })
    
    AbilityTab:AddLabel("-------------------------------------------------------------------------------------")
    
    -- Определение переменной Retro
    local Retro = "Bomb" -- Устанавливаем значение по умолчанию
    local isRetroAbilityActive = false -- Флаг для блокировки повторного запуска функции
    
    AbilityTab:AddDropdown({
        Name = "Retro Ability Type",
        Default = "Bomb",
        Options = {"Bomb", "Hammer", "Rocket", "Animation + Hammer", "Animation + Rocket", "Animation + Bomb"},
        Callback = function(Retros)
            Retro = Retros  -- Присваиваем выбранное значение переменной Retro
        end
    })
    
    local function triggerRetroAbility(abilityName, animationName, waitTime, notificationName)
        if isRetroAbilityActive then
            return -- Если функция уже активирована, ничего не делаем
        end
    
        isRetroAbilityActive = true -- Блокируем повторный запуск функции
    
        if animationName then
            local animation = game.ReplicatedStorage.Assets.Retro.Animations[animationName]
            local humanoid = game.Players.LocalPlayer.Character.Humanoid
            local animationTrack = humanoid:LoadAnimation(animation)
            animationTrack:Play()
            
            task.wait(0.9) -- Ждем завершения анимации
        end
    
        game:GetService("ReplicatedStorage").RetroAbility:FireServer(abilityName)
    
        if notificationName then
            OrionLib:MakeNotification({
                Name = notificationName,
                Content = "Wait " .. waitTime .. " seconds",
                Image = "rbxassetid://18328441059",
                Time = waitTime
            })
        end
    
        task.wait(waitTime) -- Ждем указанное время перед повторным использованием функции
        isRetroAbilityActive = false -- Разблокируем функцию
    end
    
    AbilityTab:AddButton({
        Name = "Retro Ability",
        Callback = function()
            if Retro == "Bomb" then
                triggerRetroAbility("Bomb", nil, 2.1, nil)
            elseif Retro == "Hammer" then
                triggerRetroAbility("Ban Hammer", nil, 3.7, nil)
            elseif Retro == "Rocket" then
                triggerRetroAbility("Rocket Launcher", nil, 3, nil)
            elseif Retro == "Animation + Hammer" then
                triggerRetroAbility("Ban Hammer", "Ban Hammer", 3.7, "Ban Hammer Reloading")
            elseif Retro == "Animation + Rocket" then
                triggerRetroAbility("Rocket Launcher", "Rocket Launcher", 3, "Rocket Launcher Reloading")
            elseif Retro == "Animation + Bomb" then
                triggerRetroAbility("Bomb", "Bomb", 0.35, "Bomb Reloading")
            end
        end
    })
    
    AbilityTab:AddBind({
        Name = "Retro Ability Bind",
        Default = Enum.KeyCode.X,
        Hold = false,
        Callback = function()
            if Retro == "Bomb" then
                triggerRetroAbility("Bomb", nil, 2.1, nil)
            elseif Retro == "Hammer" then
                triggerRetroAbility("Ban Hammer", nil, 3.7, nil)
            elseif Retro == "Rocket" then
                triggerRetroAbility("Rocket Launcher", nil, 3, nil)
            elseif Retro == "Animation + Hammer" then
                triggerRetroAbility("Ban Hammer", "Ban Hammer", 3.7, "Ban Hammer Reloading")
            elseif Retro == "Animation + Rocket" then
                triggerRetroAbility("Rocket Launcher", "Rocket Launcher", 3, "Rocket Launcher Reloading")
            elseif Retro == "Animation + Bomb" then
                triggerRetroAbility("Bomb", "Bomb", 0.35, "Bomb Reloading")
            end
        end
    })
    
    AbilityTab:AddLabel("-------------------------------------------------------------------------------------")
    
    AbilityTab:AddDropdown({
        Name = "Rhytm Ability Type",
        Default = "Default",
        Options = {"Default", "Glithed Fast", "Glithed Fast + Explosion Range"},
        Callback = function(Rhyt)
        Rhytm = Rhyt
        end
    })
    
    AbilityTab:AddButton({
        Name = "Rhytm Ability",
        Callback = function()
        if Rhytm == "Default" then
        game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", -1)
        elseif Rhytm == "Glithed Fast" then
        game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", 999)
        elseif Rhytm == "+ Explosion Range" then
        game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", 9999999)
        end
        end
    })
    
    AbilityTab:AddBind({
        Name = "Rhytm Ability Bind",
        Default = Enum.KeyCode.C,
        Hold = false,
        Callback = function()
        if Rhytm == "Default" then
        game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", -1)
        elseif Rhytm == "Glithed Fast" then
        game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", 999)
        elseif Rhytm == "Glithed Fast + Explosion Range" then
        game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion", 9999999)
        end
        end
    })
    
    AbilityTab:AddLabel("-------------------------------------------------------------------------------------")
    
    AbilityTab:AddDropdown({
        Name = "Admin Ability Type",
        Default = "",
        Options = {"Anvil", "Fling", "Invisibility"},
        Callback = function(Admins)
        Admin = Admins
        end
    })
    
    AbilityTab:AddButton({
        Name = "Admin Ability",
        Callback = function()
        if Admin == "Anvil" then
        game:GetService("ReplicatedStorage").AdminAbility:FireServer("Anvil")
        elseif Admin == "Fling" then
        game:GetService("ReplicatedStorage").AdminAbility:FireServer("Fling")
        elseif Admin == "Invisibility" then
        game:GetService("ReplicatedStorage").AdminAbility:FireServer("Invisibility")
        end
        end
    })
    
    AbilityTab:AddBind({
        Name = "Admin Ability Bind",
        Default = Enum.KeyCode.V,
        Hold = false,
        Callback = function()
        if Admin == "Anvil" then
        game:GetService("ReplicatedStorage").AdminAbility:FireServer("Anvil")
        elseif Admin == "Fling" then
        game:GetService("ReplicatedStorage").AdminAbility:FireServer("Fling")
        elseif Admin == "Invisibility" then
        game:GetService("ReplicatedStorage").AdminAbility:FireServer("Invisibility")
        end
        end
    })
    
    AbilityTab:AddLabel("-------------------------------------------------------------------------------------")
    
    AbilityTab:AddDropdown({
        Name = "SlapStick Type",
        Default = "",
        Options = {"runeffect", "fullcharged", "dash", "charge", "cancelrun", "discharge"},
        Callback = function(Slaps)
        Slap = Slaps
        end
    })
    
    AbilityTab:AddButton({
        Name = "SlapStick Ability",
        Callback = function()
        game:GetService("ReplicatedStorage").slapstick:FireServer("addarm")
        if Slap == "runeffect" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("runeffect")
        elseif Slap == "fullcharged" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
        elseif Slap == "dash" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("dash")
        elseif Slap == "charge" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("charge")
        elseif Slap == "cancelrun" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
        elseif Slap == "discharge" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("discharge")
        end
        end
    })
    
    AbilityTab:AddBind({
        Name = "SlapStick Ability Bind",
        Default = Enum.KeyCode.B,
        Hold = false,
        Callback = function()
        game:GetService("ReplicatedStorage").slapstick:FireServer("addarm")
        if Slap == "runeffect" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("runeffect")
        elseif Slap == "fullcharged" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
        elseif Slap == "dash" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("dash")
        elseif Slap == "charge" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("charge")
        elseif Slap == "cancelrun" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
        elseif Slap == "discharge" then
        game:GetService("ReplicatedStorage").slapstick:FireServer("discharge")
        end
        end
    })
    
    AbilityTab:AddLabel("-------------------------------------------------------------------------------------")
    
    AbilityTab:AddButton({
        Name = "Piano Ability",
        Callback = function()
        game:GetService("ReplicatedStorage").Piano:FireServer()
        end
    })
    
    AbilityTab:AddBind({
        Name = "Piano Ability Bind",
        Default = Enum.KeyCode.N,
        Hold = false,
        Callback = function()
        game:GetService("ReplicatedStorage").Piano:FireServer()
        end
    })
    
    AbilityTab:AddLabel("-------------------------------------------------------------------------------------")
    
    AbilityTab:AddButton({
        Name = "Null Ability",
        Callback = function()
        game:GetService("ReplicatedStorage").NullAbility:FireServer()
        end
    })
    
    AbilityTab:AddBind({
        Name = "Null Ability Bind",
        Default = Enum.KeyCode.M,
        Hold = false,
        Callback = function()
        game:GetService("ReplicatedStorage").NullAbility:FireServer()
        end
    })
    
    MiscTab:AddSlider({
        Name = "Ping Pong HitBox",
        Min = 8,
        Max = 80,
        Default = 8,
        Color = Color3.fromRGB(203, 247, 244),
        Increment = 1,
        ValueName = "HitBox",
        Callback = function(PingS)
        _G.PinSize = PingS
        end
    })
    
    game:GetService("RunService").Heartbeat:Connect(function()
        for _, PingP in ipairs(game.Workspace:GetChildren()) do
            if PingP.Name == game.Players.LocalPlayer.Name .. "_PingPongBall" then
                PingP.Size = Vector3.new(_G.PinSize, _G.PinSize, _G.PinSize)
                PingP.Transparency = 0.8
            end
        end
    end)

        MiscTab:AddSlider({
        Name = "Rocky HitBox (Beta)",
        Min = 20,
        Max = 50,
        Default = 20,
        Color = Color3.fromRGB(203, 247, 244),
        Increment = 1,
        ValueName = "HitBox",
        Callback = function(RockyH)
        _G.RockySize = RockyH
        end
    })



RunService.Heartbeat:Connect(function()
for _, Rock in ipairs(game.Workspace:GetChildren()) do
    if Rock.Name == "Part" then
       if Rock:IsA("Part") then
        if Rock.Color == "91, 93, 105" then
        Rock.Size = Vector3.new(_G.RockySize, _G.RockySize, _G.RockySize)
        Rock.Transparency = 0.7
        end
       end
     end
   end
end)
    
        MiscTab:AddSlider({
        Name = "TableFlip HitBox",
        Min = 5,
        Max = 30,
        Default = 5,
        Color = Color3.fromRGB(203, 247, 244),
        Increment = 1,
        ValueName = "HitBox",
        Callback = function(TableFlipH)
        _G.TableFlipSize = TableFlipH
        end
    })

    

RunService.Heartbeat:Connect(function()
for _, Rock in ipairs(game.Workspace:GetChildren()) do
    if Rock.Name == "TableObject" then
        Rock.Size = Vector3.new(_G.TableFlipSize, _G.TableFlipSize, _G.TableFlipSize)
        Rock.Transparency = 0.7
        end
     end
end)

    FarmTab:AddDropdown({
        Name = "Blink Farm Type",
        Default = "",
        Options = {"Slow", "Speed", "Glith Slap"},
        Callback = function(BlinkFarms)
        BlinkFarm = BlinkFarms
        end    
    })
    
    local BlinkFarmd = false
    
    FarmTab:AddToggle({
        Name = "Blink Farm",
        Default = false,
        Callback = function(state)
        local player = game.Players.LocalPlayer
            if player.leaderstats and player.leaderstats.Glove.Value == "Blink" then
                BlinkFarmd = state
                if BlinkFarmd then
                    local function SpamBlink()
                        while BlinkFarmd do
                            if player.leaderstats.Glove.Value == "Blink" and player.Character:FindFirstChild("entered") then
                                game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {
                                    ["dir"] = Vector3.new(0, 0, 0),
                                    ["ismoving"] = false,
                                    ["mousebehavior"] = Enum.MouseBehavior.Default
                                })
                            end
                            task.wait(50.05)
                        end
                    end
                    coroutine.wrap(SpamBlink)()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        if BlinkFarmd and player.leaderstats.Glove.Value == "Blink" and player.Character:FindFirstChild("entered") then
                            for _, v in pairs(game.Workspace:GetChildren()) do
                                if v:IsA("Model") and v ~= player.Character and v:FindFirstChild("HumanoidRootPart") then
                                    game.ReplicatedStorage.GeneralHit:FireServer(v.HumanoidRootPart, true)
                                end
                            end
                        end
                        if BlinkFarm == "Slow" then
                            task.wait(0.5)
                        elseif BlinkFarm == "Speed" then
                            task.wait(0.25)
                        elseif BlinkFarm == "Glith Slap" then
                            task.wait(0.08)
                        end
                    end)
                else
                BlinkFarmd = false
                game.Players.LocalPlayer.Reset:FireServer()
                end
                if not player.leaderstats and player.leaderstats.Glove.Value == "Blink" then
                OrionLib:MakeNotification({
                Name = "Error FN",
                Content = "Equip Blink",
                Image = "rbxassetid://18328441059",
                Time = 3
                })
            end
            end
        end
    })
    
    FarmTab:AddLabel("-------------------------------------------------------------------------------------")
    
    function SpamBaller()
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
    while _G.BallerFarm do
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
    wait(15.05)
    end
    end
    end
    
    FarmTab:AddDropdown({
        Name = "Baller Farm Type",
        Default = "",
        Options = {"Slow", "High"},
        Callback = function(BallerFarms)
        BallerFarm = BallerFarms
        end    
    })
    
    FarmTab:AddToggle({
        Name = "Baller Farm",
        Default = false,
        Callback = function(Value)
    _G.BallerFarm = Value
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
    if _G.BallerFarm == true then
    coroutine.wrap(SpamBaller)()
    end
    while _G.BallerFarm and game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" do
    for _, v in pairs(workspace:GetChildren()) do
                     if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
    game.ReplicatedStorage.GeneralHit:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                    end
                end
    if BallerFarm == "Slow" then
    task.wait(0.5)
    elseif BallerFarm == "High" then
    task.wait(0.01)
    end
            end
    elseif _G.BallerFarm == true then
    OrionLib:MakeNotification({Name = "Error",Content = "You don't have Baller equipped or you aren't in the arena.",Image = "rbxassetid://7733658504",Time = 5})
    wait(0.05)
    FarmBaller:Set(false)
    end
        end    
    })
    
    FarmTab:AddLabel("-------------------------------------------------------------------------------------")
    
    function SpamReplica()
        local player = game.Players.LocalPlayer
        if player.leaderstats.Glove.Value == "Replica" and player.Character:FindFirstChild("IsInDefaultArena") and player.Character.IsInDefaultArena.Value then
            while ReplicaFarm do
                game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
                task.wait(20)  -- Уменьшено время ожидания для повышения эффективности
            end
        else
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "You don't have Replica equipped or you are not in the arena.",
                Image = "rbxassetid://7733658504",
                Time = 5
            })
        end
    end
    
    -- Функция для спама Replica и Reverse
    function SpamReplicaReverse()
        local player = game.Players.LocalPlayer
        if _G.GetTeleport == "Up To You" then
            OGL = player.Character.HumanoidRootPart.CFrame
        end
    
        while ReplicaAndReverseGet do
            if not player.Character:FindFirstChild("entered") and player.leaderstats.Glove.Value == "Reverse" then
                game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
                task.wait()
                fireclickdetector(workspace.Lobby.Replica.ClickDetector)
                task.wait(0.01)
                
                -- Ожидание загрузки персонажа
                repeat task.wait() until player.Character
    
                -- Телепортация игрока
                if not player.Character:FindFirstChild("entered") and player.Character:FindFirstChild("HumanoidRootPart") then
                    repeat
                        task.wait()
                        firetouchinterest(player.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
                        firetouchinterest(player.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
                    until player.Character:FindFirstChild("entered")
                end
    
                task.wait(0.04)
                task.wait(0.1)
                game:GetService("ReplicatedStorage").Duplicate:FireServer()
                task.wait(20)
                if player.Character.Humanoid.Health ~= 0 then
                    game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(player.Character, false)
                end
                task.wait(3.75)
                fireclickdetector(workspace.Lobby.Reverse.ClickDetector)
                task.wait(0.8)
            else
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "You don't have Reverse equipped or you are in the lobby.",
                    Image = "rbxassetid://7733658504",
                    Time = 5
                })
                ReplicaAndReverseGet = false
                break
            end
        end
    end
    
    -- Слайдер для Slap Farm
    FarmTab:AddSlider({
        Name = "Slap Farm Value",
        Min = 1,
        Max = 1950,
        Default = 1,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Slap",
        Callback = function(Value)
            _G.SlapFarmGet = Value
        end    
    })
    
    FarmTab:AddDropdown({
        Name = "Reverse + Replica Slap Farm Type",
        Default = "Normal",
        Options = {"Normal", "Fast [Lag]"},
        Callback = function(Value)
            _G.GetSlapGot = Value
        end    
    })
    
    FarmTab:AddToggle({
        Name = "Reverse + Replica Farm",
        Default = false,
        Callback = function(Value)
            ReplicaAndReverseGet = Value 
    
            if _G.GetSlapGot == "Normal" then
                if not game.Players.LocalPlayer.Character:FindFirstChild("entered") 
                    and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
    
                    if ReplicaAndReverseGet then 
                        coroutine.wrap(SpamReplicaReverse)() 
                    end
    
                    while ReplicaAndReverseGet do 
                        local character = game.Players.LocalPlayer.Character
                        if character:FindFirstChild("entered") and character.Humanoid.Health ~= 0 then
                            for _, v in pairs(workspace:GetChildren()) do 
                                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
                                    game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"), true)
                                end
                            end
                        end
                        task.wait()
                    end
                else
                    if ReplicaAndReverseGet then 
                        OrionLib:MakeNotification({
                            Name = "Error",
                            Content = "You don't have Reverse equipped or you are in the lobby.",
                            Image = "rbxassetid://7733658504",
                            Time = 5
                        }) 
                        wait(0.05)
                        ReplicaAndReverse:Set(false) 
                        game.Players.LocalPlayer.Reset:FireServer()
                    end
                end
    
            elseif _G.GetSlapGot == "Fast [Lag]" then
                if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.leaderstats.Glove.Value == "Reverse" then
    
                    if ReplicaAndReverseGet then 
                        coroutine.wrap(SpamReplicaReverse)() 
                    end
    
                    while ReplicaAndReverseGet do 
                        local character = game.Players.LocalPlayer.Character
                        if character:FindFirstChild("entered") and character.Humanoid.Health ~= 0 then
                            for _, v in pairs(workspace:GetChildren()) do 
                                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
                                    for i = 1, _G.SlapFarmGet do
                                        if character:FindFirstChild("entered") and character.Humanoid.Health ~= 0 then
                                            game:GetService("ReplicatedStorage").b:FireServer(v:WaitForChild("Head"), true)
                                        end
                                    end
                                end
                            end
                        end
                        task.wait(0.07)
                    end
                else
                    if ReplicaAndReverseGet then 
                        OrionLib:MakeNotification({
                            Name = "Error",
                            Content = "You don't have Reverse equipped or you are in the lobby.",
                            Image = "rbxassetid://7733658504",
                            Time = 5
                        }) 
                        wait(0.05)
                        ReplicaAndReverse:Set(false) 
                        game.Players.LocalPlayer.Reset:FireServer()
                    end
                end
            end
        end    
    })
    
    FarmTab:AddLabel("-------------------------------------------------------------------------------------")
   
ContraTab:AddTextbox({
	Name = "Player Name",
	Default = "Name",
	TextDisappear = false,
	Callback = function(GSDSDSDS)
	PlayersNameToSteve = GSDSDSDS
	end	  
})

    ContraTab:AddButton({
        Name = "Make Player Steve",
        Callback = function()
        if game.Players.LocalPlayer.Character:FindFirstChild("stevebody") then
        for i = 1, 5 do
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Players[PlayersNameToSteve].Character.HumanoidRootPart, 1)
        task.wait(0.01)
    end
end
end
})

    ContraTab:AddButton({
        Name = "Make All everyone Steve",
        Callback = function()
        if game.Players.LocalPlayer.Character:FindFirstChild("stevebody") then
        for _, steveBodyPlrs in ipairs(game.Players:GetChildren()) do
        for i = 1, 5 do
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, steveBodyPlrs.Character.HumanoidRootPart, 1)
        task.wait(0.01)
        if not game.Players.LocalPlayer.Character:FindFirstChild("stevebody") then
        OrionLib:MakeNotification({
        Name = "Error FN",
        Content = "You Not Steve",
        Image = "rbxassetid://18328441059",
        Time = 3
        })
        end
        end
        end
    end
end
})

OfterTab:AddDropdown({
    Name = "GodMode Type",
    Default = "",
    Options = {"Reverse", "Golden", "Parry", "Blink"},
    Callback = function(dsas)
        GodModeT = dsas
    end
})

OfterTab:AddToggle({
    Name = "God Mod",
    Default = false,
    Callback = function(Value)
        _G.Go = Value
        if GodModeT == "Reverse" then
            while _G.Go do
                game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
                task.wait(5.5)
            end
        elseif GodModeT == "Golden" then
            while _G.Go do
                game:GetService("ReplicatedStorage").Goldify:FireServer(true)
                task.wait(5.5)
            end
        elseif GodModeT == "Blink" then
            while _G.Go do
                game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {
                    ["dir"] = Vector3.new(0, 0, 0),
                    ["ismoving"] = false,
                    ["mousebehavior"] = Enum.MouseBehavior.Default
                })
                task.wait(1)
            end
        end
    end
})

gloveHits = {
    ["Default"] = game.ReplicatedStorage.b,
    ["Extended"] = game.ReplicatedStorage.b,
    -----------// Glove Hit General Or New Glove \\-----------
    ["T H I C K"] = game.ReplicatedStorage.GeneralHit,
    ["Squid"] = game.ReplicatedStorage.GeneralHit,
    ["Gummy"] = game.ReplicatedStorage.GeneralHit,
    ["RNG"] = game.ReplicatedStorage.GeneralHit,
    ["Tycoon"] = game.ReplicatedStorage.GeneralHit,
    ["Charge"] = game.ReplicatedStorage.GeneralHit,
    ["Baller"] = game.ReplicatedStorage.GeneralHit,
    ["Tableflip"] = game.ReplicatedStorage.GeneralHit,
    ["Booster"] = game.ReplicatedStorage.GeneralHit,
    ["Shield"] = game.ReplicatedStorage.GeneralHit,
    ["Track"] = game.ReplicatedStorage.GeneralHit,
    ["Goofy"] = game.ReplicatedStorage.GeneralHit,
    ["Confusion"] = game.ReplicatedStorage.GeneralHit,
    ["Elude"] = game.ReplicatedStorage.GeneralHit,
    ["Glitch"] = game.ReplicatedStorage.GeneralHit,
    ["Snowball"] = game.ReplicatedStorage.GeneralHit,
    ["fish"] = game.ReplicatedStorage.GeneralHit,
    ["Killerfish"] = game.ReplicatedStorage.GeneralHit,
    ["🗿"] = game.ReplicatedStorage.GeneralHit,
    ["Obby"] = game.ReplicatedStorage.GeneralHit,
    ["Voodoo"] = game.ReplicatedStorage.GeneralHit,
    ["Leash"] = game.ReplicatedStorage.GeneralHit,
    ["Flamarang"] = game.ReplicatedStorage.GeneralHit,
    ["Berserk"] = game.ReplicatedStorage.GeneralHit,
    ["Quake"] = game.ReplicatedStorage.GeneralHit,
    ["Rattlebones"] = game.ReplicatedStorage.GeneralHit,
    ["Chain"] = game.ReplicatedStorage.GeneralHit,
    ["Ping Pong"] = game.ReplicatedStorage.GeneralHit,
    ["Whirlwind"] = game.ReplicatedStorage.GeneralHit,
    ["Slicer"] = game.ReplicatedStorage.GeneralHit,
    ["Counter"] = game.ReplicatedStorage.GeneralHit,
    ["Hammer"] = game.ReplicatedStorage.GeneralHit,
    ["Excavator"] = game.ReplicatedStorage.GeneralHit,
    ["Home Run"] = game.ReplicatedStorage.GeneralHit,
    ["Psycho"] = game.ReplicatedStorage.GeneralHit,
    ["Kraken"] = game.ReplicatedStorage.GeneralHit,
    ["Gravity"] = game.ReplicatedStorage.GeneralHit,
    ["Lure"] = game.ReplicatedStorage.GeneralHit,
    ["Jebaited"] = game.ReplicatedStorage.GeneralHit,
    ["Meteor"] = game.ReplicatedStorage.GeneralHit,
    ["Tinkerer"] = game.ReplicatedStorage.GeneralHit,    
    ["Guardian Angel"] = game.ReplicatedStorage.GeneralHit,
    ["Sun"] = game.ReplicatedStorage.GeneralHit,
    ["Necromancer"] = game.ReplicatedStorage.GeneralHit,
    ["Zombie"] = game.ReplicatedStorage.GeneralHit,
    ["Dual"] = game.ReplicatedStorage.GeneralHit,
    ["Alchemist"] = game.ReplicatedStorage.GeneralHit,
    ["Parry"] = game.ReplicatedStorage.GeneralHit,
    ["Druid"] = game.ReplicatedStorage.GeneralHit,
    ["Oven"] = game.ReplicatedStorage.GeneralHit,
    ["Jester"] = game.ReplicatedStorage.GeneralHit,
    ["Ferryman"] = game.ReplicatedStorage.GeneralHit,
    ["Scythe"] = game.ReplicatedStorage.GeneralHit,
    ["Blackhole"] = game.ReplicatedStorage.GeneralHit,
    ["Santa"] = game.ReplicatedStorage.GeneralHit,
    ["Grapple"] = game.ReplicatedStorage.GeneralHit,
    ["Iceskate"] = game.ReplicatedStorage.GeneralHit,
    ["Pan"] = game.ReplicatedStorage.GeneralHit,
    ["Blasphemy"] = game.ReplicatedStorage.GeneralHit,
    ["Blink"] = game.ReplicatedStorage.GeneralHit,
    ["Ultra Instinct"] = game.ReplicatedStorage.GeneralHit,
    ["Admin"] = game.ReplicatedStorage.GeneralHit,
    ["Prop"] = game.ReplicatedStorage.GeneralHit,
    ["Joust"] = game.ReplicatedStorage.GeneralHit,
    ["Slapstick"] = game.ReplicatedStorage.GeneralHit,
    ["Firework"] = game.ReplicatedStorage.GeneralHit,
    ["Run"] = game.ReplicatedStorage.GeneralHit,
    ["Beatdown"] = game.ReplicatedStorage.GeneralHit,
    ["L.O.L.B.O.M.B"] = game.ReplicatedStorage.GeneralHit,
    ["Glovel"] = game.ReplicatedStorage.GeneralHit,
    ["Chicken"] = game.ReplicatedStorage.GeneralHit,
    ["Divebomb"] = game.ReplicatedStorage.GeneralHit,
    ["Lamp"] = game.ReplicatedStorage.GeneralHit,
    ["Pocket"] = game.ReplicatedStorage.GeneralHit,
    ["BONK"] = game.ReplicatedStorage.GeneralHit,
    ["Knockoff"] = game.ReplicatedStorage.GeneralHit,
    ["Divert"] = game.ReplicatedStorage.GeneralHit,
    ["Frostbite"] = game.ReplicatedStorage.GeneralHit,
    ["Sbeve"] = game.ReplicatedStorage.GeneralHit,
    ["Plank"] = game.ReplicatedStorage.GeneralHit,
    ["Golem"] = game.ReplicatedStorage.GeneralHit,
    ["Spoonful"] = game.ReplicatedStorage.GeneralHit,
    ["Grab"] = game.ReplicatedStorage.GeneralHit,
    ["the schlop"] = game.ReplicatedStorage.GeneralHit,
    ["UFO"] = game.ReplicatedStorage.GeneralHit,
    ["el gato"] = game.ReplicatedStorage.GeneralHit,
    ["Siphon"] = game.ReplicatedStorage.GeneralHit,
    ["Hive"] = game.ReplicatedStorage.GeneralHit,
    ["Wrench"] = game.ReplicatedStorage.GeneralHit,
    ["Hunter"] = game.ReplicatedStorage.GeneralHit,
    ["Relude"] = game.ReplicatedStorage.GeneralHit,
    ["Avatar"] = game.ReplicatedStorage.GeneralHit,
    ["Demolition"] = game.ReplicatedStorage.GeneralHit,
    ["Shotgun"] = game.ReplicatedStorage.GeneralHit,
    ["Beachball"] = game.ReplicatedStorage.GeneralHit,
    -----------// Glove Hit Normal Or New Glove \\-----------
    ["ZZZZZZZ"] = game.ReplicatedStorage.ZZZZZZZHit,
    ["Brick"] = game.ReplicatedStorage.BrickHit,
    ["Snow"] = game.ReplicatedStorage.SnowHit,
    ["Pull"] = game.ReplicatedStorage.PullHit,
    ["Flash"] = game.ReplicatedStorage.FlashHit,
    ["Spring"] = game.ReplicatedStorage.springhit,
    ["Swapper"] = game.ReplicatedStorage.HitSwapper,
    ["Bull"] = game.ReplicatedStorage.BullHit,
    ["Dice"] = game.ReplicatedStorage.DiceHit,
    ["Ghost"] = game.ReplicatedStorage.GhostHit,
    ["Thanos"] = game.ReplicatedStorage.ThanosHit,
    ["Stun"] = game.ReplicatedStorage.HtStun,
    ["Za Hando"] = game.ReplicatedStorage.zhramt,
    ["Fort"] = game.ReplicatedStorage.Fort,
    ["Magnet"] = game.ReplicatedStorage.MagnetHIT,
    ["Pusher"] = game.ReplicatedStorage.PusherHit,
    ["Anchor"] = game.ReplicatedStorage.hitAnchor,
    ["Space"] = game.ReplicatedStorage.HtSpace,
    ["Boomerang"] = game.ReplicatedStorage.BoomerangH,
    ["Speedrun"] = game.ReplicatedStorage.Speedrunhit,
    ["Mail"] = game.ReplicatedStorage.MailHit,
    ["Golden"] = game.ReplicatedStorage.GoldenHit,
    ["MR"] = game.ReplicatedStorage.MisterHit,
    ["Reaper"] = game.ReplicatedStorage.ReaperHit,
    ["Replica"] = game.ReplicatedStorage.ReplicaHit,
    ["Defense"] = game.ReplicatedStorage.DefenseHit,
    ["Killstreak"] = game.ReplicatedStorage.KSHit,
    ["Reverse"] = game.ReplicatedStorage.ReverseHit,
    ["Shukuchi"] = game.ReplicatedStorage.ShukuchiHit,
    ["Duelist"] = game.ReplicatedStorage.DuelistHit,
    ["woah"] = game.ReplicatedStorage.woahHit,
    ["Ice"] = game.ReplicatedStorage.IceHit,
    ["Adios"] = game.ReplicatedStorage.hitAdios,
    ["Blocked"] = game.ReplicatedStorage.BlockedHit,
    ["Engineer"] = game.ReplicatedStorage.engiehit,
    ["Rocky"] = game.ReplicatedStorage.RockyHit,
    ["Conveyor"] = game.ReplicatedStorage.ConvHit,
    ["STOP"] = game.ReplicatedStorage.STOP,
    ["Phantom"] = game.ReplicatedStorage.PhantomHit,
    ["Wormhole"] = game.ReplicatedStorage.WormHit,
    ["Acrobat"] = game.ReplicatedStorage.AcHit,
    ["Plague"] = game.ReplicatedStorage.PlagueHit,
    ["[REDACTED]"] = game.ReplicatedStorage.ReHit,
    ["bus"] = game.ReplicatedStorage.hitbus,
    ["Phase"] = game.ReplicatedStorage.PhaseH,
    ["Warp"] = game.ReplicatedStorage.WarpHt,
    ["Bomb"] = game.ReplicatedStorage.BombHit,
    ["Bubble"] = game.ReplicatedStorage.BubbleHit,
    ["Jet"] = game.ReplicatedStorage.JetHit,
    ["Shard"] = game.ReplicatedStorage.ShardHIT,
    ["potato"] = game.ReplicatedStorage.potatohit,
    ["CULT"] = game.ReplicatedStorage.CULTHit,
    ["bob"] = game.ReplicatedStorage.bobhit,
    ["Buddies"] = game.ReplicatedStorage.buddiesHIT,
    ["Spy"] = game.ReplicatedStorage.SpyHit,
    ["Detonator"] = game.ReplicatedStorage.DetonatorHit,
    ["Rage"] = game.ReplicatedStorage.GRRRR,
    ["Trap"] = game.ReplicatedStorage.traphi,
    ["Orbit"] = game.ReplicatedStorage.Orbihit,
    ["Hybrid"] = game.ReplicatedStorage.HybridCLAP,
    ["Slapple"] = game.ReplicatedStorage.SlappleHit,
    ["Disarm"] = game.ReplicatedStorage.DisarmH,
    ["Dominance"] = game.ReplicatedStorage.DominanceHit,
    ["Link"] = game.ReplicatedStorage.LinkHit,
    ["Rojo"] = game.ReplicatedStorage.RojoHit,
    ["rob"] = game.ReplicatedStorage.robhit,
    ["Rhythm"] = game.ReplicatedStorage.rhythmhit,
    ["Nightmare"] = game.ReplicatedStorage.nightmarehit,
    ["Hitman"] = game.ReplicatedStorage.HitmanHit,
    ["Thor"] = game.ReplicatedStorage.ThorHit,
    ["Retro"] = game.ReplicatedStorage.RetroHit,
    ["Cloud"] = game.ReplicatedStorage.CloudHit,
    ["Null"] = game.ReplicatedStorage.NullHit,
    ["spin"] = game.ReplicatedStorage.spinhit,
    -----------// Glove Hit Stun \\-----------
    ["Kinetic"] = game.ReplicatedStorage.HtStun,
    ["Recall"] = game.ReplicatedStorage.HtStun,
    ["Balloony"] = game.ReplicatedStorage.HtStun,
    ["Sparky"] = game.ReplicatedStorage.HtStun,
    ["Boogie"] = game.ReplicatedStorage.HtStun,
    ["Stun"] = game.ReplicatedStorage.HtStun,
    ["Coil"] = game.ReplicatedStorage.HtStun,
    -----------// Glove Hit Diamond \\-----------
    ["Diamond"] = game.ReplicatedStorage.DiamondHit,
    ["Megarock"] = game.ReplicatedStorage.DiamondHit,
    -----------// Glove Hit Celestial \\-----------
    ["Moon"] = game.ReplicatedStorage.CelestialHit,
    ["Jupiter"] = game.ReplicatedStorage.CelestialHit,
    -----------// Glove Hard \\-----------
    ["Mitten"] = game.ReplicatedStorage.MittenHit,
    ["Hallow Jack"] = game.ReplicatedStorage.HallowHIT,
    -----------// Glove Hit Power \\-----------
    ["OVERKILL"] = game.ReplicatedStorage.Overkillhit,
    ["The Flex"] = game.ReplicatedStorage.FlexHit,
    ["Custom"] = game.ReplicatedStorage.CustomHit,
    ["God's Hand"] = game.ReplicatedStorage.Godshand,
    ["Error"] = game.ReplicatedStorage.Errorhit
}

task.wait(0.2)
SafeZoneBigCube()
task.wait(0.2)
SafeZoneMegaCube()
task.wait(0.2)
SafeZoneSmally()
