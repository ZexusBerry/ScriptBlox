-- Получаем игрока
local player = game.Players.LocalPlayer

-- Создаем ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PiPiHub"
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
menuFrame.Draggable = true
menuFrame.Parent = screenGui

-- Создаем кнопку для закрытия меню
local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.TextSize = 20
closeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
closeButton.Position = UDim2.new(0.9, 0, 0, 0)
closeButton.AnchorPoint = Vector2.new(0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
closeButton.BorderSizePixel = 0
closeButton.MouseButton1Click:Connect(function()
	menuFrame.Visible = false
end)
closeButton.Parent = menuFrame

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

-- Создаем текстовую метку для названия меню
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

------Button and Ofther------

local autoClickButton = CreateAnimatedButton("Auto Click: OFF", UDim2.new(0.5, 0, 0.1, 0))
local autoSellButton = CreateAnimatedButton("Auto Sell: OFF", UDim2.new(0.5, 0, 0.3, 0))

------Button and Ofther------

scrollFrame.CanvasSize = UDim2.new(0, 0, 0, autoUpgrateShurikenButton.Position.Y.Offset + autoUpgrateShurikenButton.Size.Y.Offset)

-- Функция для переключения состояния кнопки
local function ToggleButtonState(button, newState)
	button.Text = newState and button.Text:gsub("OFF", "ON") or button.Text:gsub("ON", "OFF")
end

autoClickButton.MouseButton1Click:Connect(function()
	ToggleButtonState(autoClickButton, not autoClickButton.Text:find("ON"))
end)

local function AutoSell()
    while true do
    local args = {
        [1] = {
            [1] = "SellMuscle"
        }
    }

       game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
       wait(1.5)
    end
end

autoSellButton.MouseButton1Click:connect(AutoSell)

local function AutoClick()
    while true do
        local args = {
            [1] = {
                [1] = "GainMuscle"
            }
        }
        
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        wait(0.3)   
    end
end

autoClickButton.MouseButton1Click:connect(AutoClick)
