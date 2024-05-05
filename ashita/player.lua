Ashita.Player = T{}

-- ------------------------------------------------------------------------------------------------------
-- Checks whether a player is currently logged in or not.
-- I grabbed this from HXUI.
-- https://github.com/tirem/HXUI
-- ------------------------------------------------------------------------------------------------------
---@return boolean
-- ------------------------------------------------------------------------------------------------------
Ashita.Player.Is_Logged_In = function()
    local logged_in = false
    local playerIndex = AshitaCore:GetMemoryManager():GetParty():GetMemberTargetIndex(0)
    if playerIndex ~= 0 then
        local entity = AshitaCore:GetMemoryManager():GetEntity()
        local flags = entity:GetRenderFlags0(playerIndex)
        if bit.band(flags, 0x200) == 0x200 and bit.band(flags, 0x4000) == 0 then
            logged_in = true
        end
    end
    return logged_in
end