-----------------------------------
-- Area: Gusgen Mines
--  Mob: Accursed Soldier
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 679, 1, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 680, 2, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 685, 1, xi.regime.type.GROUNDS)
end

return entity