local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameStatus = ReplicatedStorage:FindFirstChild("GameStatus")

print("O jogo vai começar!")
wait(3)
GameStatus.Value = "WARM_UP"

