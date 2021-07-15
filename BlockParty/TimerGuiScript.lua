local ReplicatedStorage = game:GetService("ReplicatedStorage")

local FallTimer = ReplicatedStorage:FindFirstChild("FallTimer")

local frame = script.Parent:WaitForChild("Frame")

frame:FindFirstChild("TextLabel").Text = FallTimer.Value

FallTimer.Changed:Connect(function(NewValue)
	frame:FindFirstChild("TextLabel").Text = NewValue
end)