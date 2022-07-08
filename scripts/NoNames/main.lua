print("Succesfully injected !")

-- Variables
local CoreGui = game:GetService("StarterGui")
local player = game.Players.LocalPlayer


CoreGui:SetCore("SendNotification", {
        Title = "Secret Injected";
        Text = "You can start your stream/video";
        Duration = 5;
        Icon = "rbxthumb://type=Asset&id=8217650146&w=150&h=150";
})

CoreGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
CoreGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

for i, player in pairs(game.Players:GetChildren()) do
    local char = player.Character
    local humanoid = char.Humanoid
    humanoid.NameDisplayDistance = Enum.HumanoidDisplayDistanceType.None
end

game.Players.PlayerAdded:Connect(function(player)
    local char = player.Character
    local humanoid = char.Humanoid
    humanoid.NameDisplayDistance = Enum.HumanoidDisplayDistanceType.None
end)
