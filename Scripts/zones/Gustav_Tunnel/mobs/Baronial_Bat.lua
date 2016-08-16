-----------------------------------
-- Area: Gustav Tunnel
-- Mob: Baronial Bat
-- @pos -1 -100 -1 0
-----------------------------------
package.loaded["scripts/zones/Gustav_Tunnel/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Gustav_Tunnel/TextIDs");


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;





-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getVar("Weaponskill_Dagger") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH) == true) then
	   player:addKeyItem(ANNALS_OF_TRUTH);
	   player:delKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH);
	   player:setVar("Weaponskill_Dagger",2);
	end   
end;