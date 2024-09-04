
    
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
    task.wait(5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3261.60913, -74.5373383, 822.463013, 0.00312531693, 4.57756055e-09, 0.999995112, -3.10946469e-09, 1, -4.56786475e-09, -0.999995112, -3.09517345e-09, 0.00312531693)
            task.wait(0.5)
            fireclickdetector(game.Workspace.ShackLever)
            task.wait(34)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(592.17041, 98.591835, -310.136963, -0.999876201, 5.24858912e-09, -0.0157340318, 3.95640454e-09, 1, 8.2157861e-08, 0.0157340318, 8.20854424e-08, -0.999876201)

    

            while true do 
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
    

            while true do 
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
    


        game.Workspace.Map.Components.BossBattleDeathPart.CanTouch = false
         game.Workspace.Map.Components.BossBattleDeathPart.CanCollide = false
    

            while true do 
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
    

            while true do 
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
