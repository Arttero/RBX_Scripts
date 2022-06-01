print("Succesfully injected !")


-- Variables
local CoreGui = game:GetService("StarterGui")
local player = game.Players.LocalPlayer

--
esp_conf = {
	['ESP_Keybind'] = 'P', --ESP Keybinds
}

-- Settings


-- Lib
local esp = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua", true))()

-- Init
CoreGui:SetCore("SendNotification", {
		Title = "ESP Injected";
		Text = "Press P to toggle";
		Duration = 5;
		Icon = "rbxthumb://type=Asset&id=8217650146&w=150&h=150";
})

-- Toggle
player:GetMouse().KeyDown:connect(function(key)
	if key == esp_conf['ESP_Keybind'] then
		if esp.Enabled == true then
			esp:Toggle(false)
		else
			esp:Toggle(true)
		end
	end
end)

return = esp
