-----------------------------------
-- Area: Eastern Altepa Desert
--  NPC: Laimeve, R.K.
-- Border Conquest Guards
-- !pos 226.493 -12.231 260.194 114
-----------------------------------
---@type TNpcEntity
local entity = {}

local guardNation = xi.nation.SANDORIA
local guardType   = xi.conq.guard.BORDER
local guardRegion = xi.region.KUZOTZ
local guardEvent  = 32762

entity.onTrade = function(player, npc, trade)
    xi.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

entity.onTrigger = function(player, npc)
    xi.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

entity.onEventUpdate = function(player, csid, option, npc)
    xi.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end

return entity