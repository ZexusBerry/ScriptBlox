local player = game.Players.LocalPlayer

local screenGui = Instance.new(&quot;ScreenGui&quot;)
screenGui.Name = &quot;PiPiHub&quot;
screenGui.Parent = player.PlayerGui

local menuFrame = Instance.new(&quot;Frame&quot;)
menuFrame.Name = &quot;ModernMenu&quot;
menuFrame.Size = UDim2.new(0.3, 0, 0.55, 0)
menuFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
menuFrame.AnchorPoint = Vector2.new(0.5, 0.5)
menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
menuFrame.BorderSizePixel = 0
menuFrame.Active = true
menuFrame.Draggable = true
menuFrame.Parent = screenGui

local scrollFrame = Instance.new(&quot;ScrollingFrame&quot;)
scrollFrame.Size = UDim2.new(1, 0, 0.9, 0)
scrollFrame.Position = UDim2.new(0, 0, 0.05, 0)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 5
scrollFrame.ScrollingEnabled = true
scrollFrame.Parent = menuFrame

local listLayout = Instance.new(&quot;UIListLayout&quot;)
listLayout.Parent = scrollFrame
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder

local closeButton = Instance.new(&quot;TextButton&quot;)
closeButton.Text = &quot;X&quot;
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
    local tween = game:GetService(&quot;TweenService&quot;):Create(menuFrame, tweenInfo, endProperties)
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

    local tween = game:GetService(&quot;TweenService&quot;):Create(menuFrame, tweenInfo, endProperties)
    tween:Play()
end

ShowMenu()

local menuTitle = Instance.new(&quot;TextLabel&quot;)
menuTitle.Text = &quot;PiPiHub&quot;
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
    local button = Instance.new(&quot;TextButton&quot;)
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

    listLayout:GetPropertyChangedSignal(&quot;AbsoluteContentSize&quot;):Connect(function()
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

local autoClickButton = CreateAnimatedButton(&quot;Auto Click: OFF&quot;, UDim2.new(0.5, 0, 0.19, 0))
local RedeemCodesButton = CreateAnimatedButton(&quot;Redeem all codes&quot;, UDim2.new(0.5, 0, 0.29, 0))

------Button and Ofther------

-- Функция для переключения состояния кнопки
local function ToggleButtonState(button, newState)
	button.Text = newState and button.Text:gsub(&quot;OFF&quot;, &quot;ON&quot;) or button.Text:gsub(&quot;ON&quot;, &quot;OFF&quot;)
end

local function ToggleButtonStateAndCheckDoubleClick(button)
    local state = button.Text:find(&quot;ON&quot;) and true or false
    if button.LastClick and (tick() - button.LastClick &lt;= 0.5) then
        return
    end
    button.LastClick = tick()
    ToggleButtonState(button, not state)
end

autoClickButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoClickButton, not autoClickButton.Text:find(&quot;ON&quot;))
end)

AutoUpgrateSwordButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoUpgrateSwordButton, not AutoUpgrateSwordButton.Text:find(&quot;ON&quot;))
end)

AutoUpgrateGeneticButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoUpgrateGeneticButton, not AutoUpgrateGeneticButton.Text:find(&quot;ON&quot;))
end)

AutoSpammGroundButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoSpammGroundButton, not AutoSpammGroundButton.Text:find(&quot;ON&quot;))
end)

AutoAcceptArenaButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoAcceptArenaButton, not AutoAcceptArenaButton.Text:find(&quot;ON&quot;))
end)
