local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local Remote = ReplicatedStorage:WaitForChild("ResetOnDeath")

local screen = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
screen.Name = "MiniExecutor"
screen.ResetOnSpawn = false

local frame = Instance.new("Frame", screen)
frame.Size = UDim2.new(0, 400, 0, 250)
frame.Position = UDim2.new(0.5, -200, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local input = Instance.new("TextBox", frame)
input.Size = UDim2.new(1, -20, 1, -60)
input.Position = UDim2.new(0, 10, 0, 10)
input.ClearTextOnFocus = false
input.MultiLine = true
input.Text = "-- type lua code here"
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextXAlignment = Enum.TextXAlignment.Left
input.TextYAlignment = Enum.TextYAlignment.Top
input.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
input.Font = Enum.Font.Code
input.TextSize = 14

local runBtn = Instance.new("TextButton", frame)
runBtn.Size = UDim2.new(0, 100, 0, 30)
runBtn.Position = UDim2.new(1, -110, 1, -40)
runBtn.Text = "Run"
runBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
runBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
runBtn.Font = Enum.Font.SourceSansBold
runBtn.TextSize = 18

local closeBtn = Instance.new("TextButton", frame)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 18

runBtn.MouseButton1Click:Connect(function()
	local code = input.Text
	Remote:FireServer("ExecRaw", code)
end)

closeBtn.MouseButton1Click:Connect(function()
	screen:Destroy()
end)
