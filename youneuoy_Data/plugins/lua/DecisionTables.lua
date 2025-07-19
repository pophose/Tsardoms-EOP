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
        condition =
        effectText =
        effect = 
    },
]]

------------------------------VARIABLES------------------------------

factionLeader = {
    name = "Sir Clemens Conclavius",   --so that it does not return nil
    location = "The deepest pit of hell",    --same haha
}

currentYear = 1257




------------------------------TABLES------------------------------

KantakouzenosDecisions = {
    {
        DCnum = 1,  --could be used for debugging reasons
        title = "Take a loan from the Jewery",
        description = "Some prominent Jewish families have agreed to give us a loan, in return for more land.",
        signature = function()
             return (factionLeaderTitle.byzantine .. " " ..factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD")
            end,
        condition = function() 
            local playerFaction = stratmap.game.getFaction (0)

            for i = 0, playerFaction.settlementsNum - 1 do
                local settlement = playerFaction:getSettlement(i)
                for k = 0, settlement.buildingsNum - 1 do
                    building = settlement:getBuilding(k)
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
    },
    {
        DCnum = 97,
        title = "Expel the Frankish settlers from Patra",
        description = "With the reconquest of Patras, the people are demanding that we expel the Latin settlers and return the land to local Romans.",
        condition = function()
            return false    --unused for now
        end,
        effectText = "+1.5%% growth in Patra\n+40%% Public Order in Patra",
        effect = function()
            return true
        end,
    },
    {
        DCnum = 98,
        title = "Incorporate the Frankish nobility of Patra into the realm",
        description = "The Frankish nobles will provide an excelent addition to the army, yet for the sins of their forefathers, it is expected that no true Roman will be trusting of these people.",
        condition = function()
            return false    --unused for now
        end,
        effectText = "Frankish knights become available for recruitment in Patra,\n-30%% Public Order in all provinces\n for 6 turns",
        effect = function()
            return true
        end,
    },
    {
        DCnum = 2,
        title = "Grant Trading Benefits to Ragusa",
        description = function()
        return "We do hereby, with imperial favor and benevolence, grant unto our esteemed allies, the honorable council and illustrious city of Ragusa, the privilege to conduct trade within the bounds of our dominion under a levy more favorable than that imposed upon any other realm or polity.\nBasileus and Autocrator of the Romans, " 
            .. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD"
        end,
        condition =function()
            return true    
        end,
        effectText = "+Relations with the Republic of Ragusa\n-Relations with Venice, Genoa, Florence\nRagusan treaty colonies buildings will be funded by themselves.",
        effect = function()
            return true
        end,
    },
    {
        DCnum = 99,
        title = "Impose special tax",
        description = function()
        return  "It is what it is".. factionLeader.name .. ", " .. factionLeader.location .. ", Year " .. currentYear .. " AD"
        end,
        condition = function() return true end,
        effectText = "+4000 denars",
        effect = function()
            stratmap.game.callConsole("add_money", "2000")
            print("added 2000d")
        end,
    },
}







AydinDecisions = {
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

---Table containing keys to match each faction to their decision tables
FactionToTable = {
    kantakouzenos = {
        name = "kantakouzenos",
        table = KantakouzenosDecisions, --actual reference to the table, not a string!
    },
    aydin = {
        name = "aydin",
        table = AydinDecisions,
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

    for i, decision in ipairs(FactionTableFull) do
        if (decision.condition and decision.condition() == true) then
            table.insert(activeTable, decision)
        end
    end

    return activeTable
end

--Get faction leader info
function getFactionLeaderInfo()
    local playerFaction = stratmap.game.getFaction(0)
    local tempFactionLeader = playerFaction:getNamedCharacter(0)
    factionLeader.name = ifNotNilReturn(tempFactionLeader.fullName)
    print(factionLeader.name)




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