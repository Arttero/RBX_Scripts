# ESPiegle

Based of [KiritoHub's ESP lib](https://v3rmillion.net/showthread.php?tid=1088719)

## Setup

### Main

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/MoiEtMoiPuisMoi/RBX_Scripts/main/scripts/esp/main.lua"))()
--SHORTER \/
loadstring(game:HttpGet("https://pastebin.com/raw/jvu30n6N"))()
```

### Change Settings

```lua
local api = loadstring(game:HttpGet("https://pastebin.com/raw/jvu30n6N"))()

--Disable Names
api.Names = false

--Change Keybind
api.Keybind = 'p' --Must be lowercase

--LIST OF VALUE BELOW

```


## Values

Name | Boxes | Color | FaceCamera | Names | TeamColor | TeamMates | Players |
--- | --- | --- | --- |--- |--- |--- |--- |
Base State | true | (255, 170, 0) | false | false | true | true | true |


## Notes
* _Color need to be a Color3.fromRGB_
* _Base keybind is "P"_
* _Auto Update_
