local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameStatus = ReplicatedStorage:FindFirstChild("GameStatus")
local InitTimer = ReplicatedStorage:FindFirstChild("InitTimer")

GameStatus.Changed:Connect(function(NewValue)
	if NewValue == "WARM_UP" then
		while InitTimer.Value > 0 do
			wait(1)
			InitTimer.Value = InitTimer.Value - 1
		end
	end
end)