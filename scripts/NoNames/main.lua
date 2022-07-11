print("Succesfully injected !")

-- Variables
local CoreGui = game:GetService("StarterGui")
local player = game.Players.LocalPlayer


--[[ --CONFIG-- ]]--
local chatEnabled = false
local playerListEnabled = false
local overheadConfig = {
    enabled = true,
    customName = "VourchPlease" --Custom Overhead Name | Empty for hides all names over
}
local playerlistConfig = {
    enabled = true,
    customName = "VourchPlease"
}
--[[ --END-- ]]--

CoreGui:SetCore("SendNotification", {
        Title = "Secret Injected";
        Text = "You can start your stream/video";
        Duration = 5;
        Icon = "rbxthumb://type=Asset&id=8217650146&w=150&h=150";
})

CoreGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, playerListEnabled)
CoreGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, chatEnabled)

function overheadNames()
    for i, player in pairs(game.Players:GetChildren()) do
        if overheadConfig["customName"] ~= "" then
            local char = player.Character
            local humanoid = char.Humanoid
            humanoid.DisplayName = overheadConfig["customName"]
        else
            local char = player.Character
            local humanoid = char.Humanoid
            humanoid.NameDisplayDistance = Enum.HumanoidDisplayDistanceType.None
        end
    end
end

function playerList()
    for i, player in pairs(game.Players:GetChildren()) do
        player.DisplayName = playerlistConfig["customName"]
    end
end

if overheadConfig["enabled"] then
    overheadNames()
end
if playerlistConfig["enabled"] then
    playerList()
end

game.Players.PlayerAdded:Connect(function(player)
    if overheadConfig["enabled"] then
        overheadNames()
    end
    if playerlistConfig["enabled"] then
        playerList()
    end
end)
