local player = game.Players.LocalPlayer

-- Создаем ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Создаем Frame для меню
local Menu = Instance.new("Frame")
Menu.Name = "CustomMenu"
Menu.Size = UDim2.new(0.33, 0, 0.82, 0)  -- Увеличим высоту меню
Menu.Position = UDim2.new(0.17, 0, 0.44, 0)
Menu.AnchorPoint = Vector2.new(0.5, 0.5)
Menu.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Menu.BorderSizePixel = 0
Menu.ClipsDescendants = true
Menu.Parent = screenGui

local function CreateTextBox(placeholderText, position)
	local textBox = Instance.new("TextBox")
	textBox.Name = "CustomTextBox"
	textBox.Size = UDim2.new(0.8, 0, 0.08, 0)
	textBox.Position = position
	textBox.AnchorPoint = Vector2.new(0.5, 0)
	textBox.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	textBox.BorderColor3 = Color3.fromRGB(100, 100, 100)
	textBox.BorderSizePixel = 2
	textBox.Font = Enum.Font.SourceSans
	textBox.PlaceholderText = placeholderText
	textBox.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
	textBox.TextColor3 = Color3.new(1, 1, 1)
	textBox.TextSize = 20
	textBox.TextWrapped = true
	textBox.Parent = Menu
	return textBox
end

-- Функция для создания кнопки
local function CreateButton(text, position)
	local button = Instance.new("TextButton")
	button.Name = "CustomButton"
	button.Text = text
	button.Size = UDim2.new(0.8, 0, 0.08, 0)
	button.Position = position
	button.AnchorPoint = Vector2.new(0.5, 0)
	button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	button.BorderColor3 = Color3.fromRGB(100, 100, 100)
	button.BorderSizePixel = 2
	button.Font = Enum.Font.SourceSans
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextSize = 20
	button.TextWrapped = true
	button.Parent = Menu
	return button
end

-- Функция для создания чекбокса
local function CreateCheckBox(text, position)
	local checkBoxFrame = Instance.new("Frame")
	checkBoxFrame.Name = "CustomCheckBoxFrame"
	checkBoxFrame.Size = UDim2.new(0.8, 0, 0.1, 0)
	checkBoxFrame.Position = position
	checkBoxFrame.AnchorPoint = Vector2.new(0.5, 0)
	checkBoxFrame.BackgroundTransparency = 1
	checkBoxFrame.Parent = Menu

	local checkBox = Instance.new("TextButton")
	checkBox.Name = "CustomCheckBox"
	checkBox.Text = ""
	checkBox.Size = UDim2.new(0.1, 0, 0.5, 0)
	checkBox.Position = UDim2.new(0, 0, 0, 0)
	checkBox.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	checkBox.BorderColor3 = Color3.fromRGB(100, 100, 100)
	checkBox.BorderSizePixel = 2
	checkBox.Font = Enum.Font.SourceSans
	checkBox.TextSize = 20
	checkBox.AutoButtonColor = false
	checkBox.Parent = checkBoxFrame

	local checkMark = Instance.new("Frame")
	checkMark.Name = "CheckMark"
	checkMark.Size = UDim2.new(0.8, 0, 0.8, 0)
	checkMark.Position = UDim2.new(0.1, 0, 0.1, 0)
	checkMark.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
	checkMark.BorderSizePixel = 0
	checkMark.Visible = false
	checkMark.Parent = checkBox

	checkBox.MouseButton1Click:Connect(function()
		checkMark.Visible = not checkMark.Visible
	end)

	local checkText = Instance.new("TextLabel")
	checkText.Name = "CheckText"
	checkText.Text = text
	checkText.Size = UDim2.new(0.55, 0, 0.5, 0)
	checkText.Position = UDim2.new(0, 0, 0, 0)
	checkText.BackgroundTransparency = 1
	checkText.Font = Enum.Font.SourceSans
	checkText.TextSize = 20
	checkText.TextColor3 = Color3.new(1, 1, 1)
	checkText.TextWrapped = true
	checkText.Parent = checkBoxFrame

	return checkBoxFrame
