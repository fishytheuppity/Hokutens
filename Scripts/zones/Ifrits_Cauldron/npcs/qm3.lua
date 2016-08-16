-----------------------------------
-- Area: Ifrit's Cauldron
-- NPC:  qm3(???)
-- Spawns Cailleach
-- @pos 119 20 143
-----------------------------------
package.loaded["scripts/zones/Ifrits_Cauldron/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Ifrits_Cauldron/TextIDs");
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
    if (player:getVar("Weaponskill_Staff") == 1) and (player:hasKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH)) then
	   SpawnMob(17617165):updateClaim(player); --Cailleach
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