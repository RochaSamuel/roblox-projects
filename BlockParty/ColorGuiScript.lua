local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ChosedColor = ReplicatedStorage:FindFirstChild("ChosedColor")

local frame = script.Parent:WaitForChild("Frame")

frame.BackgroundColor3 = ChosedColor.Value

ChosedColor.Changed:Connect(function(NewValue)
	frame.BackgroundColor3 = NewValue
end)