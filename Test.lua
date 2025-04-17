local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local function applyChams(character)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") then
			local adorn = Instance.new("BoxHandleAdornment")
			adorn.Name = "Cham"
			adorn.Adornee = part
			adorn.Size = part.Size
			adorn.AlwaysOnTop = true
			adorn.ZIndex = 5
			adorn.Color3 = Color3.fromRGB(0, 255, 0)
			adorn.Transparency = 0.5
			adorn.Parent = game:GetService("CoreGui")
		end
	end
end

LocalPlayer.CharacterAdded:Connect(function(char)
	char:WaitForChild("HumanoidRootPart", 5)
	applyChams(char)
end)

if LocalPlayer.Character then
	applyChams(LocalPlayer.Character)
end