end

local function CreateLabel(text, position)
	local label = Instance.new("TextLabel")
	label.Name = "CustomLabel"
	label.Text = text
	label.Size = UDim2.new(0.8, 0, 0.08, 0)
	label.Position = position
	label.AnchorPoint = Vector2.new(0.5, 0)
	label.BackgroundTransparency = 1
	label.Font = Enum.Font.SourceSans
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 20
	label.TextWrapped = true
	label.Parent = Menu
	return label
end

local function CreateDropdown(options, position)
	local dropdownFrame = Instance.new("Frame")
	dropdownFrame.Name = "CustomDropdownFrame"
	dropdownFrame.Size = UDim2.new(0.4, 0, 0.08, 0)
	dropdownFrame.Position = position
	dropdownFrame.AnchorPoint = Vector2.new(0.5, 0)
	dropdownFrame.BackgroundColor3 = Color3.fromRGB(50, 200, 165)
	dropdownFrame.BorderSizePixel = 2
	dropdownFrame.Parent = Menu

	local dropdownButton = Instance.new("TextButton")
	dropdownButton.Name = "CustomDropdownButton"
	dropdownButton.Text = "Select Option"
	dropdownButton.TextColor3 = Color3.new(0, 0, 0)
	dropdownButton.Size = UDim2.new(1, 0, 1, 0)
	dropdownButton.Position = UDim2.new(0, 0, 0, 0)
	dropdownButton.BackgroundColor3 = Color3.fromRGB(145, 140, 140)  -- Обновлен цвет фона
	dropdownButton.BorderColor3 = Color3.fromRGB(107, 105, 105)
	dropdownButton.BorderSizePixel = 0
	dropdownButton.Parent = dropdownFrame

	local dropdownOptionsFrame = Instance.new("Frame")
	dropdownOptionsFrame.Name = "OptionsFrame"
	dropdownOptionsFrame.Size = UDim2.new(1, 0, 0, 0)
	dropdownOptionsFrame.Position = UDim2.new(0, 0, 1, 0)
	dropdownOptionsFrame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	dropdownOptionsFrame.BorderSizePixel = 0
	dropdownOptionsFrame.Visible = false
	dropdownOptionsFrame.Parent = dropdownFrame

	dropdownButton.MouseButton1Click:Connect(function()
		dropdownOptionsFrame.Visible = not dropdownOptionsFrame.Visible
	end)

	for i, optionText in ipairs(options) do
		local optionButton = Instance.new("TextButton")
		optionButton.Name = "OptionButton"
		optionButton.Text = optionText
		optionButton.Size = UDim2.new(1, 0, 0, 30)
		optionButton.Position = UDim2.new(0, 0, 0, (i - 1) * 30)
		optionButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		optionButton.BorderSizePixel = 0
		optionButton.Font = Enum.Font.SourceSans
		optionButton.TextColor3 = Color3.new(1, 1, 1)
		optionButton.TextSize = 20
		optionButton.Parent = dropdownOptionsFrame

		optionButton.MouseButton1Click:Connect(function()
			dropdownButton.Text = optionText
			dropdownOptionsFrame.Visible = false
		end)
	end

	return dropdownButton
end

