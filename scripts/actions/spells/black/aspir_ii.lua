-----------------------------------
-- Spell: Aspir
-- Drain functions only on skill level!!
-----------------------------------
---@type TSpell
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    if target:isUndead() then
        spell:setMsg(xi.msg.basic.MAGIC_NO_EFFECT) -- No effect
        return 0
    end

    local dmg = 10 + 0.575 * caster:getSkillLevel(xi.skill.DARK_MAGIC)
    --get resist multiplier (1x if no resist)
    local params = {}
    params.diff = caster:getStat(xi.mod.INT)-target:getStat(xi.mod.INT)
    params.attribute = xi.mod.INT
    params.skillType = xi.skill.DARK_MAGIC
    params.bonus = 1.0
    local resist = applyResistanceEffect(caster, target, spell, params)
    --get the resisted damage
    dmg = dmg * resist
    --add on bonuses (staff/day/weather/jas/mab/etc all go in this function)
    dmg = addBonuses(caster, spell, target, dmg)
    --add in target adjustment
    dmg = dmg * xi.spells.damage.calculateNukeAbsorbOrNullify(target, spell:getElement())
    --add in final adjustments

    dmg = dmg * xi.settings.main.DARK_POWER

    if dmg < 0 then
        dmg = 0
    end

    if target:getMP() > dmg then
        caster:addMP(dmg)
        target:delMP(dmg)
    else
        dmg = target:getMP()
        caster:addMP(dmg)
        target:delMP(dmg)
    end

    return dmg
end

return spellObject