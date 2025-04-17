local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Name = "SimpleGui"
gui.Parent = PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.Parent = gui

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, 0, 1, 0)
button.Position = UDim2.new(0, 0, 0, 0)
button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button.Text = "Click Me"
button.TextColor3 = Color3.new(1, 1, 1)
button.Parent = frame

button.MouseButton1Click:Connect(function()
	print("Button clicked!")
end)
