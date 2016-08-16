-----------------------------------
-- Area: Cape Terrigan
-- NPC:  qm1(???)
-- Spawns Stolas
-- @pos -156, -8, 198
-----------------------------------
package.loaded["scripts/zones/Cape_Terrigan/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Cape_Terrigan/TextIDs");
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
    if (player:getVar("Weaponskill_Bow") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH)) then
	   SpawnMob(17240424):updateClaim(player); --Stolas
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
