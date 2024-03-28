local function createPlayerOutlines(localPlayer)
	local players = game:GetService("Players"):GetPlayers()

	for _, player in ipairs(players) do
		if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			for _, part in ipairs(player.Character:GetDescendants()) do
				if part:IsA("BasePart") then
					local outline = Instance.new("BoxHandleAdornment")
					outline.Name = "PlayerOutline"
					outline.Size = part.Size * 1.00
					outline.Color3 = Color3.fromRGB(255, 0, 0)
					outline.Adornee = part
					outline.Transparency = 0.50
					outline.AlwaysOnTop = true
					outline.ZIndex = 0
					outline.Parent = part
				end
			end
		end
	end
end

local function infiniteJump()
	if _G.infinJump == nil then
		_G.infinJump = true
		game.StarterGui:SetCore("SendNotification", {Title="Inf Jump By Zexus"; Text="InfinitY Jump"; Duration=5;})

		local plr = game:GetService('Players').LocalPlayer
		local m = plr:GetMouse()
		m.KeyDown:Connect(function(k)
			if _G.infinJump then
				if k:byte() == 32 then
					local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
					humanoid:ChangeState('Jumping')
					wait()
					humanoid:ChangeState('Seated')
				end
			end
		end)
	end
end

local function DrawTracer(player)
	local lplr = game.Players.LocalPlayer
	local camera = game.Workspace.CurrentCamera

	local Tracer = Drawing.new("Line")
	Tracer.Visible = false
	Tracer.Color = Color3.fromRGB(255, 0, 0)
	Tracer.Thickness = 1
	Tracer.Transparency = 1

	game:GetService("RunService").RenderStepped:Connect(function()
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and player ~= lplr then
			local Vector, OnScreen = camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
			local LocalPlayerVector, _ = camera:WorldToViewportPoint(lplr.Character.HumanoidRootPart.Position)

			if OnScreen then
				Tracer.From = Vector2.new(LocalPlayerVector.X, LocalPlayerVector.Y)
				Tracer.To = Vector2.new(Vector.X, Vector.Y)
				Tracer.Visible = true
			else
				Tracer.Visible = false
			end
		else
			Tracer.Visible = false
		end
	end)
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local SquareButton = Instance.new("TextButton")
SquareButton.Name = "SquareButton"
SquareButton.Size = UDim2.new(0, 50, 0, 50)
SquareButton.Position = UDim2.new(0, 10, 0, 10)
SquareButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SquareButton.BorderSizePixel = 0
SquareButton.Text = "Open"
SquareButton.Parent = ScreenGui

local MenuScrollingFrame = Instance.new("ScrollingFrame")
MenuScrollingFrame.Name = "MenuScrollingFrame"
MenuScrollingFrame.Size = UDim2.new(0, 220, 0, 350)
MenuScrollingFrame.Position = UDim2.new(0.5, -100, 0.5, -175)
MenuScrollingFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MenuScrollingFrame.BorderSizePixel = 0
MenuScrollingFrame.Visible = false
MenuScrollingFrame.ScrollBarThickness = 12
MenuScrollingFrame.Parent = ScreenGui

local function toggleMenu()
	MenuScrollingFrame.Visible = not MenuScrollingFrame.Visible
end

SquareButton.MouseButton1Click:Connect(toggleMenu)

local MenuFrame = Instance.new("Frame")
MenuFrame.Name = "MenuFrame"
MenuFrame.Size = UDim2.new(1, 0, 12, 0)
MenuFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
MenuFrame.BorderSizePixel = 0
MenuFrame.Parent = MenuScrollingFrame

MenuScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, MenuFrame.AbsoluteSize.Y)


-- Создаем фрейм внутри скроллируемого фрейма для кнопок меню
local MenuFrame = Instance.new("Frame")
MenuFrame.Name = "MenuFrame"
MenuFrame.Size = UDim2.new(1, 0, 1, 0)
MenuFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
MenuFrame.BorderSizePixel = 0
MenuFrame.Parent = MenuScrollingFrame

