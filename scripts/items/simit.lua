-----------------------------------
-- ID: 5596
-- Item: simit
-- Food Effect: 30Min, All Races
-----------------------------------
-- Health 16
-- Dexterity -1
-- Vitality 3
-----------------------------------
---@type TItemFood
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return xi.itemUtils.foodOnItemCheck(target, xi.foodType.BASIC)
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 1800, 5596)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.FOOD_HP, 16)
    target:addMod(xi.mod.DEX, -1)
    target:addMod(xi.mod.VIT, 3)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.FOOD_HP, 16)
    target:delMod(xi.mod.DEX, -1)
    target:delMod(xi.mod.VIT, 3)
end

return itemObject