local function CreateSlider(minValue, maxValue, defaultValue, position, labelText, callback)
	local sliderFrame = Instance.new("Frame")
	sliderFrame.Name = "CustomSliderFrame"
	sliderFrame.Size = UDim2.new(0.8, 0, 0.08, 0)
	sliderFrame.Position = position
	sliderFrame.AnchorPoint = Vector2.new(0.5, 0)
	sliderFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	sliderFrame.BorderSizePixel = 2
	sliderFrame.Parent = Menu

	local sliderLabel = Instance.new("TextLabel")
	sliderLabel.Name = "SliderLabel"
	sliderLabel.Text = labelText or "Player Speed:"
	sliderLabel.Size = UDim2.new(0, 100, 0, 20)
	sliderLabel.Position = UDim2.new(0.5, -50, 0, -25)
	sliderLabel.BackgroundTransparency = 1
	sliderLabel.Font = Enum.Font.SourceSans
	sliderLabel.TextColor3 = Color3.new(1, 1, 1)
	sliderLabel.TextSize = 16
	sliderLabel.Parent = sliderFrame

	local slider = Instance.new("TextLabel")
	slider.Name = "CustomSlider"
	slider.Text = ""
	slider.Size = UDim2.new(0, 150, 0, 20)
	slider.Position = UDim2.new(0, 0, 0.5, -10)
	slider.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	slider.BorderSizePixel = 0
	slider.Parent = sliderFrame

	local sliderButton = Instance.new("TextButton")
	sliderButton.Name = "SliderButton"
	sliderButton.Text = ""
	sliderButton.Size = UDim2.new(0, 20, 0, 20)
	sliderButton.Position = UDim2.new(0, 0, 0.5, -10)
	sliderButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
	sliderButton.BorderColor3 = Color3.fromRGB(100, 100, 100)
	sliderButton.BorderSizePixel = 2
	sliderButton.Parent = slider

	local valueLabel = Instance.new("TextLabel")
	valueLabel.Name = "ValueLabel"
	valueLabel.Text = defaultValue
	valueLabel.Size = UDim2.new(0, 30, 0, 20)
	valueLabel.Position = UDim2.new(1, 5, 0.5, -10)
	valueLabel.BackgroundTransparency = 1
	valueLabel.Font = Enum.Font.SourceSans
	valueLabel.TextColor3 = Color3.new(1, 1, 1)
	valueLabel.TextSize = 16
	valueLabel.Parent = sliderFrame

	local dragging = false
	local function updateValue(mouseX)
		local sliderPosition = math.clamp(mouseX - slider.AbsolutePosition.X, 0, sliderFrame.AbsoluteSize.X)
		local percentage = sliderPosition / sliderFrame.AbsoluteSize.X
		local value = math.floor(minValue + (maxValue - minValue) * percentage)
		slider.Size = UDim2.new(percentage, 0, 0, 20)
		sliderButton.Position = UDim2.new(percentage, -10, 0.5, -10)
		valueLabel.Text = value
		-- Вызываем функцию обратного вызова с новым значением
		if callback then
			callback(value)
		end
	end

	sliderButton.MouseButton1Down:Connect(function()
		dragging = true
	end)

	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			updateValue(input.Position.X)
		end
	end)

	updateValue(sliderButton.AbsolutePosition.X)

	return sliderFrame
end

local function CreateToggleSwitch(defaultValue, position)
	local toggleFrame = Instance.new("Frame")
	toggleFrame.Name = "CustomToggleFrame"
	toggleFrame.Size = UDim2.new(0.2, 0, 0.08, 0)
	toggleFrame.Position = position
	toggleFrame.AnchorPoint = Vector2.new(0.5, 0)
	toggleFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	toggleFrame.BorderSizePixel = 0
	toggleFrame.Parent = Menu

	local toggleKnob = Instance.new("TextButton")
	toggleKnob.Name = "ToggleKnob"
	toggleKnob.Text = ""
	toggleKnob.Size = UDim2.new(0.5, 0, 1, 0)
	toggleKnob.Position = UDim2.new(defaultValue and 0.5 or 0, 0, 0, 0)
	toggleKnob.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
	toggleKnob.BorderColor3 = Color3.fromRGB(100, 100, 100)
	toggleKnob.BorderSizePixel = 2
	toggleKnob.Parent = toggleFrame

	local isToggled = defaultValue
	local function updateToggleVisual()
		toggleKnob:TweenPosition(UDim2.new(isToggled and 0.5 or 0, 0, 0, 0), "Out", "Quad", 0.3, true)
		toggleKnob.BackgroundColor3 = isToggled and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(200, 200, 200)
	end

	toggleKnob.MouseButton1Click:Connect(function()
		isToggled = not isToggled
		updateToggleVisual()
	end)

	updateToggleVisual()

	return toggleFrame