-- Добавляем вертикальный скроллинг к меню
MenuScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, MenuFrame.AbsoluteSize.Y)

local Button1 = Instance.new("TextButton")
Button1.Name = "Button1"
Button1.Size = UDim2.new(0, 200, 0, 50)
Button1.Position = UDim2.new(0, 10, 0, 10)
Button1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Button1.BorderSizePixel = 0
Button1.Text = "Create Player Outlines"
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
Button1.Parent = MenuScrollingFrame

-- Кнопка для включения/выключения бесконечного прыжка
local Button2 = Instance.new("TextButton")
Button2.Name = "Button2"
Button2.Size = UDim2.new(0, 200, 0, 50)
Button2.Position = UDim2.new(0, 10, 0, 70)
Button2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Button2.BorderSizePixel = 0
Button2.Text = "Infinity Jump"
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)
Button2.Parent = MenuScrollingFrame

-- Кнопка для включения/выключения отображения линии следа
local Button3 = Instance.new("TextButton")
Button3.Name = "Button3"
Button3.Size = UDim2.new(0, 200, 0, 50)
Button3.Position = UDim2.new(0, 10, 0, 130)
Button3.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Button3.BorderSizePixel = 0
Button3.Text = "Tracer"
Button3.TextColor3 = Color3.fromRGB(255, 255, 255)
Button3.Parent = MenuScrollingFrame

local SpeedTextBox = Instance.new("TextBox")
SpeedTextBox.Name = "SpeedTextBox"
SpeedTextBox.Size = UDim2.new(0, 200, 0, 30)
SpeedTextBox.Position = UDim2.new(0, 10, 0, 190)
SpeedTextBox.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
SpeedTextBox.BorderSizePixel = 0
SpeedTextBox.PlaceholderText = "Speed"
SpeedTextBox.Parent = MenuScrollingFrame

-- Текстовое поле для изменения силы прыжка игрока
local JumpPowerTextBox = Instance.new("TextBox")
JumpPowerTextBox.Name = "JumpPowerTextBox"
JumpPowerTextBox.Size = UDim2.new(0, 200, 0, 30)
JumpPowerTextBox.Position = UDim2.new(0, 10, 0, 230)
JumpPowerTextBox.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
JumpPowerTextBox.BorderSizePixel = 0
JumpPowerTextBox.PlaceholderText = "Jump Power"
JumpPowerTextBox.Parent = MenuScrollingFrame

local LightMeButton = Instance.new("TextButton")
LightMeButton.Name = "LightMeButton"
LightMeButton.Size = UDim2.new(0, 200, 0, 50)
LightMeButton.Position = UDim2.new(0, 10, 0, 270)
LightMeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
LightMeButton.BorderSizePixel = 0
LightMeButton.Text = "Light Me"
LightMeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LightMeButton.Parent = MenuScrollingFrame

local TeleportTo = Instance.new("TextButton")
TeleportTo.Name = "TeleportTo"
TeleportTo.Size = UDim2.new(0, 200, 0, 50)
TeleportTo.Position = UDim2.new(0, 10, 0, 330)
TeleportTo.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
TeleportTo.BorderSizePixel = 1
TeleportTo.Text = "Teleport to random player"
TeleportTo.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportTo.Parent = MenuScrollingFrame

local invisibleObj = Instance.new("TextButton")
invisibleObj.Name = "invisibleObj"
invisibleObj.Size = UDim2.new(0, 200, 0, 50)
invisibleObj.Position = UDim2.new(0, 10, 0, 390)
invisibleObj.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
invisibleObj.BorderSizePixel = 1
invisibleObj.Text = "invisible Object"
invisibleObj.TextColor3 = Color3.fromRGB(255, 255, 255)
invisibleObj.Parent = MenuScrollingFrame

