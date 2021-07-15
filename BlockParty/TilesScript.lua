local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ColorsModule = require(ReplicatedStorage:FindFirstChild("ColorsModuleScript"))

local InitTimer = ReplicatedStorage:FindFirstChild("InitTimer")
local GameStatus = ReplicatedStorage:FindFirstChild("GameStatus")
local ChosedColor = ReplicatedStorage:FindFirstChild("ChosedColor")
local FallTimer = ReplicatedStorage:FindFirstChild("FallTimer")

InitTimer.Changed:Connect(function(NewValue)
	print("Init Timer >> ", NewValue)
	if NewValue == 0 then
		GameStatus.Value = "STARTED"
	end
end)

GameStatus.Changed:Connect(function(NewValue)
	
	if NewValue == "STARTED" then
		for _,tile in pairs(script.Parent:GetChildren()) do
			if tile:isA"Part" then
				tile.Transparency = 0
				tile.CanCollide = true
				
				local tempColor = ColorsModule.Colors[math.random(12)]
				tile.Color = tempColor
				
				ChosedColor.Value = tempColor
			end
		end
		GameStatus.Value = "CHOSING_COLOR"
	end
	
	if NewValue == "FALL" then
		for _,tile in pairs(script.Parent:GetChildren()) do
			if tile:isA"Part" then
				if tile.Color ~= ChosedColor.Value then
					tile.Transparency = 1
					tile.CanCollide = false
				end
			end
		end
		wait(5)
		InitTimer.Value = 5
		FallTimer.Value = 6
		GameStatus.Value = "STARTED"
	end
end)