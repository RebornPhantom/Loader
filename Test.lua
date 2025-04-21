local count = 0
while count < 5 do
	count = count + 1
	if count == 2 then
		continue
	elseif count == 4 then
		break
	else
		print("Count:", count)
	end
end
