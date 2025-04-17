local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function createNameTag(character)
	local head = character:WaitForChild("Head", 5)
	if not head then return end

	if head:FindFirstChild("NameTag") then return end

	local billboard = Instance.new("BillboardGui")
	billboard.Name = "NameTag"
	billboard.Size = UDim2.new(0, 200, 0, 50)
	billboard.StudsOffset = Vector3.new(0, 2.5, 0)
	billboard.Adornee = head
	billboard.AlwaysOnTop = true
	billboard.Parent = head

	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.BackgroundTransparency = 1
	label.TextScaled = true
	label.Text = "👑 " .. LocalPlayer.DisplayName
	label.Font = Enum.Font.GothamBold
	label.TextColor3 = Color3.fromRGB(255, 215, 0)
	label.TextStrokeTransparency = 0.6
	label.TextStrokeColor3 = Color3.new(0, 0, 0)
	label.Parent = billboard
end

LocalPlayer.CharacterAdded:Connect(createNameTag)

if LocalPlayer.Character then
	createNameTag(LocalPlayer.Character)
end