local MeterPlayers = Instance.new("TextButton")
MeterPlayers.Name = "MeterPlayers"
MeterPlayers.Size = UDim2.new(0, 200, 0, 50)
MeterPlayers.Position = UDim2.new(0, 10, 0, 450)
MeterPlayers.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
MeterPlayers.BorderSizePixel = 1
MeterPlayers.Text = "Players Names"
MeterPlayers.TextColor3 = Color3.fromRGB(255, 255, 255)
MeterPlayers.Parent = MenuScrollingFrame

local HealButton1 = Instance.new("TextButton")
HealButton1.Name = "HealButton1"
HealButton1.Size = UDim2.new(0, 200, 0, 50)
HealButton1.Position = UDim2.new(0, 10, 0, 510)
HealButton1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
HealButton1.BorderSizePixel = 1
HealButton1.Text = "PLayers Heal"
HealButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
HealButton1.Parent = MenuScrollingFrame

local HealBar1 = Instance.new("TextButton")
HealBar1.Name = "HealBar1"
HealBar1.Size = UDim2.new(0, 200, 0, 50)
HealBar1.Position = UDim2.new(0, 10, 0, 570)
HealBar1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
HealBar1.BorderSizePixel = 1
HealBar1.Text = "Players Heal Bar"
HealBar1.TextColor3 = Color3.fromRGB(255, 255, 255)
HealBar1.Parent = MenuScrollingFrame

local PLayersDistanse1 = Instance.new("TextButton")
PLayersDistanse1.Name = "PLayersDistanse1"
PLayersDistanse1.Size = UDim2.new(0, 200, 0, 50)
PLayersDistanse1.Position = UDim2.new(0, 10, 0, 630)
PLayersDistanse1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
PLayersDistanse1.BorderSizePixel = 1
PLayersDistanse1.Text = "Players Distance"
PLayersDistanse1.TextColor3 = Color3.fromRGB(255, 255, 255)
PLayersDistanse1.Parent = MenuScrollingFrame

local EyeTracer = Instance.new("TextButton")
EyeTracer.Name = "EyeTracer"
EyeTracer.Size = UDim2.new(0, 200, 0, 50)
EyeTracer.Position = UDim2.new(0, 10, 0, 690)
EyeTracer.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
EyeTracer.BorderSizePixel = 1
EyeTracer.Text = "Players Eye tracer"
EyeTracer.TextColor3 = Color3.fromRGB(255, 255, 255)
EyeTracer.Parent = MenuScrollingFrame

local function updatePlayerDistances(localPlayer)
	for _, player in ipairs(game.Players:GetPlayers()) do
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			-- Получаем позицию головы игрока
			local playerHead = player.Character:FindFirstChild("Head")
			if not playerHead then
				continue
			end

			-- Позиция головы игрока
			local playerHeadPosition = playerHead.Position
			-- Позиция головы нашего игрока
			local localPlayerHeadPosition = localPlayer.Character.Head.Position
			-- Расстояние между игроками
			local distance = (playerHeadPosition - localPlayerHeadPosition).Magnitude

			-- Создаем или обновляем GUI текст для расстояния между игроками
			local playerGui = player:FindFirstChild("PlayerDistanceGui")
			if not playerGui then
				playerGui = Instance.new("BillboardGui")
				playerGui.Name = "PlayerDistanceGui"
				playerGui.AlwaysOnTop = true
				playerGui.ExtentsOffset = Vector3.new(0, -3, 0) -- Расстояние над ногами игрока
				playerGui.MaxDistance = 100 -- Максимальное расстояние, на котором виден GUI
				playerGui.Size = UDim2.new(0, 100, 0, 20)
				playerGui.StudsOffset = Vector3.new(0, 1, 0) -- Положение GUI относительно игрока
				playerGui.Parent = player.Character.Head

				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "DistanceLabel"
				textLabel.Size = UDim2.new(1, 0, 1, 0)
				textLabel.TextScaled = false
				textLabel.TextSize = 14
				textLabel.BackgroundTransparency = 1 -- Прозрачный фон
				textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Цвет текста
				textLabel.Text = string.format("%.2f", distance)
				textLabel.Parent = playerGui
			else
				playerGui.DistanceLabel.Text = string.format("%.2f", distance)
			end
		end
	end
