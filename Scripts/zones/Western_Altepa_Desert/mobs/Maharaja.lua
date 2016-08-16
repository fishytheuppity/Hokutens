-----------------------------------
-- Area: Western Altepa Desert
-- Mob: Maharaja
-- @pos -659, 0, -338
-----------------------------------
package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Western_Altepa_Desert/TextIDs");


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;





-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getVar("Weaponskill_GSword") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH) == true) then
	   player:addKeyItem(ANNALS_OF_TRUTH);
	   player:delKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH);
	   player:setVar("Weaponskill_GSword",2);
	end   
end;