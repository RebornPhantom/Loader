function Main()
	local part = Instance.new("Part")
	part.Name = "TestBlock"
	part.Size = Vector3.new(4, 1, 4)
	part.Anchored = true
	part.Position = Vector3.new(0, 5, 0)
	part.BrickColor = BrickColor.new("Bright blue")
	part.Parent = workspace

	local exists = workspace:FindFirstChild("TestBlock")
	if exists then
		print("✅ Part successfully created", exists.Name)
	else
		print("❌ Part creation failed.")
	end
end
