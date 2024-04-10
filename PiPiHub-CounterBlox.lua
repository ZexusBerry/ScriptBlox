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
local TitleButton = CreateAnimatedButton("Name: OFF", UDim2.new(0.5, 0, 0.49, 0))
local HealButton = CreateAnimatedButton("heal: OFF", UDim2.new(0.5, 0, 0.62, 0))
local DistanceButton = CreateAnimatedButton("Distance: OFF", UDim2.new(0.5, 0, 0.79, 0))
local UnlockAllSkinButton = CreateAnimatedButton("Unlock All Skins", UDim2.new(0.5, 0, 0.98, 0))

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

TitleButton.MouseButton1Click:Connect(function()
    ToggleButtonState(TitleButton, not TitleButton.Text:find("ON"))
end)

HealButton.MouseButton1Click:Connect(function()
    ToggleButtonState(HealButton, not HealButton.Text:find("ON"))
end)

DistanceButton.MouseButton1Click:Connect(function()
    ToggleButtonState(DistanceButton, not DistanceButton.Text:find("ON"))
end)


local function TriggerFunction()
    local Players = game:GetService("Players")
    local Camera = game.Workspace.CurrentCamera
    
    local aimingAtPlayer = false
    
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

local function updatePlayerTitles()
    while true do
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
				playerGui.ExtentsOffset = Vector3.new(0, 0.4, 0) -- Расстояние над головой игрока
				playerGui.MaxDistance = 9999
				playerGui.Size = UDim2.new(0, 100, 0, 20)
				playerGui.StudsOffset = Vector3.new(0, 1, 0) -- Положение GUI относительно игрока
				playerGui.Parent = player.Character.Head

				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "TitleLabel"
				textLabel.Size = UDim2.new(1, 0, 1, 0)
				textLabel.TextScaled = false
				textLabel.TextSize = 10
				textLabel.BackgroundTransparency = 1 -- Прозрачный фон
				textLabel.TextColor3 = Color3.fromRGB(36, 212, 23) -- Цвет текста
				textLabel.Text = player.Name
				textLabel.Parent = playerGui
                wait(4)
			else
				playerGui.TitleLabel.Text = player.Name
			end
		end
	end
end
end

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
						playerGui.ExtentsOffset = Vector3.new(0, 2.5, 0)
						playerGui.Size = UDim2.new(0, 100, 0, 20)
						playerGui.MaxDistance = 9999
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

