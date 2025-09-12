local Decision = require("Decisions.Decision")
local Context = require('GameContext')
local RoyalTitles = require('Royal_Titles.royalTitles')
require('TsardomsGuiFunctions')

specialTaxDecision = Decision:new{
    dcNum = 1,
    title = "Impose special tax",
    description = "What can I say, it is what it is.",
    condition = function()
        M2TWEOP.logGame("looking at test condition");
        return true;
    end,
    effectText = "+4000 denars",
    effect = function()
        M2TWEOP.callConsole("add_money", "2000");
        print("added 2000d");
        local faction = M2TW.campaign:getFactionByOrder(0);
        faction.localizedName = "whateverland";
    end,
    revokeText = "",
    revoke = function()
        return false;
    end
}

local changeNameTest = Decision:new{
    dcNum = 99,
    title = "change name",
    description = "NOW",
    condition = function()
        M2TWEOP.logGame("looking at test condition");
        return true;
    end,
    effectText = "Change Name now",
    effect = function()
        M2TWEOP.logGame("TEST CHANGE NAME");

        for i=0, 29 do
            local faction = M2TW.campaign:getFactionByOrder(i)
            print(faction.name);
           changeFactionRank(faction.name, RoyalTitles[faction.name]:determineTitle()) 
        end

        changeFactionRank(Context.playerFaction.name, RoyalTitles[Context.playerFaction.name]:determineTitle())
    end,
    revokeText = "",
    revoke = function()
        return true;
    end
}



local DCtable = {
    specialTaxDecision,
    changeNameTest,
}

return DCtable;