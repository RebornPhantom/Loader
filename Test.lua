local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local function createSimpleGui()
	if PlayerGui:FindFirstChild("SimpleGui") then return end

	local gui = Instance.new("ScreenGui")
	gui.Name = "SimpleGui"
	gui.ResetOnSpawn = false
	gui.Parent = PlayerGui

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, 200, 0, 100)
	frame.Position = UDim2.new(0.5, -100, 0.5, -50)
	frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	frame.BorderSizePixel = 0
	frame.Parent = gui

	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, 0, 1, 0)
	button.Position = UDim2.new(0, 0, 0, 0)
	button.BackgroundColor3 = Color3.fromRGB(50, 100, 200)
	button.Text = "Click Me"
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Font = Enum.Font.GothamBold
	button.TextScaled = true
	button.Parent = frame

	button.MouseButton1Click:Connect(function()
		print("Simple GUI button clicked")
	end)
end

createSimpleGui()
