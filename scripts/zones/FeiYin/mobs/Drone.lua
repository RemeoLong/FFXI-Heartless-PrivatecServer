-----------------------------------
-- Area: FeiYin
--  Mob: Drone
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 711, 2, xi.regime.type.GROUNDS)
end

return entity