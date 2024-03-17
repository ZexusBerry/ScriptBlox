local player = game.Players.LocalPlayer

-- Создаем ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

-- Создаем Frame для меню
local menuFrame = Instance.new("Frame")
menuFrame.Name = "ModernMenu"
menuFrame.Size = UDim2.new(0.3, 0, 0.5, 0)
menuFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
menuFrame.AnchorPoint = Vector2.new(0.5, 0.5)
menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
menuFrame.BorderSizePixel = 0
menuFrame.ClipsDescendants = true
menuFrame.Parent = screenGui

-- Создаем ScrollFrame для кнопок
local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, 0, 0.9, 0)
scrollFrame.Position = UDim2.new(0, 0, 0.05, 0)
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 200) -- Высота контента должна соответствовать сумме высоты всех кнопок
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 8
scrollFrame.Parent = menuFrame

-- Функция для создания анимированных кнопок внутри ScrollFrame
local function CreateAnimatedButton(text, position)
	local button = Instance.new("TextButton")
	button.Text = text
	button.Size = UDim2.new(0.8, 0, 0.15, 0)
	button.Position = position
	button.AnchorPoint = Vector2.new(0.5, 0)
	button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	button.BorderColor3 = Color3.fromRGB(100, 100, 100)
	button.BorderSizePixel = 2
	button.Font = Enum.Font.SourceSansBold
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextSize = 20
	button.TextWrapped = true
	button.Parent = scrollFrame

	-- Добавляем анимацию при наведении мыши
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	end)

	return button
end

-- Создаем кнопки внутри ScrollFrame
local autoClickButton = CreateAnimatedButton("Auto Click: OFF", UDim2.new(0.5, 0, 0, 0))
local autoClaimButton = CreateAnimatedButton("Auto Claim Present: OFF", UDim2.new(0.5, 0, 0.2, 0))
local autoSpinButton = CreateAnimatedButton("Auto Spin: OFF", UDim2.new(0.5, 0, 0.4, 0))
local autoRebirthButton = CreateAnimatedButton("Auto Rebirth: OFF", UDim2.new(0.5, 0, 0.6, 0))
local equipPetButton = CreateAnimatedButton("Equip Best Pet", UDim2.new(0.5, 0, 0.8, 0))

-- Обновляем высоту контента в ScrollFrame
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, equipPetButton.Position.Y.Offset + equipPetButton.Size.Y.Offset)

-- Функция для переключения состояния кнопки
local function ToggleButtonState(button, newState)
	button.Text = newState and button.Text:gsub("OFF", "ON") or button.Text:gsub("ON", "OFF")
end

local function AutoClaimReward()
	while autoClaimButton.Text:find("ON") do
		for i = 1, 12 do
			local args = {
				[1] = tostring(i)
			}
			game:GetService("ReplicatedStorage").Packages.Knit.Services.TimedRewardService.RE.onClaim:FireServer(unpack(args))
			wait(0.4)
		end
	end
end

local autoClickEnabled = false
local function AutoClick()
	while autoClickEnabled do
		game:GetService("ReplicatedStorage").Packages.Knit.Services.ToolService.RE.onClick:FireServer()
		warn("OH YEEEES Clicked me ahh")
		wait(0.3)
	end
end

-- Связываем кнопки с функциями переключения
autoClickButton.MouseButton1Click:Connect(function()
	autoClickEnabled = not autoClickEnabled
	ToggleButtonState(autoClickButton, autoClickEnabled)
	AutoClick()
end)

autoClaimButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoClaimButton, not autoClaimButton.Text:find("ON"))
end)

autoSpinButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoSpinButton, not autoSpinButton.Text:find("ON"))
end)

autoRebirthButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoRebirthButton, not autoRebirthButton.Text:find("ON"))
end)

-- Пример обработчика события для кнопки Equip Best Pet
equipPetButton.MouseButton1Click:Connect(function()
	-- Здесь можно добавить код для экипировки лучшего питомца
	print("Equipping best pet...")
end)
