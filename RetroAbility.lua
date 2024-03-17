local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Создание экземпляра ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = player.PlayerGui

-- Создание основного окна меню
local menuFrame = Instance.new("Frame")
menuFrame.Name = "CustomMenu"
menuFrame.Size = UDim2.new(0.3, 0, 0.37, 0)
menuFrame.Position = UDim2.new(0.7, 0, 0.1, 0) -- Позиция справа сверху
menuFrame.BackgroundTransparency = 0.5
menuFrame.BackgroundColor3 = Color3.new(0, 0, 0)
menuFrame.BorderSizePixel = 2
menuFrame.Parent = ScreenGui

-- Создание контейнера для кнопок с возможностью прокрутки
local buttonContainer = Instance.new("ScrollingFrame")
buttonContainer.Name = "ButtonContainer"
buttonContainer.Size = UDim2.new(1, 0, 0.9, 0) -- Размер контейнера
buttonContainer.Position = UDim2.new(0, 0, 0.05, 0) -- Позиция контейнера (слева от меню)
buttonContainer.BackgroundTransparency = 1
buttonContainer.ScrollBarThickness = 8
buttonContainer.CanvasSize = UDim2.new(0, 0, 0, 0) -- Изначальный размер контейнера
buttonContainer.Parent = menuFrame

-- Функция для создания кастомной кнопки
local function CreateButton(text, position)
	local button = Instance.new("TextButton")
	button.Name = "CustomButton"
	button.Text = text
	button.Size = UDim2.new(0.8, 0, 0, 40) -- Размер кнопки
	button.Position = position
	button.AnchorPoint = Vector2.new(0.5, 0)
	button.BackgroundColor3 = Color3.fromRGB(30, 144, 255)
	button.BorderSizePixel = 0
	button.Font = Enum.Font.SourceSans
	button.TextSize = 20
	button.Parent = buttonContainer -- Помещаем кнопку в контейнер

	return button
end

-- Создание кнопки с текстом "Get All Orbs in map" и позицией UDim2.new(0.5, 0, 0.31, 0)
local Button1 = CreateButton("Rocket Launcher", UDim2.new(0.5, 0, 0, 0))
local Button2 = CreateButton("Retro Bomb", UDim2.new(0.5, 0, 0.65, 0))

-- Анимация появления кнопки
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
local tween = TweenService:Create(Button1, tweenInfo, { Position = UDim2.new(0.5, 0, 0.31, 0) })
tween:Play()
	
-- Обработчик нажатия на кнопку
local function Rock()
	local args = {
		[1] = "Bomb"
	}

	game:GetService("ReplicatedStorage").RetroAbility:FireServer(unpack(args))
end

Button1.MouseButton1Click:Connect(Rock)

local function Sleep()
	local args = {
		[1] = "Rocket Launcher"
	}

	game:GetService("ReplicatedStorage").RetroAbility:FireServer(unpack(args))
end

Button2.MouseButton1Click:Connect(Sleep)
