-----------------------------------
-- Area: Buburimu Peninsula
--  Mob: Poison Leech
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 35, 1, xi.regime.type.FIELDS)
end

return entity