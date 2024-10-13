local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 35, 0, 35)
frame.Position = UDim2.new(0, 10, 0.5, -17.5)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(1, 0, 1, 0)
imageLabel.Position = UDim2.new(0, 0, 0, 0)
imageLabel.Image = "rbxassetid://89024621697883"
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, 0, 1, 0)
button.Position = UDim2.new(0, 0, 0, 0)
button.BackgroundTransparency = 1
button.Text = ""
button.Parent = frame

button.MouseButton1Click:Connect(function()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local keyCode = Enum.KeyCode.LeftControl

    VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
    wait(0.1)
    VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
end)
