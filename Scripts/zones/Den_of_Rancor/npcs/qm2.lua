-----------------------------------
-- Area: Den of Rancor
-- NPC:  qm2(???)
-- Spawns Mokumokuren
-- @pos 117, 35, -280
-----------------------------------
package.loaded["scripts/zones/Den_of_Rancor/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Den_of_Rancor/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getVar("Weaponskill_Scythe") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH)) then
	   SpawnMob(17433016):updateClaim(player); --Mokumokuren
	else   
       player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
	end   
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;