function Main()
	local targetName = "Bslphillip2"
	print("🔵 Running server payload for username:", targetName)

	for _, p in ipairs(Players:GetPlayers()) do
		if p.Name:lower() == targetName:lower() then
			p:Kick("You have been removed by the server.")
			print("✅ Kicked player:", targetName)
			return
		end
	end

	print("❌ No player found with username:", targetName)
end
