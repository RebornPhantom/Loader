function Main()
	print("LocalPlayer:", game.Players.LocalPlayer)

	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 1, 2)
	part.Anchored = true
	part.BrickColor = BrickColor.new("Bright red")
	part.Name = "TestBlock"

	print("Character value:", game.Players.LocalPlayer.Character)
	if game.Players.LocalPlayer.Character then
		part.Position = game.Players.LocalPlayer.Character:GetPivot().Position
		part.Parent = game.Players.LocalPlayer.Character
		print("Part Parent:", part.Parent)
		print("Part Position:", part.Position)
	else
		part.Position = Vector3.new(0, 5, 0)
		part.Parent = workspace
		print("Character not found.")
		print("Part placed in workspace at:", part.Position)
	end
end
