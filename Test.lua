function Main()
	local lp = LocalPlayer
	print("LocalPlayer:", lp.Name)

	repeat task.wait() until lp.Character
	local char = lp.Character

	for _, obj in ipairs(char:GetDescendants()) do
		if obj:IsA("SurfaceLight") then
			obj:Destroy()
		end
	end

	for _, part in ipairs(char:GetDescendants()) do
		if part:IsA("BasePart") then
			local light = Instance.new("SurfaceLight")
			light.Name = "CharacterGlow"
			light.Brightness = 3
			light.Range = 8
			light.Color = Color3.fromRGB(255, 255, 100)
			light.Face = Enum.NormalId.Top
			light.Parent = part
		end
	end

	print("Glowappliedto", lp.Name)
end
