local gui = Instance.new("ScreenGui")
gui.Name = "InjectedGui"
gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Text = "Click Me"
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.Parent = gui

function click()
	print("Live code worked!")
end

button.MouseButton1Click:Connect(click)
