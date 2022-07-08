print("Succesfully injected !")


-- Variables
local CoreGui = game:GetService("StarterGui")
local player = game.Players.LocalPlayer

-- Lib
local esp = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua", true))()

-- Settings
esp.Keybind = 'p'

CoreGui:SetCore("SendNotification", {
		Title = "ESP Injected";
		Text = "Press "..string.upper(esp.Keybind).." to toggle";
		Duration = 5;
		Icon = "rbxthumb://type=Asset&id=9799225632&w=150&h=150";
})

player:GetMouse().KeyDown:connect(function(key)
	print(key)
	if key == esp.Keybind then
		esp:reverseToggle()
	end
end)

function esp:reverseToggle()
	if esp.Enabled == true then
		if esp.Enabled == true then
			esp:Toggle(false)
		else
			esp:Toggle(true)
		end
	end
end

function esp:Preset(preset)
	if preset == "arsenal" then
		esp.FaceCamera = true
		esp.Names = false
		esp.TeamMates = false
		---
		esp:reverseToggle()
		esp:reverseToggle()
	end
end

return esp
