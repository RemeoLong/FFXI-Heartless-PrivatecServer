-----------------------------------
-- Area: Garlaige Citadel [S]
--   NM: Citadel Pipistrelles
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.hunts.checkHunt(mob, player, 533)
end

return entity