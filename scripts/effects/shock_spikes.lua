-----------------------------------
-- xi.effect.SHOCK_SPIKES
-----------------------------------
---@type TEffect
local effectObject = {}

effectObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.SPIKES, 5)
    target:addMod(xi.mod.SPIKES_DMG, effect:getPower())
end

effectObject.onEffectTick = function(target, effect)
end

effectObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.SPIKES, 5)
    target:delMod(xi.mod.SPIKES_DMG, effect:getPower())
end

return effectObject