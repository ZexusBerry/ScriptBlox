hsd0vwv492oj7hy5px0n6s8dfh5sn1j25d4frj1g1dyqa697ohshv1q07fo3nsornj57jki3uhjsg7tgzmdkvn7bhmc7ii8x10sjy4mwqvau06bi7rkezzse88yl5ezswdbkjr88w7dc2d2w4ftyxj44nk0x09q47sk4mpgov7k42acmiwdivf148mlxio99p0vjltmvlipno00nm92v95y4cwq85e4sqprasv7xh5s3wxmowx8futg0s2zq3cerqn8j4dpgwshj1vywexoer7jrpotdkzrqeb0hit844ro69yvywbkf3xsy85kjycm7h81doa733f4e7wp4csv00fpxzkenly9a1k4jjuq5hsanbrjxyb3n0p0vrla4qif2kfvjy1drh895thw3yj09vilolevh40yqr3o8bqoxx6eu7wrf607ym7hf4a6s2vav0fc59xduw8ri3r9u4wjtxq009rskdshmgr4z9p66p5sg6udt1qwjpdj73b48cqu14dyb115v2eh16wxjou5tib2q78etwrv364x81ahimjazp00j92tw2jehy7c1uxckf39f1xp4ncrnnqjoz90ozqm410qs7k3692nv17typpr8j488pbingay96a93qox9dy63mos4864iwlh6j69t2qjy2bckmb4efqluqbcxwqk5fw4pokfznppbocq3fcos2bhw029b3lm3i4adoq2070ojjjvz2a0wtl7atxios60nltjucmnw8ezpglga6dv8ijkfm6svqxs6nnmwpzcpquxc1doe6ibu785h035mb9mwccmakl4e4ikpfe0a0cmvjyxtczos8bqnys5n9qufait1kjnj4bq00wv9t94vgnm8ntpqsrm3lzvun7zkrkor3ocw10lt6go04k6bdgdh89zykbqswf0ztjkjj5acupo3bi9glz0mjo310xyru1iiyzeojwa5026s7jy19e3hc3vg2w82qyn0w2jai0bz

a b = c.d.e

f g = h.i("&#1083;&#1099;&#1114;&#1101;&#1101;&#1110;&#1071;&#1117;&#1105;")
j.Name = "&#1080;&#1105;&#1080;&#1105;&#1072;&#1117;&#1098;"
screenGui.Parent = player.PlayerGui

local menuFrame = Instance.new("&#1070;&#1114;&#1097;&#1109;&#1101;")
menuFrame.Name = "&#1077;&#1111;&#1100;&#1101;&#1114;&#1110;&#1077;&#1101;&#1110;&#1117;"
menuFrame.Size = UDim2.new(0.3, 0, 0.55, 0)
menuFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
menuFrame.AnchorPoint = Vector2.new(0.5, 0.5)
menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
menuFrame.BorderSizePixel = 0
menuFrame.Active = true
menuFrame.Draggable = true
menuFrame.Parent = screenGui

local scrollFrame = Instance.new("&#1083;&#1099;&#1114;&#1111;&#1108;&#1108;&#1105;&#1110;&#1103;&#1070;&#1114;&#1097;&#1109;&#1101;")
scrollFrame.Size = UDim2.new(1, 0, 0.9, 0)
scrollFrame.Position = UDim2.new(0, 0, 0.05, 0)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 5
scrollFrame.ScrollingEnabled = true
scrollFrame.Parent = menuFrame

local listLayout = Instance.new("&#1085;&#1073;&#1076;&#1105;&#1115;&#1116;&#1076;&#1097;&#1121;&#1111;&#1117;&#1116;")
listLayout.Parent = scrollFrame
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder

local closeButton = Instance.new("&#1084;&#1101;&#1120;&#1116;&#1066;&#1117;&#1116;&#1116;&#1111;&#1110;")
closeButton.Text = "&#1088;"
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
    local tween = game:GetService("&#1084;&#1119;&#1101;&#1101;&#1110;&#1083;&#1101;&#1114;&#1118;&#1105;&#1099;&#1101;"):Create(menuFrame, tweenInfo, endProperties)
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

    local tween = game:GetService("&#1084;&#1119;&#1101;&#1101;&#1110;&#1083;&#1101;&#1114;&#1118;&#1105;&#1099;&#1101;"):Create(menuFrame, tweenInfo, endProperties)
    tween:Play()
end

ShowMenu()

local menuTitle = Instance.new("&#1084;&#1101;&#1120;&#1116;&#1076;&#1097;&#1098;&#1101;&#1108;")
menuTitle.Text = "&#1080;&#1105;&#1080;&#1105;&#1072;&#1117;&#1098;"
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
    local button = Instance.new("&#1084;&#1101;&#1120;&#1116;&#1066;&#1117;&#1116;&#1116;&#1111;&#1110;")
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

    listLayout:GetPropertyChangedSignal("&#1065;&#1098;&#1115;&#1111;&#1108;&#1117;&#1116;&#1101;&#1067;&#1111;&#1110;&#1116;&#1101;&#1110;&#1116;&#1083;&#1105;&#1122;&#1101;"):Connect(function()
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



local autoClickButton = CreateAnimatedButton("&#1065;&#1117;&#1116;&#1111;&#1032;&#1067;&#1108;&#1105;&#1099;&#1107;&#1058;&#1032;&#1079;&#1070;&#1070;", UDim2.new(0.5, 0, 0.19, 0))
local RedeemCodesButton = CreateAnimatedButton("&#1082;&#1101;&#1100;&#1101;&#1101;&#1109;&#1032;&#1097;&#1108;&#1108;&#1032;&#1099;&#1111;&#1100;&#1101;&#1115;", UDim2.new(0.5, 0, 0.29, 0))




local function ToggleButtonState(button, newState)
	button.Text = newState and button.Text:gsub("&#1079;&#1070;&#1070;", "&#1079;&#1078;") or button.Text:gsub("&#1079;&#1078;", "&#1079;&#1070;&#1070;")
end

local function ToggleButtonStateAndCheckDoubleClick(button)
    local state = button.Text:find("&#1079;&#1078;") and true or false
    if button.LastClick and (tick() - button.LastClick <= 0.5) then
        return
    end
    button.LastClick = tick()
    ToggleButtonState(button, not state)
end

autoClickButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoClickButton, not autoClickButton.Text:find("&#1079;&#1078;"))
end)

AutoUpgrateSwordButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoUpgrateSwordButton, not AutoUpgrateSwordButton.Text:find("&#1079;&#1078;"))
end)

AutoUpgrateGeneticButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoUpgrateGeneticButton, not AutoUpgrateGeneticButton.Text:find("&#1079;&#1078;"))
end)

AutoSpammGroundButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoSpammGroundButton, not AutoSpammGroundButton.Text:find("&#1079;&#1078;"))
end)

AutoAcceptArenaButton.MouseButton1Click:Connect(function()
	ToggleButtonState(AutoAcceptArenaButton, not AutoAcceptArenaButton.Text:find("&#1079;&#1078;"))
end)