local function GetAllSkin()
local LocalPlayer = game:GetService("Players").LocalPlayer local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client) local ReplicatedStorage = game:GetService("ReplicatedStorage")  local allSkins = {    {'AK47_Ace'},    {'AK47_Bloodboom'},    {'AK47_Clown'},    {'AK47_Code Orange'},    {'AK47_Eve'},    {'AK47_Gifted'},    {'AK47_Glo'},    {'AK47_Godess'},    {'AK47_Hallows'},    {'AK47_Halo'},    {'AK47_Hypersonic'},    {'AK47_Inversion'},    {'AK47_Jester'},    {'AK47_Maker'},    {'AK47_Mean Green'},    {'AK47_Outlaws'},    {'AK47_Outrunner'},    {'AK47_Patch'},    {'AK47_Plated'},    {'AK47_Precision'},    {'AK47_Quantum'},    {'AK47_Quicktime'},    {'AK47_Scapter'},    {'AK47_Secret Santa'},    {'AK47_Shooting Star'},    {'AK47_Skin Committee'},    {'AK47_Survivor'},    {'AK47_Ugly Sweater'},    {'AK47_VAV'},    {'AK47_Variant Camo'},    {'AK47_Yltude'},    {'AUG_Chilly Night'},    {'AUG_Dream Hound'},    {'AUG_Enlisted'},    {'AUG_Graffiti'},    {'AUG_Homestead'},    {'AUG_Maker'},    {'AUG_NightHawk'},    {'AUG_Phoenix'},    {'AUG_Sunsthetic'},    {'AWP_Abaddon'},    {'AWP_Autumness'},    {'AWP_Blastech'},    {'AWP_Bloodborne'},    {'AWP_Coffin Biter'},    {'AWP_Desert Camo'},    {'AWP_Difference'},    {'AWP_Dragon'},    {'AWP_Forever'},    {'AWP_Grepkin'},    {'AWP_Hika'},    {'AWP_Illusion'},    {'AWP_Instinct'},    {'AWP_JTF2'},    {'AWP_Lunar'},    {'AWP_Nerf'},    {'AWP_Northern Lights'},    {'AWP_Pear Tree'},    {'AWP_Pink Vision'},    {'AWP_Pinkie'},    {'AWP_Quicktime'},    {'AWP_Racer'},    {'AWP_Regina'},    {'AWP_Retroactive'},    {'AWP_Scapter'},    {'AWP_Silence'},    {'AWP_Venomus'},    {'AWP_Weeb'},    {'Banana_Stock'},    {'Bayonet_Aequalis'},    {'Bayonet_Banner'},    {'Bayonet_Candy Cane'},    {'Bayonet_Consumed'},    {'Bayonet_Cosmos'},    {'Bayonet_Crimson Tiger'},    {'Bayonet_Crow'},    {'Bayonet_Delinquent'},    {'Bayonet_Digital'},    {'Bayonet_Easy-Bake'},    {'Bayonet_Egg Shell'},    {'Bayonet_Festive'},    {'Bayonet_Frozen Dream'},    {'Bayonet_Geo Blade'},    {'Bayonet_Ghastly'},    {'Bayonet_Goo'},    {'Bayonet_Hallows'},    {'Bayonet_Intertwine'},    {'Bayonet_Marbleized'},    {'Bayonet_Mariposa'},    {'Bayonet_Naval'},    {'Bayonet_Neonic'},    {'Bayonet_RSL'},    {'Bayonet_Racer'},    {'Bayonet_Sapphire'},    {'Bayonet_Silent Night'},    {'Bayonet_Splattered'},    {'Bayonet_Stock'},    {'Bayonet_Topaz'},    {'Bayonet_Tropical'},    {'Bayonet_Twitch'},    {'Bayonet_UFO'},    {'Bayonet_Wetland'},    {'Bayonet_Worn'},    {'Bayonet_Wrapped'},    {'Bearded Axe_Beast'},    {'Bearded Axe_Splattered'},    {'Bizon_Autumic'},    {'Bizon_Festive'},    {'Bizon_Oblivion'},    {'Bizon_Saint Nick'},    {'Bizon_Sergeant'},    {'Bizon_Shattered'},    {'Butterfly Knife_Aurora'},    {'Butterfly Knife_Bloodwidow'},    {'Butterfly Knife_Consumed'},    {'Butterfly Knife_Cosmos'},    {'Butterfly Knife_Crimson Tiger'},    {'Butterfly Knife_Crippled Fade'},    {'Butterfly Knife_Digital'},    {'Butterfly Knife_Egg Shell'},    {'Butterfly Knife_Freedom'},    {'Butterfly Knife_Frozen Dream'},    {'Butterfly Knife_Goo'},    {'Butterfly Knife_Hallows'},    {'Butterfly Knife_Icicle'},    {'Butterfly Knife_Inversion'},    {'Butterfly Knife_Jade Dream'},    {'Butterfly Knife_Marbleized'},    {'Butterfly Knife_Naval'},    {'Butterfly Knife_Neonic'},    {'Butterfly Knife_Reaper'},    {'Butterfly Knife_Ruby'},    {'Butterfly Knife_Scapter'},    {'Butterfly Knife_Splattered'},    {'Butterfly Knife_Stock'},    {'Butterfly Knife_Topaz'},    {'Butterfly Knife_Tropical'},    {'Butterfly Knife_Twitch'},    {'Butterfly Knife_Wetland'},    {'Butterfly Knife_White Boss'},    {'Butterfly Knife_Worn'},    {'Butterfly Knife_Wrapped'},    {'CZ_Designed'},    {'CZ_Festive'},    {'CZ_Holidays'},    {'CZ_Lightning'},    {'CZ_Orange Web'},    {'CZ_Spectre'},    {'Cleaver_Spider'},    {'Cleaver_Splattered'},    {'DesertEagle_Cold Truth'},    {'DesertEagle_Cool Blue'},    {'DesertEagle_DropX'},    {'DesertEagle_Glittery'},    {'DesertEagle_Grim'},    {'DesertEagle_Heat'},    {'DesertEagle_Honor-bound'},    {'DesertEagle_Independence'},    {'DesertEagle_Krystallos'},    {'DesertEagle_Pumpkin Buster'},    {'DesertEagle_ROLVe'},    {'DesertEagle_Racer'},    {'DesertEagle_Scapter'},    {'DesertEagle_Skin Committee'},    {'DesertEagle_Survivor'},    {'DesertEagle_Weeb'},    {'DesertEagle_Xmas'},    {'DualBerettas_Carbonized'},    {'DualBerettas_Dusty Manor'},    {'DualBerettas_Floral'},    {'DualBerettas_Hexline'},    {'DualBerettas_Neon web'},    {'DualBerettas_Old Fashioned'},    {'DualBerettas_Xmas'},    {'Falchion Knife_Bloodwidow'},    {'Falchion Knife_Chosen'},    {'Falchion Knife_Coal'},    {'Falchion Knife_Consumed'},    {'Falchion Knife_Cosmos'},    {'Falchion Knife_Crimson Tiger'},    {'Falchion Knife_Crippled Fade'},    {'Falchion Knife_Digital'},    {'Falchion Knife_Egg Shell'},    {'Falchion Knife_Festive'},    {'Falchion Knife_Freedom'},    {'Falchion Knife_Frozen Dream'},    {'Falchion Knife_Goo'},    {'Falchion Knife_Hallows'},    {'Falchion Knife_Inversion'},    {'Falchion Knife_Late Night'},    {'Falchion Knife_Marbleized'},    {'Falchion Knife_Naval'},    {'Falchion Knife_Neonic'},    {'Falchion Knife_Racer'},    {'Falchion Knife_Ruby'},    {'Falchion Knife_Splattered'},    {'Falchion Knife_Stock'},    {'Falchion Knife_Topaz'},    {'Falchion Knife_Tropical'},    {'Falchion Knife_Wetland'},    {'Falchion Knife_Worn'},    {'Falchion Knife_Wrapped'},    {'Falchion Knife_Zombie'},    {'Famas_Abstract'},    {'Famas_Centipede'},    {'Famas_Cogged'},    {'Famas_Goliath'},    {'Famas_Haunted Forest'},    {'Famas_KugaX'},    {'Famas_MK11'},    {'Famas_Medic'},    {'Famas_Redux'},    {'Famas_Shocker'},    {'Famas_Toxic Rain'},    {'FiveSeven_Autumn Fade'},    {'FiveSeven_Danjo'},    {'FiveSeven_Fluid'},    {'FiveSeven_Gifted'},    {'FiveSeven_Midnight Ride'},    {'FiveSeven_Mr. Anatomy'},    {'FiveSeven_Stigma'},    {'FiveSeven_Sub Zero'},    {'FiveSeven_Summer'},    {'Flip Knife_Stock'},    {'G3SG1_Amethyst'},    {'G3SG1_Autumn'},    {'G3SG1_Foliage'},    {'G3SG1_Hex'},    {'G3SG1_Holly Bound'},    {'G3SG1_Mahogany'},    {'Galil_Frosted'},    {'Galil_Hardware 2'},    {'Galil_Hardware'},    {'Galil_Toxicity'},    {'Galil_Worn'},    {'Glock_Angler'},    {'Glock_Anubis'},    {'Glock_Biotrip'},    {'Glock_Day Dreamer'},    {'Glock_Desert Camo'},    {'Glock_Gravestomper'},    {'Glock_Midnight Tiger'},    {'Glock_Money Maker'},    {'Glock_RSL'},    {'Glock_Rush'},    {'Glock_Scapter'},    {'Glock_Spacedust'},    {'Glock_Tarnish'},    {'Glock_Underwater'},    {'Glock_Wetland'},    {'Glock_White Sauce'},    {'Gut Knife_Banner'},    {'Gut Knife_Bloodwidow'},    {'Gut Knife_Consumed'},    {'Gut Knife_Cosmos'},    {'Gut Knife_Crimson Tiger'},    {'Gut Knife_Crippled Fade'},    {'Gut Knife_Digital'},    {'Gut Knife_Egg Shell'},    {'Gut Knife_Frozen Dream'},    {'Gut Knife_Geo Blade'},    {'Gut Knife_Goo'},    {'Gut Knife_Hallows'},    {'Gut Knife_Lurker'},    {'Gut Knife_Marbleized'},    {'Gut Knife_Naval'},    {'Gut Knife_Neonic'},    {'Gut Knife_Present'},    {'Gut Knife_Ruby'},    {'Gut Knife_Rusty'},    {'Gut Knife_Splattered'},    {'Gut Knife_Topaz'},    {'Gut Knife_Tropical'},    {'Gut Knife_Wetland'},    {'Gut Knife_Worn'},    {'Gut Knife_Wrapped'},    {'Huntsman Knife_Aurora'},    {'Huntsman Knife_Bloodwidow'},    {'Huntsman Knife_Consumed'},    {'Huntsman Knife_Cosmos'},    {'Huntsman Knife_Cozy'},    {'Huntsman Knife_Crimson Tiger'},    {'Huntsman Knife_Crippled Fade'},    {'Huntsman Knife_Digital'},    {'Huntsman Knife_Egg Shell'},    {'Huntsman Knife_Frozen Dream'},    {'Huntsman Knife_Geo Blade'},    {'Huntsman Knife_Goo'},    {'Huntsman Knife_Hallows'},    {'Huntsman Knife_Honor Fade'},    {'Huntsman Knife_Marbleized'},    {'Huntsman Knife_Monster'},    {'Huntsman Knife_Naval'},    {'Huntsman Knife_Ruby'},    {'Huntsman Knife_Splattered'},    {'Huntsman Knife_Stock'},    {'Huntsman Knife_Tropical'},    {'Huntsman Knife_Twitch'},    {'Huntsman Knife_Wetland'},    {'Huntsman Knife_Worn'},    {'Huntsman Knife_Wrapped'},    {'Karambit_Bloodwidow'},    {'Karambit_Consumed'},    {'Karambit_Cosmos'},    {'Karambit_Crimson Tiger'},    {'Karambit_Crippled Fade'},    {'Karambit_Death Wish'},    {'Karambit_Digital'},    {'Karambit_Egg Shell'},    {'Karambit_Festive'},    {'Karambit_Frozen Dream'},    {'Karambit_Glossed'},    {'Karambit_Gold'},    {'Karambit_Goo'},    {'Karambit_Hallows'},    {'Karambit_Jade Dream'},    {'Karambit_Jester'},    {'Karambit_Lantern'},    {'Karambit_Liberty Camo'},    {'Karambit_Marbleized'},    {'Karambit_Naval'},    {'Karambit_Neonic'},    {'Karambit_Pizza'},    {'Karambit_Quicktime'},    {'Karambit_Racer'},    {'Karambit_Ruby'},    {'Karambit_Scapter'},    {'Karambit_Splattered'},    {'Karambit_Stock'},    {'Karambit_Topaz'},    {'Karambit_Tropical'},    {'Karambit_Twitch'},    {'Karambit_Wetland'},    {'Karambit_Worn'},    {'M249_Aggressor'},    {'M249_P2020'},    {'M249_Spooky'},    {'M249_Wolf'},    {'M4A1_Animatic'},    {'M4A1_Burning'},    {'M4A1_Desert Camo'},    {'M4A1_Heavens Gate'},    {'M4A1_Impulse'},    {'M4A1_Jester'},    {'M4A1_Lunar'},    {'M4A1_Necropolis'},    {'M4A1_Tecnician'},    {'M4A1_Toucan'},    {'M4A1_Wastelander'},    {'M4A4_BOT[S]'},    {'M4A4_Candyskull'},    {'M4A4_Delinquent'},    {'M4A4_Desert Camo'},    {'M4A4_Devil'},    {'M4A4_Endline'},    {'M4A4_Flashy Ride'},    {'M4A4_Ice Cap'},    {'M4A4_Jester'},    {'M4A4_King'},    {'M4A4_Mistletoe'},    {'M4A4_Pinkie'},    {'M4A4_Pinkvision'},    {'M4A4_Pondside'},    {'M4A4_Precision'},    {'M4A4_Quicktime'},    {'M4A4_Racer'},    {'M4A4_RayTrack'},    {'M4A4_Scapter'},    {'M4A4_Stardust'},    {'M4A4_Toy Soldier'},    {'MAC10_Artists Intent'},    {'MAC10_Blaze'},    {'MAC10_Golden Rings'},    {'MAC10_Pimpin'},    {'MAC10_Skeleboney'},    {'MAC10_Toxic'},    {'MAC10_Turbo'},    {'MAC10_Wetland'},    {'MAG7_Bombshell'},    {'MAG7_C4UTION'},    {'MAG7_Frosty'},    {'MAG7_Molten'},    {'MAG7_Outbreak'},    {'MAG7_Striped'},    {'MP7_Calaxian'},    {'MP7_Cogged'},    {'MP7_Goo'},    {'MP7_Holiday'},    {'MP7_Industrial'},    {'MP7_Reindeer'},    {'MP7_Silent Ops'},    {'MP7_Sunshot'},    {'MP9_Blueroyal'},    {'MP9_Cob Web'},    {'MP9_Cookie Man'},    {'MP9_Decked Halls'},    {'MP9_SnowTime'},    {'MP9_Vaporwave'},    {'MP9_Velvita'},    {'MP9_Wilderness'},    {'Negev_Default'},    {'Negev_Midnightbones'},    {'Negev_Quazar'},    {'Negev_Striped'},    {'Negev_Wetland'},    {'Negev_Winterfell'},    {'Nova_Black Ice'},    {'Nova_Cookie'},    {'Nova_Paradise'},    {'Nova_Sharkesh'},    {'Nova_Starry Night'},    {'Nova_Terraformer'},    {'Nova_Tiger'},    {'P2000_Apathy'},    {'P2000_Camo Dipped'},    {'P2000_Candycorn'},    {'P2000_Comet'},    {'P2000_Dark Beast'},    {'P2000_Golden Age'},    {'P2000_Lunar'},    {'P2000_Pinkie'},    {'P2000_Ruby'},    {'P2000_Silence'},    {'P250_Amber'},    {'P250_Bomber'},    {'P250_Equinox'},    {'P250_Frosted'},    {'P250_Goldish'},    {'P250_Green Web'},    {'P250_Shark'},    {'P250_Solstice'},    {'P250_TC250'},    {'P90_Demon Within'},    {'P90_Elegant'},    {'P90_Krampus'},    {'P90_Northern Lights'},    {'P90_P-Chan'},    {'P90_Pine'},    {'P90_Redcopy'},    {'P90_Skulls'},    {'R8_Exquisite'},    {'R8_Hunter'},    {'R8_Spades'},    {'R8_TG'},    {'R8_Violet'},    {'SG_DropX'},    {'SG_Dummy'},    {'SG_Kitty Cat'},    {'SG_Knighthood'},    {'SG_Magma'},    {'SG_Variant Camo'},    {'SG_Yltude'},    {'SawedOff_Casino'},    {'SawedOff_Colorboom'},    {'SawedOff_Executioner'},    {'SawedOff_Opal'},    {'SawedOff_Spooky'},    {'SawedOff_Sullys Blacklight'},    {'Scout_Coffin Biter'},    {'Scout_Flowing Mists'},    {'Scout_Hellborn'},    {'Scout_Hot Cocoa'},    {'Scout_Monstruo'},    {'Scout_Neon Regulation'},    {'Scout_Posh'},    {'Scout_Pulse'},    {'Scout_Railgun'},    {'Scout_Theory'},    {'Scout_Xmas'},    {'Sickle_Mummy'},    {'Sickle_Splattered'},    {'Tec9_Charger'},    {'Tec9_Gift Wrapped'},    {'Tec9_Ironline'},    {'Tec9_Performer'},    {'Tec9_Phol'},    {'Tec9_Samurai'},    {'Tec9_Skintech'},    {'Tec9_Stocking Stuffer'},    {'UMP_Death Grip'},    {'UMP_Gum Drop'},    {'UMP_Magma'},    {'UMP_Militia Camo'},    {'UMP_Molten'},    {'UMP_Redline'},    {'USP_Crimson'},    {'USP_Dizzy'},    {'USP_Frostbite'},    {'USP_Holiday'},    {'USP_Jade Dream'},    {'USP_Kraken'},    {'USP_Nighttown'},    {'USP_Paradise'},    {'USP_Racing'},    {'USP_Skull'},    {'USP_Unseen'},    {'USP_Worlds Away'},    {'USP_Yellowbelly'},    {'XM_Artic'},    {'XM_Atomic'},    {'XM_Campfire'},    {'XM_Endless Night'},    {'XM_MK11'},    {'XM_Predator'},    {'XM_Red'},    {'XM_Spectrum'},    {'Handwraps_Wraps'},    {'Sports Glove_Hazard'},    {'Sports Glove_Hallows'},    {'Sports Glove_Majesty'},    {'Strapped Glove_Racer'},    {'trapped Glove_Grim'},    {'trapped Glove_Wisk'},    {'Fingerless Glove_Scapter'},    {'Fingerless Glove_Digital'},    {'Fingerless Glove_Patch'},    {'Handwraps_Guts'},    {'Handwraps_Wetland'},    {'trapped Glove_Molten'},    {'Fingerless_Crystal'},    {'Sports Glove_Royal'},    {'Strapped Glove_Kringle'},    {'Handwraps_MMA'},    {'Sports Glove_Weeb'},    {'Sports Glove_CottonTail'},    {'Sports Glove_RSL'},    {'Handwraps_Ghoul Hex'},    {'Handwraps_Phantom Hex'},    {'Handwraps_Spector Hex'},    {'Handwraps_Orange Hex'},    {'Handwraps_Purple Hex'},    {'Handwraps_Green Hex'}, }  local isUnlocked  local mt = getrawmetatable(game) local oldNamecall = mt.__namecall setreadonly(mt, false)  local isUnlocked  mt.__namecall = newcclosure(function(self, ...)    local args = {...}    if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then        return    end    if getnamecallmethod() == "FireServer" then        if args[1] == LocalPlayer.UserId then            return        end        if string.len(tostring(self)) == 38 then            if not isUnlocked then                isUnlocked = true                for i,v in pairs(allSkins) do                    local doSkip                    for i2,v2 in pairs(args[1]) do                        if v[1] == v2[1] then                            doSkip = true                        end                    end                    if not doSkip then                        table.insert(args[1], v)                    end                end            end            return        end        if tostring(self) == "DataEvent" and args[1][4] then            local currentSkin = string.split(args[1][4][1], "_")[2]            if args[1][2] == "Both" then                LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin                LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin            else                LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin            end        end    end    return oldNamecall(self, ...) end)     setreadonly(mt, true)  Client.CurrentInventory = allSkins  local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone() LocalPlayer.SkinFolder.TFolder:Destroy() LocalPlayer.SkinFolder.CTFolder:Destroy() TClone.Parent = LocalPlayer.SkinFolder CTClone.Parent = LocalPlayer.SkinFolder
end