end

PLayersDistanse1.MouseButton1Click:Connect(function()
	updatePlayerDistances(game.Players.LocalPlayer)
end)

local playerHealthBars = {}

local function updatePlayerHealthBar()
	while true do
		for _, player in ipairs(game.Players:GetPlayers()) do
			if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					local playerGui = player:FindFirstChild("PlayerHealthBarGui")
					if not playerGui then
						playerGui = Instance.new("BillboardGui")
						playerGui.Name = "PlayerHealthBarGui"
						playerGui.AlwaysOnTop = true
						playerGui.ExtentsOffset = Vector3.new(0, 1.5, 0)
						playerGui.Size = UDim2.new(1.5, 0, 1.5, 0)
						playerGui.MaxDistance = 122
						playerGui.StudsOffset = Vector3.new(0, 1, 0)
						playerGui.Parent = player.Character.Head

						local healthBarFrame = Instance.new("Frame")
						healthBarFrame.Name = "HealthBarFrame"
						healthBarFrame.Size = UDim2.new(1, 0, 0.1, 0)
						healthBarFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						healthBarFrame.BorderSizePixel = 1
						healthBarFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
						healthBarFrame.Parent = playerGui

						local healthBar = Instance.new("Frame")
						healthBar.Name = "HealthBar"
						healthBar.Size = UDim2.new(1, 0, 1, 0)
						healthBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
						healthBar.BorderSizePixel = 0
						healthBar.Parent = healthBarFrame
					end
					playerGui.HealthBarFrame.HealthBar.Size = UDim2.new(humanoid.Health / humanoid.MaxHealth, 0, 1, 0)
				end
			end
		end
		wait(0.1)
	end
end

-- Привязываем функцию обновления к кнопке pop2
HealBar1.MouseButton1Click:Connect(updatePlayerHealthBar)


local playerHealthGuis = {}

-- Функция для обновления здоровья игроков
local function updatePlayerHealth()
	while true do
		for _, player in ipairs(game.Players:GetPlayers()) do
			if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					local playerGui = playerHealthGuis[player]
					if not playerGui then
						playerGui = Instance.new("BillboardGui")
						playerGui.Name = "PlayerHealthGui"
						playerGui.AlwaysOnTop = true
						playerGui.ExtentsOffset = Vector3.new(0, 1.4, 0)
						playerGui.Size = UDim2.new(0, 100, 0, 20)
						playerGui.MaxDistance = 122
						playerGui.StudsOffset = Vector3.new(0, 1, 0)
						playerGui.Parent = player.Character.Head

						local textLabel = Instance.new("TextLabel")
						textLabel.Name = "HealthLabel"
						textLabel.Size = UDim2.new(1, 0, 1, 0)
						textLabel.TextScaled = false
						textLabel.TextSize = 10
						textLabel.BackgroundTransparency = 1
						textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
						textLabel.Parent = playerGui

						playerHealthGuis[player] = playerGui
					end
					playerGui.HealthLabel.Text = tostring(humanoid.Health)
				end
			end
		end
		wait(0.1) -- Пауза в 0.1 секунды перед следующим обновлением
	end
end

-- Привязываем функцию обновления к кнопке HealButton1
HealButton1.MouseButton1Click:Connect(updatePlayerHealth)

