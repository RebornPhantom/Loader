function Main()
	local player = LocalPlayer
	print("LocalPlayer:", player)

	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 1, 2)
	part.Anchored = true
	part.BrickColor = BrickColor.new("Bright red")
	part.Name = "TestBlock"

	if player.Character then
		part.Position = player.Character:GetPivot().Position
		part.Parent = player.Character
		print("Part Parent:", part.Parent)
		print("Part Position:", part.Position)
	else
		part.Position = Vector3.new(0, 5, 0)
		part.Parent = workspace
		print("Character not found.")
		print("Part placed in workspace at:", part.Position)
	end
end
