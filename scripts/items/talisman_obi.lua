-----------------------------------
-- ID: 15462
-- Item: Talisman Obi
-- Effect: 3Min, MP+12 Enmity-2
-----------------------------------
---@type TItem
local itemObject = {}

itemObject.onItemCheck = function(target)
    if target:getStatusEffectBySource(xi.effect.ENCHANTMENT, xi.effectSourceType.EQUIPPED_ITEM, xi.item.TALISMAN_OBI) ~= nil then
        target:delStatusEffect(xi.effect.ENCHANTMENT, nil, xi.effectSourceType.EQUIPPED_ITEM, xi.item.TALISMAN_OBI)
    end

    return 0
end

itemObject.onItemUse = function(target)
    if target:hasEquipped(xi.item.TALISMAN_OBI) then
        target:addStatusEffect(xi.effect.ENCHANTMENT, 0, 0, 1800, 0, 0, 0, xi.effectSourceType.EQUIPPED_ITEM, xi.item.TALISMAN_OBI)
    end
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.MP, 12)
    target:addMod(xi.mod.ENMITY, -2)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.MP, 12)
    target:delMod(xi.mod.ENMITY, -2)
end

return itemObject