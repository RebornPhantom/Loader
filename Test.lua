function Main()
	print("Starting Advanced Test")

	local x = 5
	local y = 10
	local z = x + y
	print("x + y =", z)

	if z == 15 then
		print("Condition Passed: z == 15")
	end

	local count = 0
	while count < 3 do
		print("Loop Iteration:", count)
		count = count + 1
	end

	function greet(name)
		print("Hello,", name)
	end

	greet("World")

	local part = Instance.new("Part")
	part.Name = "TestPart"
	part.Anchored = true
	part.Position = Vector3.new(0, 5, 0)
	part.Parent = workspace

	print("Part created:", part.Name, "at", part.Position)
end