local function updatePlayerTitles(localPlayer)
	for _, player in ipairs(game.Players:GetPlayers()) do
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			-- Получаем позицию головы игрока
			local playerHead = player.Character:FindFirstChild("Head")
			if not playerHead then
				continue
			end

			-- Создаем или обновляем GUI текст для имени игрока
			local playerGui = player:FindFirstChild("PlayerTitleGui")
			if not playerGui then
				playerGui = Instance.new("BillboardGui")
				playerGui.Name = "PlayerTitleGui"
				playerGui.AlwaysOnTop = true
				playerGui.ExtentsOffset = Vector3.new(0, 0.5, 0) -- Расстояние над головой игрока
				playerGui.MaxDistance = 122
				playerGui.Size = UDim2.new(0, 100, 0, 20)
				playerGui.StudsOffset = Vector3.new(0, 1, 0) -- Положение GUI относительно игрока
				playerGui.Parent = player.Character.Head

				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "TitleLabel"
				textLabel.Size = UDim2.new(1, 0, 1, 0)
				textLabel.TextScaled = false
				textLabel.TextSize = 10
				textLabel.BackgroundTransparency = 1 -- Прозрачный фон
				textLabel.TextColor3 = Color3.fromRGB(68, 170, 92) -- Цвет текста
				textLabel.Text = player.Name
				textLabel.Parent = playerGui
			else
				playerGui.TitleLabel.Text = player.Name
			end
		end
	end
end

MeterPlayers.MouseButton1Click:Connect(updatePlayerTitles)
	

local isTransparent = false

local function toggleTransparency()
	isTransparent = not isTransparent
	local transparencyValue = isTransparent and 0.35 or 0

	for _, obj in ipairs(game:GetDescendants()) do
		if obj:IsA("BasePart") then
			obj.Transparency = transparencyValue
		end
	end
end

invisibleObj.MouseButton1Click:Connect(toggleTransparency)


local function teleportToRandomPlayer()
	local players = game.Players:GetPlayers()
	if #players > 1 then
		local randomPlayer = players[math.random(1, #players)]
		local character = randomPlayer.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0))
		end
	end
end

-- Привязываем функцию к кнопке "Teleport to Random Player"
TeleportTo.MouseButton1Click:Connect(teleportToRandomPlayer)

-- Функция для создания света вокруг игрока
local function createPlayerLight()
	local lplr = game.Players.LocalPlayer

	-- Создаем и настраиваем световой объект
	local light = Instance.new("PointLight")
	light.Brightness = 10
	light.Range = 50
	light.Color = Color3.fromRGB(255, 255, 255)
	light.Parent = lplr.Character.HumanoidRootPart

	-- Удаляем световой объект через некоторое время
	wait(6)
	light:Destroy()
end

-- Привязываем функцию создания света к кнопке "Light Me"
LightMeButton.MouseButton1Click:Connect(createPlayerLight)

-- Функция связывания кнопок с выполнением функций
Button1.MouseButton1Click:Connect(function()
	createPlayerOutlines(game:GetService("Players").LocalPlayer)
end)

Button2.MouseButton1Click:Connect(function()
	_G.infinjump = not _G.infinjump
	if _G.infinjump then
		infiniteJump()
	end
end)

Button3.MouseButton1Click:Connect(function()
	_G.tracerEnabled = not _G.tracerEnabled
	if _G.tracerEnabled then
		for _, player in ipairs(game.Players:GetPlayers()) do
			DrawTracer(player)
		end
		game.Players.PlayerAdded:Connect(DrawTracer)
	end
end)

-- Добавляем обработчик события для новых игроков
game:GetService("Players").PlayerAdded:Connect(function(player)
	createPlayerOutlines(player)
	if _G.tracerEnabled then
		DrawTracer(player)
	end
end)

SpeedTextBox.Changed:Connect(function()
	local speedValue = tonumber(SpeedTextBox.Text)
	if speedValue then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedValue
	end
end)

-- Обработчик события изменения текста в поле "JumpPowerTextBox"
JumpPowerTextBox.Changed:Connect(function()
	local jumpPowerValue = tonumber(JumpPowerTextBox.Text)
	if jumpPowerValue then
		game.Players.LocalPlayer.Character.Humanoid.JumpHeight = jumpPowerValue
	end
end)

local dragging
local dragInput
local dragStart
local startPos

MenuFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MenuFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

MenuFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		MenuFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)
