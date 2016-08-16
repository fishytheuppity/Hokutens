-----------------------------------
-- Area: The Boyahda Tree
-- NPC:  qm1(???)
-- Spawns Beet Leafhopper
-- @pos -11 -19 -176
-----------------------------------
package.loaded["scripts/zones/The_Boyahda_Tree/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/The_Boyahda_Tree/TextIDs");
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
    if (player:getVar("Weaponskill_Gun") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH)) then
	   SpawnMob(17404338):updateClaim(player); --Beet Leafhopper
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