task.wait(5)
--// Variables
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "yeet", Text = "t = Enabled : p = disabled."})
local userInputService = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:GetMouse()

--// Main Script
function core(v)
    _G.HeadSize = 7

    userInputService.InputBegan:Connect(function(input, chatting)
        if input.KeyCode == Enum.KeyCode.T and not chatting then
            pcall(function()
                v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                v.Character.HumanoidRootPart.Transparency = 0.7
                v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
                v.Character.HumanoidRootPart.Material = "Neon"
                v.Character.HumanoidRootPart.CanCollide = false
            end)
        elseif input.KeyCode == Enum.KeyCode.P and not chatting then
            pcall(function()
                v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                v.Character.HumanoidRootPart.Transparency = 1
                v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
                v.Character.HumanoidRootPart.Material = "Plastic"
                v.Character.HumanoidRootPart.CanCollide = true
            end)
        end
    end)
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        core(v)
    end
end

game.Players.PlayerAdded:Connect(core)