local RunService = game:GetService("RunService")

-- Создаем GUI для расстояния между игроками
local localPlayer = game.Players.LocalPlayer
local playerGui = Instance.new("BillboardGui")
playerGui.Name = "PlayerDistanceGui"
playerGui.AlwaysOnTop = true
playerGui.Size = UDim2.new(0, 100, 0, 20)
playerGui.StudsOffset = Vector3.new(0, 2, 0) -- Положение GUI над головой игрока
playerGui.Parent = localPlayer.Character.Head

local textLabel = Instance.new("TextLabel")
textLabel.Name = "DistanceLabel"
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
textLabel.TextStrokeTransparency = 0.5
textLabel.Parent = playerGui

-- Функция для обновления расстояний между игроками
local function updatePlayerDistances()
    local distanceText = ""
    -- Перебираем всех игроков в игре, кроме локального игрока
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            -- Получаем позицию корневой части игрока
            local playerTorso = player.Character:FindFirstChild("HumanoidRootPart")
            if playerTorso then
                -- Получаем позицию корневой части локального игрока
                local localPlayerTorso = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                if localPlayerTorso then
                    -- Вычисляем расстояние между игроками
                    local distance = (playerTorso.Position - localPlayerTorso.Position).Magnitude
                    distanceText = distanceText .. player.Name .. ": " .. string.format("%.2f studs\n", distance)
                end
            end
            wait(0.1) -- Пауза в 0.1 секунды перед следующим обновлением
        end
    end
    
    -- Обновляем текст расстояния в GUI
    textLabel.Text = distanceText
end

-- Обновление расстояний каждые 0.1 секунды
RunService.Heartbeat:Connect(function(deltaTime)
    updatePlayerDistances()
end)

UnlockAllSkinButton.MouseButton1Click:connect(GetAllSkin)
HealButton.MouseButton1Click:connect(updatePlayerHealth)
TitleButton.MouseButton1Click:connect(updatePlayerTitles)
TracerButton.MouseButton1Click:connect(Tracer)
TriggerBotButton.MouseButton1Click:connect(TriggerFunction)

UnlockAllSkinButton.MouseButton1Click:connect(GetAllSkin)
HealButton.MouseButton1Click:connect(updatePlayerHealth)
TitleButton.MouseButton1Click:connect(updatePlayerTitles)
TracerButton.MouseButton1Click:connect(Tracer)
TriggerBotButton.MouseButton1Click:connect(TriggerFunction)
