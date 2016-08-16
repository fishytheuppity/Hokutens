-----------------------------------
-- Area: Kuftal Tunnel
-- Mob: Kettenkaefer
-- @pos 201, 11, 99
-----------------------------------
package.loaded["scripts/zones/Kuftal_Tunnel/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Kuftal_Tunnel/TextIDs");


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;





-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getVar("Weaponskill_GKatana") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH) == true) then
	player:addKeyItem(ANNALS_OF_TRUTH);
	player:delKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH);
	player:setVar("Weaponskill_GKatana",2);
    end   
end;
