-----------------------------------
-- Area: Sealions Den
--  Mob: Omega
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMobMod(xi.mobMod.EXP_BONUS, -100)
    mob:setMobMod(xi.mobMod.ADD_EFFECT, 1)
    mob:setMobMod(xi.mobMod.GIL_MAX, -1)
end

entity.onMobSpawn = function(mob)
    mob:setBehavior(bit.bor(mob:getBehavior(), xi.behavior.NO_TURN))
    mob:setMod(xi.mod.REGAIN, 100)
    mob:setMobMod(xi.mobMod.SKILL_LIST, 54)
end

entity.onMobFight = function(mob)
    -- Gains regain at under 25% HP
    local stage = mob:getLocalVar('stage')

    if mob:getHPP() < 60 and stage == 0 then
        mob:setDelay(3000)
        mob:setMod(xi.mod.REGAIN, 150)
        mob:setLocalVar('stage', 1)
    elseif mob:getHPP() < 25 and stage < 2 then
        mob:setDelay(2500)
        mob:setMod(xi.mod.REGAIN, 200)
        mob:setMobMod(xi.mobMod.SKILL_LIST, 1187)
        mob:setLocalVar('stage', 2)
    end
end

entity.onAdditionalEffect = function(mob, target, damage)
    return xi.mob.onAddEffect(mob, target, damage, xi.mob.ae.STUN)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity