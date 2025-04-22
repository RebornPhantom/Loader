function Main()
	local part = Instance.new("Part")
	part.Name = "TestBlock"
	part.Size = Vector3.new(4, 1, 4)
	part.Anchored = true
	part.Position = Vector3.new(0, 5, 0)
	part.BrickColor = BrickColor.new("Bright blue")
	part.Parent = workspace

	task.wait(0.5)

	local found = workspace:FindFirstChild("TestBlock")
	if found then
		print("✅ Part successfully created:", found:GetFullName())
	else
		print("❌ Part creation failed.")
	end

	print("🔎 Workspace children:")
	for _, child in ipairs(workspace:GetChildren()) do
		print("-", child.Name, "(", child.ClassName, ")")
	end

	local folder = workspace:FindFirstChild("Barriers")
	if folder then
		print("📁 Found workspace.Barriers:", folder:GetFullName())
	else
		print("📁 Folder 'Barriers' not found in workspace.")
	end
end
