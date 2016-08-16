-----------------------------------
-- Area: The Boyahda Tree
-- Mob: Beet Leafhopper
-- @pos -11 -19 -176

-----------------------------------
package.loaded["scripts/zones/The_Boyahda_Tree/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/The_Boyahda_Tree/TextIDs");


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;





-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getVar("Weaponskill_Gun") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH) == true) then
	   player:addKeyItem(ANNALS_OF_TRUTH);
	   player:delKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH);
	   player:setVar("Weaponskill_Gun",2);
	end   
end;