local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PiPiHub"
screenGui.Parent = player.PlayerGui

local menuFrame = Instance.new("Frame")
menuFrame.Name = "ModernMenu"
menuFrame.Size = UDim2.new(0.3, 0, 0.55, 0)
menuFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
menuFrame.AnchorPoint = Vector2.new(0.5, 0.5)
menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
menuFrame.BorderSizePixel = 0
menuFrame.Active = true
menuFrame.Draggable = true
menuFrame.Parent = screenGui

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, 0, 0.9, 0)
scrollFrame.Position = UDim2.new(0, 0, 0.05, 0)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 5
scrollFrame.ScrollingEnabled = true
scrollFrame.Parent = menuFrame

local listLayout = Instance.new("UIListLayout")
listLayout.Parent = scrollFrame
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder

local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(201, 12, 12)
closeButton.TextSize = 20
closeButton.Size = UDim2.new(0.095, 0, 0.15, 0)
closeButton.Position = UDim2.new(0.92, 0, 0.0, 0)
closeButton.AnchorPoint = Vector2.new(0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
closeButton.BorderSizePixel = 0
closeButton.Parent = menuFrame

closeButton.MouseButton1Click:Connect(function()
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local endProperties = {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 1}
    local tween = game:GetService("TweenService"):Create(menuFrame, tweenInfo, endProperties)
    tween:Play()

    tween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)

local function ShowMenu()
    local startProperties = {Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 1}
    menuFrame.Size = startProperties.Size
    menuFrame.Position = startProperties.Position
    menuFrame.BackgroundTransparency = startProperties.BackgroundTransparency

    local endProperties = {Size = UDim2.new(0.3, 0, 0.55, 0), Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 0}
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local tween = game:GetService("TweenService"):Create(menuFrame, tweenInfo, endProperties)
    tween:Play()
end

ShowMenu()

local menuTitle = Instance.new("TextLabel")
menuTitle.Text = "PiPiHub"
menuTitle.TextColor3 = Color3.new(1, 1, 1)
menuTitle.TextSize = 24
menuTitle.Size = UDim2.new(0.3, 0, 0.1, 0)
menuTitle.Position = UDim2.new(0, 0, 0, 0)
menuTitle.AnchorPoint = Vector2.new(0, 0)
menuTitle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
menuTitle.BorderSizePixel = 0
menuTitle.Font = Enum.Font.GothamSemibold
menuTitle.TextXAlignment = Enum.TextXAlignment.Left
menuTitle.TextStrokeTransparency = 0.5
menuTitle.TextStrokeColor3 = Color3.new(0, 0, 0)
menuTitle.Parent = menuFrame

local function CreateAnimatedButton(text, position)
    local button = Instance.new("TextButton")
    button.Text = text
    button.Size = UDim2.new(0.77, 0, 0, 50)
    button.Position = UDim2.new(0.5, 0, 0, position.Y.Offset)
    button.AnchorPoint = Vector2.new(0.5, 0)
    button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    button.BorderColor3 = Color3.fromRGB(100, 100, 100)
    button.BorderSizePixel = 2
    button.Font = Enum.Font.SourceSansBold
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 20
    button.TextWrapped = true
    button.Parent = scrollFrame

    listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        scrollFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
    end)

    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    end)

    return button
end

------Button and Other------

local TriggerBotButton = CreateAnimatedButton("Trigger Bot: OFF", UDim2.new(0.5, 0, 0.07, 0))
local TracerButton = CreateAnimatedButton("Tracer: OFF", UDim2.new(0.5, 0, 0.30, 0))

------Button and Other------

local function ToggleButtonState(button, newState)
    button.Text = newState and button.Text:gsub("OFF", "ON") or button.Text:gsub("ON", "OFF")
end

local function ToggleButtonStateAndCheckDoubleClick(button)
    local state = button.Text:find("ON") and true or false
    if button.LastClick and (tick() - button.LastClick <= 0.5) then
        return
    end
    button.LastClick = tick()
    ToggleButtonState(button, not state)
end

TriggerBotButton.MouseButton1Click:Connect(function()
    ToggleButtonState(TriggerBotButton, not TriggerBotButton.Text:find("ON"))
end)

