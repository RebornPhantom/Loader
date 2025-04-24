local Players = game:GetService("Players")

function Main()
	local targetName = "bslphillip2"
	print("🔵 Running server payload for username:", targetName)

	local found = false
	for _, p in ipairs(Players:GetPlayers()) do
		print("👤 Checking player:", p.Name, "| DisplayName:", p.DisplayName)
		if p.Name:lower() == targetName:lower() then
			local success, err = pcall(function()
				p:Kick("You have been removed by the server.")
			end)
			if success then
				print("✅ Kicked player:", p.Name)
				found = true
				return "KickSuccess"
			else
				print("❌ Kick failed for", p.Name, "| Error:", err)
				return "KickFailed"
			end
		end
	end

	if not found then
		print("
