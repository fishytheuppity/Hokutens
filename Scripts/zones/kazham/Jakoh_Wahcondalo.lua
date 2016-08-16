-----------------------------------
-- Area: Kazham
-- NPC:  Jakoh Wahcondalo
-- @pos 101 -16 -115 250 
-----------------------------------
package.loaded["scripts/zones/Kazham/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/missions");
require("scripts/zones/Kazham/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local wscount = player:getVar("Dagger_Trials");
	if (player:getQuestStatus(OUTLANDS,CLOAK_AND_DAGGER) == QUEST_ACCEPTED) and (wscount <= 299) then  -- checking if you want to quit if you dont have 300 ws points or threw weapon away
	   player:startEvent(280);
	elseif (player:getQuestStatus(OUTLANDS,CLOAK_AND_DAGGER) == QUEST_ACCEPTED) and (wscount >= 300) then
	    if (trade:hasItemQty(17616,1) and trade:getItemCount() == 1) then --trading weapon in after 300 ws 
		   player:setVar("Dagger_Trials", 1);
	       player:startEvent(282);
	       player:tradeComplete();
	    end
	end   
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local skill = tonumber(skill) or _G[skill];
	local skillId = tonumber(skill);
    local mLvl = player:getMainLvl();
	local wscount = player:getVar("Dagger_Trials");
    
    
	if (player:getCurrentMission(ZILART) == KAZAMS_CHIEFTAINESS) then
        player:startEvent(0x0072);
    elseif (player:getCurrentMission(ZILART) == THE_TEMPLE_OF_UGGALEPIH) then
        player:startEvent(0x0073);
    elseif (player:getCurrentMission(WINDURST) == AWAKENING_OF_THE_GODS and player:getVar("MissionStatus") == 2) then
        player:startEvent(0x0109);
    
    
	elseif (player:getQuestStatus(OUTLANDS,CLOAK_AND_DAGGER) == QUEST_AVAILABLE and mLvl >= 71 and skill == 2) then  --eviseration ws quest start
	    if (skillId >= 230) then
	       player:startEvent(279);
		else
           player:PrintToPlayer("Come back when your dagger skill is above 230.");	
        end	
    elseif (player:getVar("Weaponskill_Dagger") == 2) then -- back from killing NM final cs
            --if (player:hasLearnedWeaponskill(25) == true) then
		       --player:addLearnedWeaponskill(2);	
	           player:startEvent(284);
		    --end
		   
	elseif (player:getQuestStatus(OUTLANDS,CLOAK_AND_DAGGER) == QUEST_ACCEPTED) and (wscount <= 299) then  -- checking if you want to quit if you dont have 300 ws points or threw weapon away
	       player:startEvent(280);
	    
	elseif (player:getQuestStatus(OUTLANDS,CLOAK_AND_DAGGER) == QUEST_ACCEPTED) and (wscount >= 300) then -- cs for passing 300 wspoints 
	       player:PrintToPlayer("Trade the Weapon in.");
		   
    else		   
        player:startEvent(0x0071);
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
    
    if (csid == 0x0072) then
       player:addKeyItem(SACRIFICIAL_CHAMBER_KEY);
       player:messageSpecial(KEYITEM_OBTAINED,SACRIFICIAL_CHAMBER_KEY);
       player:completeMission(ZILART,KAZAMS_CHIEFTAINESS);
       player:addMission(ZILART,THE_TEMPLE_OF_UGGALEPIH);
    elseif (csid == 0x0109) then
       player:setVar("MissionStatus",3);
    elseif (csid == 279) then
       player:addQuest(OUTLANDS,CLOAK_AND_DAGGER);   
       player:setVar("Dagger_Trials", 1);
	   player:addItem(17616);
	   player:addKeyItem(WEAPON_TRAINING_GUIDE);
	   player:messageSpecial(KEYITEM_OBTAINED,WEAPON_TRAINING_GUIDE);
	   player:messageSpecial(ITEM_OBTAINED,17616);
    elseif (csid == 280) then
       player:startEvent(281); -- not enough points for ws turn in
    elseif (csid == 282) then -- cs to head to nm for ws
       player:addKeyItem(MAP_TO_THE_ANNALS_OF_TRUTH)
   	   player:messageSpecial(KEYITEM_OBTAINED,MAP_TO_THE_ANNALS_OF_TRUTH);
       player:setVar("Weaponskill_Dagger", 1);
       player:startEvent(283);
    elseif (csid == 284) then -- final ws cs and award of ws
        --if (player:hasLearnedWeaponskill(2) == false) then       
	       --player:addLearnedWeaponskill();
           player:PrintToPlayer("You have learned the Weaponskill Evisceration!");
           player:setVar("Weaponskill_Dagger", 1); 
           player:completeQuest(OUTLANDS,CLOAK_AND_DAGGER);
        --end		
    end
    
end;
