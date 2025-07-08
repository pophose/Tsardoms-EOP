
---DECISION TABLES
--Each faction has a table that contains tables for each decision.
--Each of these decision tables contains all info and logic about them.
--Not all decisions are visible at all times.  The game must fulfill the conditions of each decision first.
--The decisions that have their conditions fullfilled are then stored in a separate table, which is then loaded in game.



KantakouzenosDecisions = {
    {
        DCnum = 1,
        title = "Take a loan from the Jewery",
        description = "Some prominent Jewish families have agreed to give us a loan, in return for more land.",
        condition = function() return true end,
        effectText = "+2000 denars",
        effect = function()
            stratmap.game.callConsole("add_money", "2000")
        end,
    },
    {
        DCnum = 2,
        title = "Impose special tax",
        description = "It is what it is",
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

--Table containing keys to match each faction to their decision tables
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