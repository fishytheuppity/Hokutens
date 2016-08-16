-----------------------------------
-- Area: Quicksand Caves
-- Mob: Girtablulu
-- @pos -144, 1, 446
-----------------------------------
package.loaded["scripts/zones/Quicksand_Caves/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Quicksand_Caves/TextIDs");


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;





-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getVar("Weaponskill_Sword") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH) == true) then
	   player:addKeyItem(ANNALS_OF_TRUTH);
	   player:delKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH);
	   player:setVar("Weaponskill_Sword",2);
	end   
end;