end



------------------------------Creator Menu Function------------------------------


local minValue = 16
local maxValue = 199
local defaultValue = 16
local sliderPosition = UDim2.new(0.5, 0, 0.07, 0)
local slider1 = CreateSlider(minValue, maxValue, defaultValue, sliderPosition, "Player Speed:", function(value)
	player.Character.Humanoid.WalkSpeed = value
end)

local minValue2 = 39
local maxValue2 = 250
local defaultValue2 = 39
local sliderPosition2 = UDim2.new(0.5, 0, 0.25, 0)
local slider2 = CreateSlider(minValue2, maxValue2, defaultValue2, sliderPosition2, "Jump Power:", function(value)
	player.Character.Humanoid.JumpHeight = value
end)

local Label1 = CreateLabel("Visual", UDim2.new(0.5, 0, 0.346, 0))

local checkBox1 = CreateCheckBox("Glow", UDim2.new(0.5, 0, 0.45, 0))
local CheckBox2 = CreateCheckBox("Tracer", UDim2.new(0.5, 0, 0.55, 0))
local CheckBox2 = CreateCheckBox("Name", UDim2.new(0.5, 0, 0.65, 0))

------------------------------Creator Menu Function------------------------------
local function GLOWE()
	local localPlayer = game:GetService("Players").LocalPlayer

	local function createPlayerOutlines()
		local players = game:GetService("Players"):GetPlayers()

		for _, player in ipairs(players) do
			if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local existingOutlines = player.Character:FindFirstChild("PlayerOutline")
				if not existingOutlines then
					for _, part in ipairs(player.Character:GetDescendants()) do
						if part:IsA("BasePart") then
							local outline = Instance.new("BoxHandleAdornment")
							outline.Name = "PlayerOutline"
							outline.Size = part.Size * 1.05
							outline.Color3 = Color3.new(0, 0, 0)
							outline.Adornee = part
							outline.Transparency = 0.42
							outline.AlwaysOnTop = true
							outline.ZIndex = 0
							outline.Parent = part
						end
					end
				end
			end
		end
	end

	createPlayerOutlines()
	game:GetService("Players").PlayerAdded:Connect(createPlayerOutlines)
end

checkBox1.MouseButton1Click:Connect(GLOWE)

local function DrawTracers()
	local localPlayer = game:GetService("Players").LocalPlayer

	local function createTracers()
		local players = game:GetService("Players"):GetPlayers()

		for _, player in ipairs(players) do
			if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local humanoidRootPart = player.Character.HumanoidRootPart

				local tracer = Instance.new("Frame")
				tracer.Name = "Tracer"
				tracer.Size = UDim2.new(0, 1, 0, 2)
				tracer.BackgroundColor3 = Color3.new(1, 0, 0) -- Цвет полосы
				tracer.BorderSizePixel = 0
				tracer.Parent = game.Players.LocalPlayer.PlayerGui -- Родительский элемент GUI

				local connection
				connection = game:GetService("RunService").RenderStepped:Connect(function()
					if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
						local viewportPosition = workspace.CurrentCamera:WorldToViewportPoint(humanoidRootPart.Position)
						if viewportPosition.Z > 0 then
							local screenSize = game:GetService("GuiService"):GetScreenSize()
							local uiPosition = Vector2.new(viewportPosition.X * screenSize.X, viewportPosition.Y * screenSize.Y)
							tracer.Position = UDim2.new(0, uiPosition.X, 0, uiPosition.Y)
							tracer.Visible = true
						else
							tracer.Visible = false
						end
					else
						tracer:Destroy()
						connection:Disconnect()
					end
				end)
			end
		end
	end

	createTracers()
	game:GetService("Players").PlayerAdded:Connect(createTracers)
end

CheckBox2.MouseButton1Click:Connect(DrawTracers)
