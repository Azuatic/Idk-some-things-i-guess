_G.g_SkyboxBk = "rbxassetid://12064107" -- SkyboxBk   :now->Pink skybox
_G.g_SkyboxDn = "rbxassetid://12064152" -- SkyboxDn
_G.g_SkyboxFt = "rbxassetid://12064121" -- SkyboxFt
_G.g_SkyboxLf = "rbxassetid://12063984" -- SkyboxLf
_G.g_SkyboxRt = "rbxassetid://12064115" -- SkyboxRt
_G.g_SkyboxUp = "rbxassetid://12064131" -- SkyboxUp
_G.g_CashImage = "rbxassetid://2582022940"  -- Cash Icon :now->SynapseX Icon (default value -> rbxassetid://5547581690)
_G.g_UseVisualChanger = "Yes"   -- Yes/No   ->  If 'No' you can not use Visual Tab
_G.g_AutoLoadConfig = "Yes" -- Yes/No   ->  If 'Yes' visual config will be loaded when script executed
_G.g_SetCustomAnim = "Yes"    -- Yes/No ->  You can change your anim on 'Custom' anim. (Everyone will be able to see the 'Custom' anim)
_G.g_SetCustomSkyAndCash = "Yes"  -- Yes/No   ->  load Skybox and Cash Icon when script executed
_G.g_FpsCounter = "No" -- Yes/No   ->  Fps Counter (right-bottom, draggable)
_G.g_PingCounter = "No" -- Yes/No   ->  Ping Counter (right-bottom, draggable)

--[[    Saving in ../workpace/
Cfg_g_ClockTime.msgat
Cfg_g_FogStart.msgat
Cfg_g_FogEnd.msgat
Cfg_g_FogColor.msgat
Cfg_g_HPBarColor.msgat
Cfg_g_FramesColor.msgat
Cfg_g_ButtonsColor.msgat
Cfg_g_ButtonsTextColor.msgat
Cfg_g_HotbarCashColor.msgat
Cfg_g_HotbarTowersColor.msgat
Cfg_g_HotbarTowersTextColor.msgat
]]--

--[[ For Example -> Pink preset
Clock Time -> 7
Fog Start -> 1
Fog End -> 1000
Fog Color -> 249 127 255
HP Bar Color -> 249 127 255
Frames Color -> 249 127 255
Buttons Color -> 255 255 255
Buttons Text Color -> 95 0 99
Hotbar Cash Color -> 249 127 255
Hotbar Towers Color -> 249 136 255
Hotbar Towers Price Color -> 254 239 255
]]--

loadstring(game:HttpGet("https://raw.githubusercontent.com/sirkaburito/msgataws/main/TowerDefenseSimulator.lua", true))()