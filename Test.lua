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
		print("✅ Part successfully created:", exists.Parent.Name)
	else
		print("❌ Part creation failed.")
	end

	print("📂 Workspace children:")
	for _, obj in ipairs(workspace:GetChildren()) do
		print("  -", obj.Name)
	end

	local barriers = workspace:FindFirstChild("Barriers")
	if barriers then
		print("📘 Found workspace.Barriers:", tostring(barriers))
		for _, child in ipairs(barriers:GetChildren()) do
			print("  🔹", child.Name)
		end
	else
		print("📘 Folder 'Barriers' not found in workspace.")
	end
end
