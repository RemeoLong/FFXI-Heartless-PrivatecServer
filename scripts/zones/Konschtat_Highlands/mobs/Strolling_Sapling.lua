-----------------------------------
-- Area: Konschtat Highlands
--  Mob: Strolling Sapling
-----------------------------------
require('scripts/quests/tutorial')
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 81, 1, xi.regime.type.FIELDS)
    xi.tutorial.onMobDeath(player)
end

return entity