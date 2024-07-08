-- Создание GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local SpeedSliderLabel = Instance.new("TextLabel")
local SpeedSlider = Instance.new("TextBox")
local FlySpeedSliderLabel = Instance.new("TextLabel")
local FlySpeedSlider = Instance.new("TextBox")
local JumpHeightSliderLabel = Instance.new("TextLabel")
local JumpHeightSlider = Instance.new("TextBox")
local FlyCheckbox = Instance.new("TextButton")
local BToolsButton = Instance.new("TextButton")
local ToggleButton = Instance.new("TextButton")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Свойства ScreenGui
ScreenGui.Name = "SimpleGUI"
ScreenGui.Parent = game.CoreGui

-- Свойства MainFrame
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1) -- Темно-серый цвет
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -150) -- Центр экрана, смещение
MainFrame.Size = UDim2.new(0, 350, 0, 360) -- Размер 350x360 пикселей
MainFrame.Active = true
MainFrame.Draggable = true

-- Свойства TitleLabel
TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
TitleLabel.Position = UDim2.new(0.05, 0, 0.05, 0) -- Положение внутри Frame с отступами
TitleLabel.Size = UDim2.new(0, 300, 0, 30) -- Размер 300x30 пикселей
TitleLabel.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
TitleLabel.Text = "GastHUB v1.0"
TitleLabel.TextScaled = true

-- Свойства SpeedSliderLabel
SpeedSliderLabel.Name = "SpeedSliderLabel"
SpeedSliderLabel.Parent = MainFrame
SpeedSliderLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
SpeedSliderLabel.Position = UDim2.new(0.05, 0, 0.15, 0) -- Положение внутри Frame с отступами
SpeedSliderLabel.Size = UDim2.new(0, 300, 0, 35) -- Размер 300x30 пикселей
SpeedSliderLabel.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
SpeedSliderLabel.Text = "Player Speed"
SpeedSliderLabel.TextScaled = true

-- Свойства SpeedSlider
SpeedSlider.Name = "SpeedSlider"
SpeedSlider.Parent = MainFrame
SpeedSlider.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
SpeedSlider.Position = UDim2.new(0.05, 0, 0.25, 0) -- Положение внутри Frame с отступами
SpeedSlider.Size = UDim2.new(0, 300, 0, 30) -- Размер 300x30 пикселей
SpeedSlider.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
SpeedSlider.Text = "16" -- Начальная скорость
SpeedSlider.TextScaled = true

-- Свойства FlySpeedSliderLabel
FlySpeedSliderLabel.Name = "FlySpeedSliderLabel"
FlySpeedSliderLabel.Parent = MainFrame
FlySpeedSliderLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
FlySpeedSliderLabel.Position = UDim2.new(0.05, 0, 0.35, 0) -- Положение внутри Frame с отступами
FlySpeedSliderLabel.Size = UDim2.new(0, 300, 0, 35) -- Размер 300x30 пикселей
FlySpeedSliderLabel.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
FlySpeedSliderLabel.Text = "Fly Speed"
FlySpeedSliderLabel.TextScaled = true

-- Свойства FlySpeedSlider
FlySpeedSlider.Name = "FlySpeedSlider"
FlySpeedSlider.Parent = MainFrame
FlySpeedSlider.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
FlySpeedSlider.Position = UDim2.new(0.05, 0, 0.45, 0) -- Положение внутри Frame с отступами
FlySpeedSlider.Size = UDim2.new(0, 300, 0, 30) -- Размер 300x30 пикселей
FlySpeedSlider.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
FlySpeedSlider.Text = "50" -- Начальная скорость полета
FlySpeedSlider.TextScaled = true

-- Свойства JumpHeightSliderLabel
JumpHeightSliderLabel.Name = "JumpHeightSliderLabel"
JumpHeightSliderLabel.Parent = MainFrame
JumpHeightSliderLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
JumpHeightSliderLabel.Position = UDim2.new(0.05, 0, 0.55, 0) -- Положение внутри Frame с отступами
JumpHeightSliderLabel.Size = UDim2.new(0, 300, 0, 35) -- Размер 300x30 пикселей
JumpHeightSliderLabel.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
JumpHeightSliderLabel.Text = "Jump Height"
JumpHeightSliderLabel.TextScaled = true

