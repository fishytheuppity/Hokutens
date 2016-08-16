-----------------------------------
-- Area: Cape Terrigan
-- Mob: Stolas
-- @pos -156, -8, 198
-----------------------------------
package.loaded["scripts/zones/Cape_Terrigan/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Cape_Terrigan/TextIDs");


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	
end;





-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getVar("Weaponskill_Bow") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH) == true) then
	player:addKeyItem(ANNALS_OF_TRUTH);
	player:delKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH);
	player:setVar("Weaponskill_Bow",2);
   end   
end;
