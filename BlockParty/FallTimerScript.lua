local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameStatus = ReplicatedStorage:FindFirstChild("GameStatus")
local FallTimer = ReplicatedStorage:FindFirstChild("FallTimer")

GameStatus.Changed:Connect(function(NewValue)
	if NewValue == "CHOSING_COLOR" then
		while FallTimer.Value > 0 do
			wait(1)
			FallTimer.Value = FallTimer.Value - 1
		end
	end
end)

FallTimer.Changed:Connect(function(NewValue)
	print("Fall Timer >> ", NewValue)
	if NewValue == 0 then
		print("Vai cairrrr!!!!")
		GameStatus.Value = "FALL"
	end
end)

