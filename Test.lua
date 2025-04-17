local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local function applyChamsToCharacter(character)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") then
			local adornment = Instance.new("BoxHandleAdornment")
			adornment.Adornee = part
			adornment.AlwaysOnTop = true
			adornment.ZIndex = 5
			adornment.Size = part.Size
			adornment.Color3 = Color3.fromRGB(0, 255, 0)
			adornment.Transparency = 0.7
			adornment.Name = "Cham"
			adornment.Parent = part
		end
	end
end

LocalPlayer.CharacterAdded:Connect(function(character)
	character:WaitForChild("HumanoidRootPart")
	task.wait(0.5)
	applyChamsToCharacter(character)
end)

if LocalPlayer.Character then
	applyChamsToCharacter(LocalPlayer.Character)
end
