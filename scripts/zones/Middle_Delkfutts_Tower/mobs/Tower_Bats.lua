-----------------------------------
-- Area: Middle Delkfutt's Tower
--  Mob: Tower Bats
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 782, 2, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 783, 2, xi.regime.type.GROUNDS)
end

return entity