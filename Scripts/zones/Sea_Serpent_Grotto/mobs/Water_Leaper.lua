-----------------------------------
-- Area: Sea Serpent Grotto
-- Mob: Water Leaper
-- @pos 107, 0 -125
-----------------------------------
package.loaded["scripts/zones/Sea_Serpent_Grotto/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Sea_Serpent_Grotto/TextIDs");


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;





-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getVar("Weaponskill_Polearm") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH) == true) then
	   player:addKeyItem(ANNALS_OF_TRUTH);
	   player:delKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH);
	   player:setVar("Weaponskill_Polearm",2);
	end   
end;