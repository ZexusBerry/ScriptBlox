    for i = 1, 10 do
    game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
    
    local args = {
        [1] = "LightBroken"
    }
    
    game:GetService("ReplicatedStorage").nightmare:FireServer(unpack(args))
    task.wait(0.10)
    end
