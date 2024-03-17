-- пипися
local player = game.Players.LocalPlayer

-- Создаем ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

-- Создаем Frame для меню
local menuFrame = Instance.new("Frame")
menuFrame.Name = "ModernMenu"
menuFrame.Size = UDim2.new(0.3, 0, 0.55, 0)
menuFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
menuFrame.AnchorPoint = Vector2.new(0.5, 0.5)
menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
menuFrame.BorderSizePixel = 0
menuFrame.ClipsDescendants = true
menuFrame.Active = true
menuFrame.Parent = screenGui

local isDragging = false
local dragStartPos = nil
local startPos = nil

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = menuFrame

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
local autoClaimButton = CreateAnimatedButton("Auto Respawn: OFF", UDim2.new(0.5, 0, 0.2, 0))
local autoSpinButton = CreateAnimatedButton("Auto Upgrate Sword: OFF", UDim2.new(0.5, 0, 0.4, 0))
local autoRebirthButton = CreateAnimatedButton("Auto Upgrate Class: OFF", UDim2.new(0.5, 0, 0.6, 0))
local equipPetButton = CreateAnimatedButton("Auto Updrate Shuriken: OFF", UDim2.new(0.5, 0, 0.8, 0))

-- Обновляем высоту контента в ScrollFrame
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, equipPetButton.Position.Y.Offset + equipPetButton.Size.Y.Offset)

-- Функция для переключения состояния кнопки
local function ToggleButtonState(button, newState)
	button.Text = newState and button.Text:gsub("OFF", "ON") or button.Text:gsub("ON", "OFF")
end

-- Связываем кнопки с функциями переключения
autoClickButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoClickButton, not autoClickButton.Text:find("ON"))
end)

local isAutoRespawnEnabled = false

-- Изменяем функцию для переключения состояния автоматического повторения
autoClaimButton.MouseButton1Click:Connect(function()
	isAutoRespawnEnabled = not isAutoRespawnEnabled
	ToggleButtonState(autoClaimButton, isAutoRespawnEnabled)
end)

-- Изменяем функцию AutoRespawn так, чтобы она вызывалась только при включенном автоматическом повторении
local function AutoRespawn()
	if isAutoRespawnEnabled then
		local args = {
			[1] = {
				[1] = game.ClientStorage.Client.Services.PersonalRemoteService,
				[2] = "40ade444-e34e-4639-a2a0-528e5abd7741",
				[3] = "0.0964279149600799",
				[4] = "78848bd5-f796-491b-b10f-b08be87ce447"
			},
			[2] = 1.00795292300063,
			[3] = 4517.031773588387
		}

		game:GetService("HttpService"):FindFirstChild("b0620e0e-6303-4d17-9a86-da77f4259161"):FireServer(unpack(args))
	end
end

-- Теперь вызываем функцию AutoRespawn каждую секунду, если автоматическое повторение включено
spawn(function()
	while true do
		wait(2)
		AutoRespawn()
	end
end)

local isAutoSpinEnabled = false

-- Изменяем функцию для переключения состояния автоматического повторения
autoSpinButton.MouseButton1Click:Connect(function()
	isAutoSpinEnabled = not isAutoSpinEnabled
	ToggleButtonState(autoSpinButton, isAutoSpinEnabled)
end)

-- Изменяем функцию AutoSpin так, чтобы она вызывалась только при включенном автоматическом повторении
local function AutoSpin()
	if isAutoSpinEnabled then
		local args = {
			[1] = {
				[1] = game.ClientStorage.Client.Services.PersonalRemoteService,
				[2] = "fec6f919-2d3c-4274-a40f-bf3e9cc1cbcf",
				[3] = "0.07991774498696265",
				[4] = "e6893e35-f0fe-4945-b807-17d5d4b785ab"
			}
		}

		game:GetService("SolidModelContentProvider"):FindFirstChild("7e78c8b8-4fea-4c33-9e99-73df654b42d6"):InvokeServer(unpack(args))
	end
end

-- Теперь вызываем функцию AutoSpin каждую секунду, если автоматическое повторение включено
spawn(function()
	while true do
		wait(0.7)
		AutoSpin()
	end
end)

autoRebirthButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoRebirthButton, not autoRebirthButton.Text:find("ON"))
end)

equipPetButton.MouseButton1Click:Connect(function()
	ToggleButtonState(equipPetButton, not equipPetButton.Text:find("ON"))
end)

-- Функция для отслеживания перемещения меню
menuFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		isDragging = true
		dragStartPos = input.Position
		startPos = menuFrame.Position
	end
end)

menuFrame.InputChanged:Connect(function(input)
	if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStartPos
		menuFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

menuFrame.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		isDragging = false
	end
end)