-- Свойства JumpHeightSlider
JumpHeightSlider.Name = "JumpHeightSlider"
JumpHeightSlider.Parent = MainFrame
JumpHeightSlider.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
JumpHeightSlider.Position = UDim2.new(0.05, 0, 0.65, 0) -- Положение внутри Frame с отступами
JumpHeightSlider.Size = UDim2.new(0, 300, 0, 30) -- Размер 300x30 пикселей
JumpHeightSlider.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
JumpHeightSlider.Text = "20" -- Начальная высота прыжка
JumpHeightSlider.TextScaled = true

-- Свойства FlyCheckbox
FlyCheckbox.Name = "FlyCheckbox"
FlyCheckbox.Parent = MainFrame
FlyCheckbox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
FlyCheckbox.Position = UDim2.new(0.05, 0, 0.75, 0) -- Положение внутри Frame с отступами
FlyCheckbox.Size = UDim2.new(0, 300, 0, 30) -- Размер 300x30 пикселей
FlyCheckbox.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
FlyCheckbox.Text = "Toggle Fly"
FlyCheckbox.TextScaled = true

-- Свойства BToolsButton
BToolsButton.Name = "BToolsButton"
BToolsButton.Parent = MainFrame
BToolsButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
BToolsButton.Position = UDim2.new(0.05, 0, 0.85, 0) -- Положение внутри Frame с отступами
BToolsButton.Size = UDim2.new(0, 300, 0, 30) -- Размер 300x30 пикселей
BToolsButton.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
BToolsButton.Text = "Get BTools"
BToolsButton.TextScaled = true

-- Свойства ToggleButton (кнопка для сворачивания/разворачивания)
ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = MainFrame
ToggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) -- Более светлый серый цвет
ToggleButton.Position = UDim2.new(0.9, 0, 0.02, 0) -- Положение в правом верхнем углу с отступами
ToggleButton.Size = UDim2.new(0, 30, 0, 30) -- Размер 30x30 пикселей
ToggleButton.TextColor3 = Color3.new(1, 1, 1) -- Белый цвет текста
ToggleButton.Text = "-" -- Иконка сворачивания
ToggleButton.TextScaled = true

-- Переменные для отслеживания состояний
local speed = 50
local flySpeed = 50
local jumpHeight = 20
local flying = false
local minimized = false

-- Функция для изменения скорости
local function updateSpeed()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    
    if humanoid then
        humanoid.WalkSpeed = tonumber(SpeedSlider.Text) or 50
    end
end

-- Функция для изменения высоты прыжка
local function updateJumpHeight()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    
    if humanoid then
        humanoid.JumpPower = tonumber(JumpHeightSlider.Text) or 20
    end
end

-- Функция для выдачи BTools
local function giveBTools()
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack

    local hammer = Instance.new("HopperBin")
    hammer.BinType = Enum.BinType.Hammer
    hammer.Parent = backpack

    local clone = Instance.new("HopperBin")
    clone.BinType = Enum.BinType.Clone
    clone.Parent = backpack

    local grab = Instance.new("HopperBin")
    grab.BinType = Enum.BinType.Grab
    grab.Parent = backpack
end

-- Функция для включения/выключения полета
local function toggleFly()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    
    if flying then
        humanoid.PlatformStand = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
    else
        humanoid.PlatformStand = true
    end
    
    flying = not flying
end

-- Функция для сворачивания/разворачивания GUI
local function toggleGUI()
    minimized = not minimized
    if minimized then
        for _, child in pairs(MainFrame:GetChildren()) do
            if child ~= ToggleButton and child ~= TitleLabel then
                child.Visible = false
            end
        end
        ToggleButton.Text = "+"
        MainFrame.Size = UDim2.new(0, 350, 0, 60)
    else
        for _, child in pairs(MainFrame:GetChildren()) do
            child.Visible = true
        end
        ToggleButton.Text = "-"
        MainFrame.Size = UDim2.new(0, 350, 0, 360)
    end
end

-- Подключение функций к событиям
SpeedSlider.FocusLost:Connect(updateSpeed)
JumpHeightSlider.FocusLost:Connect(updateJumpHeight)
FlyCheckbox.MouseButton1Click:Connect(toggleFly)
BToolsButton.MouseButton1Click:Connect(giveBTools)
ToggleButton.MouseButton1Click:Connect(toggleGUI)

-- Установка начальных значений
updateSpeed()
updateJumpHeight()
