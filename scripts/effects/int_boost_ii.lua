-----------------------------------
-- xi.effect.INT_BOOST_II
-----------------------------------
---@type TEffect
local effectObject = {}

effectObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.INT, effect:getPower())
end

effectObject.onEffectTick = function(target, effect)
end

effectObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.INT, effect:getPower())
end

return effectObject