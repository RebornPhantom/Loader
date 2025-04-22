function Main()
	print("🔁 Running server payload for UserId 44623414")
	
	local targetId = 44623414
	local players = Players:GetPlayers()

	for _, p in ipairs(players) do
		if p.UserId == targetId then
			p:Kick("You have been removed by the server.")
			print("✅ Kicked player with UserId:", targetId)
			return
		end
	end

	print("❌ No player found with UserId:", targetId)
end
