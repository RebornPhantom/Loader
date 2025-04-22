function Main()
	local lp = LocalPlayer
	print("LocalPlayer:", lp.Name)

	repeat task.wait() until lp.Character
	local char = lp.Character

	local highlight = Instance.new("Highlight")
	highlight.FillColor = Color3.fromRGB(255, 0, 0)
	highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	highlight.OutlineTransparency = 0
	highlight.FillTransparency = 0.5
	highlight.Adornee = char
	highlight.Parent = char

	for _, part in ipairs(char:GetDescendants()) do
		if part:IsA("BasePart") then
			local light = Instance.new("SurfaceLight")
			light.Brightness = 2
			light.Range = 6
			light.Color = Color3.fromRGB(255, 150, 0)
			light.Angle = 180
			light.Face = Enum.NormalId.Top
			light.Parent = part
		end
	end

	print("Glow applied to:", char.Name)
end
