--DecisionTables.lua

---DECISION TABLES
--Each faction has a table that contains tables for each decision.
--Each of these decision tables contains all info and logic about them.
--Not all decisions are visible at all times.  The game must fulfill the conditions of each decision first.
--The decisions that have their conditions fullfilled are then stored in a separate table, which is then loaded in game.


--Empty Decision
--[[ 
{
        DCnum =
        title = 
        description =
        signature = function(){
        
        }
        condition = function(){
        
        }
        effectText =
        effect =  function(){
        
        }
    },
]]

------------------------------VARIABLES------------------------------

local factionLeader = {
    name = "Sir Clemens Conclavius",   --so that it does not return nil
    location = "The deepest pit of hell",    --same haha
}

local currentYear = 1257

EnactedDecisionsHashSet = {
    --[[
    [Dcnum] = {
    Signature = string
    revoke = function/false
    }
    ]]
}


------------------------------TABLES------------------------------

local KantakouzenosDecisions = {
    --JEWISH BANKING
    {
        DCnum = 1,  --could be used for debugging purposes
        title = "Take a loan from the Jewery",
        description = "Some prominent Jewish families have agreed to give us a loan, in return for more land.",
        signature = function()
             return ("\n Basileus and Autocrator of the Romans, " .. " " ..factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
            end,
        condition = function() 
            local playerFaction = tsGetPlayerFaction()

            for i = 0, playerFaction.settlementsNum - 1 do
                local settlement = playerFaction:getSettlement(i)
                for k = 0, settlement.buildingsNum - 1 do
                    local building = settlement:getBuilding(k)
                    if (building:getName() == "jewish_ghetto" or building:getName() == "jewish_quarter") then
                        --print("Building in " .. settlement.name .. ": " .. building:getName())
                        return true
                    end
                    
                end
                
            end
            return false end,
        effectText = "+2000 denars",
        effect = function()
            stratmap.game.callConsole("add_money", "2000")
        end,
        revoke = function()
            return false
        end
    },
    --TRADE GRANTS (DO NOT CHANGE DCNUM ON THESE ONES, AS THEY ARE REQUIRED IN THEIR LOGIC!!!)
    {
        DCnum = 2,
        title = "Grant Trading Benefits to Ragusa",
        description = "We do hereby, with imperial favor and benevolence, grant unto our esteemed allies, the honorable council and illustrious city of Ragusa, the privilege to conduct trade within the bounds of our dominion under a levy more favorable than that imposed upon any other realm or polity.",
        signature = function()
             return ("\n Basileus and Autocrator of the Romans, " .. " " ..factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
            end,
        condition =function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local fac1 = CAMPAIGN:getFaction("ragusa")
            local fac2 = CAMPAIGN:getFaction("venice")
            local fac3 = CAMPAIGN:getFaction("genoa")
            local fac4 = CAMPAIGN:getFaction("florence")
            local playerfac = tsGetPlayerFaction()
            
            if (fac1.numOfCharacters > 0 and
                    EnactedDecisionsHashSet[2] == nil and
                    EnactedDecisionsHashSet[3] == nil and
                    EnactedDecisionsHashSet[4] == nil and
                    EnactedDecisionsHashSet[5] == nil) then
                if (CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac2) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac3) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac4) == false) then
                    return true
                end
            end
            return false
        end,
        effectText = "+Alliance with the Republic of Ragusa\n-Relations with Venice, Genoa, Florence\nRagusan treaty colonies buildings will be funded by themselves(Money returned automatically)",
        effect = function()
                local CAMPAIGN = gameDataAll.get().campaignStruct
                local fac1 = CAMPAIGN:getFaction("ragusa")
                local fac2 = CAMPAIGN:getFaction("venice")
                local fac3 = CAMPAIGN:getFaction("genoa")
                local fac4 = CAMPAIGN:getFaction("florence")
                local playerfac = tsGetPlayerFaction()

                fac1:setFactionStanding(playerfac, 1)
                CAMPAIGN:setDipStance(dipRelType.alliance, playerfac, fac1)

                fac2:setFactionStanding(playerfac, -0.8)
                fac3:setFactionStanding(playerfac, -0.8)
                fac4:setFactionStanding(playerfac, -0.8)
        end,
        revoke = function()
            return false
        end
    },
        {
        DCnum = 3,
        title = "Grant Trading Benefits to Venice",
        description = "We do hereby, with imperial favor and benevolence, grant unto our esteemed allies of the Serene Republic of Venice, the privilege to conduct trade within the bounds of our dominion under a levy more favorable than that imposed upon any other realm or polity.",
        signature = function()
             return ("\n Basileus and Autocrator of the Romans, " .. " " ..factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
            end,
        condition =function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local fac1 = CAMPAIGN:getFaction("venice")
            local fac2 = CAMPAIGN:getFaction("ragusa")
            local fac3 = CAMPAIGN:getFaction("genoa")
            local fac4 = CAMPAIGN:getFaction("florence")
            local playerfac = tsGetPlayerFaction()

            if (fac1.numOfCharacters > 0 and
                    EnactedDecisionsHashSet[2] == nil and
                    EnactedDecisionsHashSet[3] == nil and
                    EnactedDecisionsHashSet[4] == nil and
                    EnactedDecisionsHashSet[5] == nil) then
                if (CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac2) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac3) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac4) == false) then
                    return true
                end
            end
            return false
        end,
        effectText = "+Alliance with the Republic of Venice\n-Relations with Ragusa, Genoa, Florence\nVenitian treaty colonies buildings will be funded by themselves(Money returned automatically)",
        effect = function()
                local CAMPAIGN = gameDataAll.get().campaignStruct
                local fac1 = CAMPAIGN:getFaction("venice")
                local fac2 = CAMPAIGN:getFaction("ragusa")
                local fac3 = CAMPAIGN:getFaction("genoa")
                local fac4 = CAMPAIGN:getFaction("florence")
                local playerfac = tsGetPlayerFaction()

                fac1:setFactionStanding(playerfac, 1)
                CAMPAIGN:setDipStance(dipRelType.alliance, playerfac, fac1)

                fac2:setFactionStanding(playerfac, -0.8)
                fac3:setFactionStanding(playerfac, -0.8)
                fac4:setFactionStanding(playerfac, -0.8)
                

        end,
        revoke = function()
            return false
        end
    },
        {
        DCnum = 4,
        title = "Grant Trading Benefits to Genoa",
        description = "We do hereby, with imperial favor and benevolence, grant unto our trusted allies, the supreme Republic of Genoa, the privilege to conduct trade within the bounds of our dominion under a levy more favorable than that imposed upon any other realm or polity.",
        signature = function()
             return ("\n Basileus and Autocrator of the Romans, " .. " " ..factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
            end,
        condition =function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local fac1 = CAMPAIGN:getFaction("genoa")
            local fac2 = CAMPAIGN:getFaction("venice")
            local fac3 = CAMPAIGN:getFaction("ragusa")
            local fac4 = CAMPAIGN:getFaction("florence")
            local playerfac = tsGetPlayerFaction()

            if (fac1.numOfCharacters > 0 and
                    EnactedDecisionsHashSet[2] == nil and
                    EnactedDecisionsHashSet[3] == nil and
                    EnactedDecisionsHashSet[4] == nil and
                    EnactedDecisionsHashSet[5] == nil) then
                if (CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac2) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac3) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac4) == false) then
                    return true
                end
            end
            return false
        end,
        effectText = "+Alliance with the Republic of Genoa\n-Relations with Venice, Ragusa, Florence\nGenoese treaty colonies buildings will be funded by themselves(Money returned automatically)",
        effect = function()
                local CAMPAIGN = gameDataAll.get().campaignStruct
                local fac1 = CAMPAIGN:getFaction("genoa")
                local fac2 = CAMPAIGN:getFaction("venice")
                local fac3 = CAMPAIGN:getFaction("ragusa")
                local fac4 = CAMPAIGN:getFaction("florence")
                local playerfac = tsGetPlayerFaction()

                fac1:setFactionStanding(playerfac, 1)
                CAMPAIGN:setDipStance(dipRelType.alliance, playerfac, fac1)

                fac2:setFactionStanding(playerfac, -0.8)
                fac3:setFactionStanding(playerfac, -0.8)
                fac4:setFactionStanding(playerfac, -0.8)
                

        end,
        revoke = function()
            return false
        end
    },
        {
        DCnum = 5,
        title = "Grant Trading Benefits to Florence",
        description = "We do hereby, with imperial favor and benevolence, grant unto our esteemed allies in the Florentine Republic, the privilege to conduct trade within the bounds of our dominion under a levy more favorable than that imposed upon any other realm or polity.",
        signature = function()
             return ("\n Basileus and Autocrator of the Romans, " .. " " ..factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
            end,
        condition =function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
                local fac1 = CAMPAIGN:getFaction("florence")
                local fac2 = CAMPAIGN:getFaction("venice")
                local fac3 = CAMPAIGN:getFaction("genoa")
                local fac4 = CAMPAIGN:getFaction("ragusa")
                local playerfac = tsGetPlayerFaction()

            if (fac1.numOfCharacters > 0 and
                    EnactedDecisionsHashSet[2] == nil and
                    EnactedDecisionsHashSet[3] == nil and
                    EnactedDecisionsHashSet[4] == nil and
                    EnactedDecisionsHashSet[5] == nil) then
                if (CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac2) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac3) == false and
                        CAMPAIGN:checkDipStance(dipRelType.alliance, playerfac, fac4) == false) then
                    return true
                end
            end
            return false
        end,
        effectText = "+Alliance with the Republic of Ragusa\n-Relations with Venice, Genoa, Florence\nRagusan treaty colonies buildings will be funded by themselves(Money returned automatically)",
        effect = function()
                local CAMPAIGN = gameDataAll.get().campaignStruct
                local fac1 = CAMPAIGN:getFaction("florence")
                local fac2 = CAMPAIGN:getFaction("venice")
                local fac3 = CAMPAIGN:getFaction("genoa")
                local fac4 = CAMPAIGN:getFaction("ragusa")
                local playerfac = tsGetPlayerFaction()

                fac1:setFactionStanding(playerfac, 1)
                CAMPAIGN:setDipStance(dipRelType.alliance, playerfac, fac1)

                fac2:setFactionStanding(playerfac, -0.8)
                fac3:setFactionStanding(playerfac, -0.8)
                fac4:setFactionStanding(playerfac, -0.8)
        end,
        revoke = function()
            return false
        end
    },
    --ARMENIANS
    {
        DCnum = 6,
        title = "Request aid from the Armenians",
        description =
        "Due to the state of affairs our polity has be found in, it is requested upon the Armenian communities of our realm, to raise arms in union with our armies in the field at short notice.",
        signature = function()
            return ("\n Basileus and Autocrator of the Romans, " .. " " .. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
        end,
        condition = function()
            playerFaction = tsGetPlayerFaction()
            for i = 0, playerFaction.settlementsNum - 1 do
                local settlement = playerFaction:getSettlement(i)
                for k = 0, settlement.buildingsNum - 1 do
                    local building = settlement:getBuilding(k)
                    if (building:getName() == "armenian_neighbourhood" or building:getName() == "armenian_quarter") then
                        --print("Building in " .. settlement.name .. ": " .. building:getName())
                        return true
                    end
                end
            end
            return false
        end,
        effectText = "+4000 denars",
        effect = function()
            stratmap.game.callConsole("add_money", "2000")
            print("added 2000d")
        end,
        revoke = function()
            return false
        end
    },
    
    --PATRA
    {
        DCnum = 7,
        title = "Expel the Frankish settlers from Patra",
        description =
        "Let it be enacted with immediate effect that the Frankish settlers residing in the city of Patras are to be expelled from its bounds. Their presence, no longer deemed fitting within the dominion of Roman order and piety, shall be brought to an end by the competent civil and military authorities.\nAll officers of the Empire, both civil and military, are hereby instructed to see this decree fulfilled with diligence, prudence, and in accordance with the laws of the Empire.",
        signature = function()
            return ("\n Basileus and Autocrator of the Romans, " .. " " .. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
        end,
        condition = function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local patras = CAMPAIGN:getSettlementByName("Patras");
            playerfac = tsGetPlayerFaction()
            if (patras.ownerFaction.name == playerfac.name) then
                return true
            end
            return false
        end,
        effectText = "+Population growth bonus in Patra\n+Public Order bonus in Patra",
        effect = function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local patras = CAMPAIGN:getSettlementByName("Patras")

            patras:createBuilding("settling_6")

            patras.turmoil = -10
            patras.isProvokedRebellion = 0
        end,
        revoke = function()
            return false
        end
    },
    {
        DCnum = 8,
        title = "Incorporate the Frankish nobility of Patra into the realm",
        description =
        "It is henceforth declared and confirmed that to the Latin lords of Patras, and to all Latin peoples dwelling within the bounds of that city, is granted the right to remain therein unmolested and undisturbed, enjoying in full measure the privileges and protections accorded to all citizens of the Roman Empire.\nFurthermore, let it be known that they are hereby permitted to practice their faith freely and openly within the city, without interference or prejudice, herein and for all time.",
        signature = function()
            return ("\n Basileus and Autocrator of the Romans, " .. " " .. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
        end,
        condition = function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local patras = CAMPAIGN:getSettlementByName("Patras");
            playerfac = tsGetPlayerFaction()
            if (patras.ownerFaction.name == playerfac.name) then
                return true
            end
            return false
        end,
        effectText = "+Frankish knights become available for recruitment in Patra,\n-Realm-wide public unrest",
        effect = function()
            --thanks to Macaras and Fynn for the help
            for i = 0, playerfac.settlementsNum - 1 do
                local settlement = playerfac:getSettlement(i)
                if settlement.turmoil > 0 then
                    settlement.turmoil = 7 + settlement.turmoil
                end
                if settlement.turmoil == 0 then
                    settlement.turmoil = settlement.settlementStats.PublicOrderUnrest + 7
                end
            end
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local patras = CAMPAIGN:getSettlementByName("Patras");
            patras.createBuilding("frankish_quarter")
        end,
        revoke = function()
            return false
        end
    },
    --ANDRAVIDA
    {
        DCnum = 9,
        title = "Expel the Frankish settlers from Andravida",
        description =
        "Let it be enacted with immediate effect that the Frankish settlers residing in the city of Andravida are to be expelled from its bounds. Their presence, no longer deemed fitting within the dominion of Roman order and piety, shall be brought to an end by the competent civil and military authorities.\nAll officers of the Empire, both civil and military, are hereby instructed to see this decree fulfilled with diligence, prudence, and in accordance with the laws of the Empire.",
        signature = function()
            return ("\n Basileus and Autocrator of the Romans, " .. " " .. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
        end,
        condition = function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local sett = CAMPAIGN:getSettlementByName("Andreville");
            playerfac = tsGetPlayerFaction()
            if (sett.ownerFaction.name == playerfac.name) then
                return true
            end
            return false
        end,
        effectText = "+Population growth bonus in Andravida\n+Public Order bonus in Andravida",
        effect = function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local sett = CAMPAIGN:getSettlementByName("Andreville")

            sett:createBuilding("settling_6")

            sett.turmoil = -10
            sett.isProvokedRebellion = 0
        end,
        revoke = function()
            return false
        end
    },
    {
        DCnum = 10,
        title = "Incorporate the Frankish nobility of Andravida into the realm",
        description =
        "It is henceforth declared and confirmed that to the Latin lords of Andravida, and to all Latin peoples dwelling within the bounds of that city, is granted the right to remain therein unmolested and undisturbed, enjoying in full measure the privileges and protections accorded to all citizens of the Roman Empire.\nFurthermore, let it be known that they are hereby permitted to practice their faith freely and openly within the city, without interference or prejudice, herein and for all time.",
        signature = function()
            return ("\n Basileus and Autocrator of the Romans, " .. " " .. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
        end,
        condition = function()
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local sett = CAMPAIGN:getSettlementByName("Andreville");
            playerfac = tsGetPlayerFaction()
            if (sett.ownerFaction.name == playerfac.name) then
                return true
            end
            return false
        end,
        effectText = "+Frankish knights become available for recruitment in Andravida,\n-Realm-wide public unrest",
        effect = function()
            --thanks to Macaras and Fynn for the help
            for i = 0, playerfac.settlementsNum - 1 do
                local settlement = playerfac:getSettlement(i)
                if settlement.turmoil > 0 then
                    settlement.turmoil = 7 + settlement.turmoil
                end
                if settlement.turmoil == 0 then
                    settlement.turmoil = settlement.settlementStats.PublicOrderUnrest + 7
                end
                if settlement.turmoil > 25 then
                    settlement.turmoil = 25
                end
            end
            local CAMPAIGN = gameDataAll.get().campaignStruct
            local patras = CAMPAIGN:getSettlementByName("Andreville");
            patras.createBuilding("frankish_quarter")
        end,
        revoke = function()
            return false
        end
    },
    --ECONOMY
    {
        DCnum = 11,
        title = "Devalue the Coinage",
        description = "The royal mint is henceforth required to produce coins of reduced substance in gold",
        signature = function()
            return ("\n Basileus and Autocrator of the Romans, " .. " " .. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
        end,
        condition = function() return true end,
        effectText = "+4000 denars",
        effect = function()
            stratmap.game.callConsole("add_money", "4000")

            --thanks to Macaras and Fynn for the help
            for i = 0, playerfac.settlementsNum - 1 do
                local settlement = playerfac:getSettlement(i)
                if settlement.turmoil > 0 then
                    settlement.turmoil = 7 + settlement.turmoil
                end
                if settlement.turmoil == 0 then
                    settlement.turmoil = settlement.settlementStats.PublicOrderUnrest + 7
                end
                if settlement.turmoil > 20 then
                    settlement.turmoil = 20
                end
            end

        end,
        revoke = function()
            return false
        end
    },
    --test
    {
        DCnum = 99,
        title = "Impose special tax",
        description = "What can I say, it is what it is.",
        signature = function()
             return ("\n Basileus and Autocrator of the Romans, " .. " " ..factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
            end,
        condition = function() return true end,
        effectText = "+4000 denars",
        effect = function()
            stratmap.game.callConsole("add_money", "2000")
            print("added 2000d")
        end,
        revoke = function()
            return false
        end
    },
}



local AydinDecisions = {
    {
        DCnum = 1,
        title = "Impose special tax",
        description = "It is what it is",
        condition = function() return true end,
        effectText = "+2000 denars",
        effect = function()
            stratmap.game.callConsole("add_money", "2000")
            print("added 2000d")
        end,
    },
    


}



-------------------TEXTURE SETS TABLES-------------------

 GreekTextures = {
    scrollTexturePath = "\\eopData\\images\\greekScroll.png",
    innerScrollTexturePath = "\\eopData\\images\\greekInnerScroll.png",
    buttonSealTexturePath = "\\eopData\\images\\greekButton.png",
    dcButtonTexturePath = "\\eopData\\images\\DCScrollButton.png",
    separatorTexturePath = "\\eopData\\images\\TsarSeparator.png"
}





-------------------SOUND EFFECT TABLES-------------------




---Table containing keys to match each faction to their decision tables
 FactionToTable = {
    kantakouzenos = {
        name = "kantakouzenos",
        table = KantakouzenosDecisions, --actual reference to the table, not a string!
        textureSet = GreekTextures  --actual reference to the table, not a string!
    },
    aydin = {
        name = "aydin",
        table = AydinDecisions,
        textureSet = GreekTextures
    }
}







------------------------------FUNCTIONS------------------------------


--find player's faction's decision table
function GetFactionDCTable(factionName)
    for key, factionKey in pairs(FactionToTable) do
        if factionKey.name == tostring(factionName) then
            return factionKey.table
        end
    end
    print("FactionTable not found!")
    return nil  -- in case no match is found
end


--Create a table with all available decisions for the player
function CreateActiveDecisionsTable(FactionTableFull)
    local activeTable = {}

    if not FactionTableFull then                    --check for lack of factiontable
        print("Warning: FactionTableFull is nil.")
        return activeTable
    end

    -- Loop through decisions and check if they're active
    for _, decision in ipairs(FactionTableFull) do
        if not EnactedDecisionsHashSet[decision.DCnum] then
            if not decision.condition or decision.condition() then
                table.insert(activeTable, decision)
            end
        end
    end

    return activeTable
end


-- add an entry to the enacted decisions hash set 
function insertDCtoEnactedHashSet(aDCnum, aSignature, aRevoke)
    EnactedDecisionsHashSet[aDCnum] = {
        signature = aSignature,
        revoke = aRevoke
    }
end


-- remove an entry from the enacted decisions hash set
function removeDCfromEnactedHashSet(dcnum)
    EnactedDecisionsHashSet[dcnum] = nil
end


--Get faction leader info
function getSignatureInfo()
    local playerFaction = stratmap.game.getFaction(0)
    local tempFactionLeader = playerFaction:getNamedCharacter(0)
    factionLeader.name = ifNotNilReturn(tempFactionLeader.fullName)
    --print(factionLeader.name)

    local factionLeaderLocationID = tempFactionLeader.character.regionID
    --print(factionLeaderLocationID)

    local sMap = gameDataAll.get().stratMap

    factionLeader.location = ifNotNilReturn(sMap.getRegion(factionLeaderLocationID).regionName)
    --print(factionLeader.location)   --raw location name
    factionLeader.location = string.gsub(factionLeader.location, "_Region", "")
    print(factionLeader.location)

    local campaign = gameDataAll.get().campaignStruct
    currentYear = math.floor(campaign.currentDate)
end