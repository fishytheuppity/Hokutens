-----------------------------------
-- Area: Ro'Maeve
-- NPC:  qm1(???)
-- Spawns Eldhrimnir
-- @pos 197, -8, -27
-----------------------------------
package.loaded["scripts/zones/RoMaeve/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/RoMaeve/TextIDs");
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
    if (player:getVar("Weaponskill_Club") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH)) then
	   SpawnMob(17277126):updateClaim(player); --Eldhrimnir
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