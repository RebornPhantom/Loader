function Main()
	print("LocalPlayer:", game.Players.LocalPlayer.Name)

	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 1, 2)
	part.Anchored = true
	part.BrickColor = BrickColor.new("Bright red")
	part.Name = "TestBlock"

	if game.Players.LocalPlayer.Character then
		part.Position = game.Players.LocalPlayer.Character:GetPivot().Position
		part.Parent = game.Players.LocalPlayer.Character
	else
		part.Position = Vector3.new(0, 5, 0)
		part.Parent = workspace
	end

	print("PartParent:", part.Parent)
	print("PartPosition:", part.Position)
	print("Partplacedinworkspacet:", part.Position)
end
