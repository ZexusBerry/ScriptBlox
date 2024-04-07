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

------Button and Ofther------

local autoClickButton = CreateAnimatedButton("Auto Click: OFF", UDim2.new(0.5, 0, 0.19, 0))
local RedeemCodesButton = CreateAnimatedButton("Redeem all codes", UDim2.new(0.5, 0, 0.29, 0))

------Button and Ofther------

-- Функция для переключения состояния кнопки
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

autoClickButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoClickButton, not autoClickButton.Text:find("ON"))
end)

AutoUpgrateSwordButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoUpgrateSwordButton, not AutoUpgrateSwordButton.Text:find("ON"))
end)

AutoUpgrateGeneticButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoUpgrateGeneticButton, not AutoUpgrateGeneticButton.Text:find("ON"))
end)

AutoSpammGroundButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoSpammGroundButton, not AutoSpammGroundButton.Text:find("ON"))
end)

AutoAcceptArenaButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoAcceptArenaButton, not AutoAcceptArenaButton.Text:find("ON"))
end)