TracerButton.MouseButton1Click:Connect(function()
    ToggleButtonState(TracerButton, not TracerButton.Text:find("ON"))
end)

local function TriggerFunction()
    local Players = game:GetService("Players")
    local Camera = game.Workspace.CurrentCamera
    
    local aimingAtPlayer = false
    
    -- Функция для определения ближайшего игрока к центру экрана
    local function FindPlayerClosestToCenter()
        local viewportSize = Camera.ViewportSize
        local center = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2)
        local closestDistance = math.huge
        local closestPlayer = nil
    
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local character = player.Character
                if character then
                    local headPosition, onScreen = Camera:WorldToViewportPoint(character.Head.Position)
                    if onScreen then
                        local distance = (Vector2.new(headPosition.X, headPosition.Y) - center).magnitude
                        if distance < closestDistance then
                            closestDistance = distance
                            closestPlayer = character
                        end
                    end
                end
            end
        end
    
        return closestPlayer
    end
    
    -- Функция для направления камеры к голове игрока ближайшего к центру экрана
    local function AimAtPlayerClosestToCenter()
        local player = FindPlayerClosestToCenter()
        if player then
            local headPosition = player.Head.Position
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, headPosition)
        end
    end
    
    -- Обработчик события начала зажатия правой кнопки мыши
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            aimingAtPlayer = true
            AimAtPlayerClosestToCenter()
        end
    end)
    
    -- Обработчик события окончания зажатия правой кнопки мыши
    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            aimingAtPlayer = false
        end
    end)
    
    -- Обновление направления камеры в каждом кадре, если кнопка мыши зажата
    game:GetService("RunService").RenderStepped:Connect(function()
        if aimingAtPlayer then
            AimAtPlayerClosestToCenter()
        end
    end)
end


local function Tracer()
    local lplr = game.Players.LocalPlayer
    local camera = game.Workspace.CurrentCamera
    
    _G.TeamCheck = false
    
    local function CreateTracer(player, isLocalPlayer)
        local Tracer = Drawing.new("Line")
        Tracer.Color = Color3.fromRGB(207, 17, 197)
        Tracer.Thickness = 2
        Tracer.Transparency = 0.5
    
        local function UpdateTracer()
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local rootPart = player.Character.HumanoidRootPart
                local position = rootPart.Position
                local _, onScreen = camera:WorldToViewportPoint(position)
    
                if onScreen then
                    local screenPosition = camera:WorldToViewportPoint(position)
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
                    Tracer.To = Vector2.new(screenPosition.X, screenPosition.Y)
                    Tracer.Visible = true
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end
    
        UpdateTracer()
        game:GetService("RunService").RenderStepped:Connect(UpdateTracer)
    
        return Tracer
    end
    
    local localPlayerTracer = CreateTracer(lplr, true)
    
    -- Создаем обводку для других игроков
    local otherPlayerTracers = {}
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= lplr then
            otherPlayerTracers[player] = CreateTracer(player, false)
        end
    end
    
    game:GetService("RunService").RenderStepped:Connect(function()
        for player, tracer in pairs(otherPlayerTracers) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local rootPart = player.Character.HumanoidRootPart
                local position = rootPart.Position
                local _, onScreen = camera:WorldToViewportPoint(position)
    
                if onScreen then
                    local screenPosition = camera:WorldToViewportPoint(position)
                    local distance = (screenPosition - Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)).Magnitude
                    if distance < 300 then
                        tracer.Visible = true
                    else
                        tracer.Visible = false
                    end
                else
                    tracer.Visible = false
                end
            else
                tracer.Visible = false
            end
        end
    end)
    
    game.Players.PlayerAdded:Connect(function(player)
        if player ~= lplr then
            otherPlayerTracers[player] = CreateTracer(player, false)
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(player)
        if otherPlayerTracers[player] then
            otherPlayerTracers[player]:Remove()
            otherPlayerTracers[player] = nil
        end
    end)    
end

TracerButton.MouseButton1Click:connect(Tracer)
TriggerBotButton.MouseButton1Click:connect(TriggerFunction)
