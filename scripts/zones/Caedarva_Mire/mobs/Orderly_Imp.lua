-----------------------------------
-- Area: Caedarva Mire
--  Mob: Orderly Imp
-----------------------------------
mixins = { require('scripts/mixins/families/imp'), require('scripts/mixins/families/imp_aggro') }
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
end

return entity