function Main()
	local lp = LocalPlayer
	print("LocalPlayer:", lp.Name)

	repeat task.wait() until lp.Character

	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 1, 2)
	part.Anchored = true
	part.BrickColor = BrickColor.new("Bright red")
	part.Name = "TestBlock"

	local char = lp.Character
	part.Position = char:GetPivot().Position
	part.Parent = char

	print("PartPosition:", part.Position)
	print("Partplacedinworkspacet:", part.Position)
end
