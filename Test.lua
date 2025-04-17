local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function applyChams(character)
	for _, part in ipairs(character:GetChildren()) do
		if part:IsA("BasePart") and not part:FindFirstChild("Cham") then
			local cham = Instance.new("BoxHandleAdornment")
			cham.Name = "Cham"
			cham.Adornee = part
			cham.AlwaysOnTop = true
			cham.ZIndex = 5
			cham.Size = part.Size
			cham.Color3 = Color3.fromRGB(0, 255, 0)
			cham.Transparency = 0.5
			cham.Parent = game:GetService("CoreGui")
		end
	end
end

local function onCharacterAdded(character)
	local humanoid = character:WaitForChild("Humanoid", 5)
	local root = character:WaitForChild("HumanoidRootPart", 5)
	if humanoid and root then
		applyChams(character)
	end
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

if LocalPlayer.Character then
	onCharacterAdded(LocalPlayer.Character)
end
