print("Succesfully injected !")


-- Variables
local CoreGui = game:GetService("StarterGui")
local player = game.Players.LocalPlayer

-- Settings
_G.Settings = {
	['Name'] = 'ESPiegle',
	['Intro'] = false,
	['Keybind'] = 'H' --GUI Keybinds
	['ESP_Keybind'] = 'P', --ESP Keybinds
	['Icon'] = 8217650146
}

-- Lib
local library = loadstring(game:HttpGet("https://pastebin.com/raw/Ku6xr7F2", true))()
local esp_lib = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua", true))()

---- Settings GUI
local main = library:CreateTab('Settings')

CoreGui:SetCore("SendNotification", {
		Title = "ESP Injected";
		Text = "Press P to toggle";
		Duration = 5;
		Icon = "rbxthumb://type=Asset&id=8217650146&w=150&h=150";
})

player:GetMouse().KeyDown:connect(function(key)
	if key == _G.Settings['ESP_Keybind'] then
		if esp_lib.Enabled == true then
			esp_lib:Toggle(false)
		else
			esp_lib:Toggle(true)
		end
	end
end)

main:Toggle("TeamMates", true, function(bool)
	esp_lib.TeamMates = bool
end)

main:Toggle("Team Colors", true, function(bool)
	esp_lib.TeamColor = bool
end)

main:Toggle("Tracers", false, function(bool)
	esp_lib.Tracers = bool
end)

main:Toggle("Names", true, function(bool)
	esp_lib.Names = bool
end)

main:Toggle("Boxes", true, function(bool)
	esp_lib.Boxes = bool
end)

main:Toggle("Face Camera", false, function(bool)
	esp_lib.FaceCamera = bool
end)

main:Toggle("AutoRemove", true, function(bool)
	esp_lib.AutoRemove = bool
end)

---- Misc GUI
local misc = library:CreateTab('Misc')

misc:Button('Kill GUI', function()
	esp_lib:Toggle(false)
	game:GetService('CoreGui').ShadowLib:Remove()
	CoreGui:SetCore("SendNotification", {Title = "GUI Killed"; Text = "GUI successfully killed."})
end)

misc:Button('Rejoin', function()
	game:GetService('TeleportService'):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)
