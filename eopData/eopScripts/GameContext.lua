-- GameContext.lua


local Context = {
    playerFaction = {},
    factionLeader = {
        name = "Clemens Conclavius",    --placeholder
        title = "Deathlord",
        location = "speaking from the darkest pit of Hell"
    },
    currentYear = 1257,
    enactedDecisionsHashSet = {},
}

function Context:updateAll(playerFaction, updatedEnactedDecisionHashSet, factionLeader, year)
    Context.playerFaction = playerFaction;
    Context.enactedDecisionsHashSet = updatedEnactedDecisionHashSet;
    Context.factionLeader.name = factionLeader.name;
    Context.factionLeader.location = factionLeader.location;
    Context.currentYear = year;
end

-- Accessors
function Context.getLeader()
    return Context.factionLeader;
end

function Context.getPlayerFaction()
    return Context.playerFaction;
end

function Context.getYear()
    return Context.currentYear;
end

return Context;
