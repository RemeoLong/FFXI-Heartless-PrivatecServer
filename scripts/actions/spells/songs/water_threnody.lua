-----------------------------------
-- Spell: Threnody - xi.mod.WATER_MEVA
-----------------------------------
---@type TSpell
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    return handleThrenody(caster, target, spell, 50, 60, xi.mod.WATER_MEVA)
end

return spellObject