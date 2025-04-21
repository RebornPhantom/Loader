function Main()
	local player = LocalPlayer
	print("LocalPlayer:", player)

	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 1, 2)
	part.Position = player.Character and player.Character:GetPivot().Position or Vector3.new(0, 5, 0)
	part.Anchored = true
	part.BrickColor = BrickColor.new("Bright red")
	part.Name = "TestBlock"

	if player.Character then
		part.Parent = player.Character
		print("Part Parent:", part.Parent)
		print("Part Position:", part.Position)
	else
		print("Character not found.")
	end
end
