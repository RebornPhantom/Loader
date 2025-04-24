function Main()
	local targetName = "bslphillip2"
	print("🔵 Running server payload for username:", targetName)

	local players = game:GetService("Players"):GetPlayers()

	for i = 1, #players do
		local player = players[i]
		local name = player.Name
		local displayName = player.DisplayName

		print("👤 Checking player:", name, "| DisplayName:", displayName)

		if name:lower() == targetName:lower() then
			local success, errMsg = pcall(function()
				player:Kick("You have been removed by the server.")
			end)

			if success then
				print("✅ Kicked player:", name)
				return "KickSuccess"
			else
				print("❌ Kick failed for", name, "| Error:", tostring(errMsg))
				return "KickFailed"
			end
		end
	end

	print("❌ No player found with username:", targetName)
	return "NoPlayerFound"
end
