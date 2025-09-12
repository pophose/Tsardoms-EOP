local Decision = require("Decisions.Decision")
local RoyalTitles = require('Royal_Titles.royalTitles')
local Context = require('GameContext')
require('TsardomsGuiFunctions')


local specialTaxDecision = Decision:new{
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
    description = "What can I say, it is what it is.",
    condition = function()
        M2TWEOP.logGame("looking at test condition");
        return true;
    end,
    effectText = "+4000 denars",
    effect = function()
      changeFactionRank(Context.playerFaction.name, RoyalTitles[Context.playerFaction.name]:determineTitle())
    end,
    revokeText = "",
    revoke = function()
        return true;
    end
}

local merchantFavour_venice = Decision:newMerchantFavour({
    dcNum = 2,
    title = "Grand Trading Benefits to Venice",
    description = "We hearby declare the Serene Republic of Venice as our most trusted trading partner",
    effectText = "+Alliance formed with Venice\n+Venitian trade colonies subsidised by Venice\n-40%% in Trade income\n-Relations sour with Genoa, Florence, Ragusa",
    revokeText = "+Relations ease slightly with Genoa, Florence, Ragusa\n-Relations deteriorate with Venice, potential war",
    favouredFaction = "venice",
    unfavouredFactions = {"genoa", "florence", "ragusa"},
    enactedDecisionsHashSet = Context.enactedDecisionsHashSet,
})

local merchantFavour_genoa = Decision:newMerchantFavour({
    dcNum = 3,
    title = "Grand Trading Benefits to Genoa",
    description = "We hearby declare the Genoese Republic as our most trusted trading partner",
    effectText = "+Alliance formed with Genoa\n+Genoan trade colonies subsidised by Genoa\n-40%% in Trade income\n-Relations sour with Venice, Florence, Ragusa",
    revokeText = "+Relations ease slightly with Venice, Florence, Ragusa\n-Relations deteriorate with Genoa, potential war",
    favouredFaction = "genoa",
    unfavouredFactions = {"venice", "florence", "ragusa"},
    enactedDecisionsHashSet = Context.enactedDecisionsHashSet,
})

local merchantFavour_ragusa = Decision:newMerchantFavour({
    dcNum = 4,
    title = "Grand Trading Benefits to Ragusa",
    description = "We hearby declare the illustrious counsil and city of Ragusa as our most trusted trading partner",
    effectText = "+Alliance formed with Ragusa\n+Ragusan trade colonies subsidised by Ragusa\n-40%% in Trade income\n-Relations sour with Genoa, Florence, Venice",
    revokeText = "+Relations ease slightly with Genoa, Florence, Venice\n-Relations deteriorate with Ragusa, potential war",
    favouredFaction = "ragusa",
    unfavouredFactions = {"genoa", "florence", "venice"},
    enactedDecisionsHashSet = Context.enactedDecisionsHashSet,
})

local merchantFavour_florence = Decision:newMerchantFavour({
    dcNum = 5,
    title = "Grand Trading Benefits to Florence",
    description = "We hearby declare the Republic of Florence as our most trusted trading partner",
    effectText = "+Alliance formed with Florence\n-30%% in Trade income\n-Relations sour with Genoa, Florence, Ragusa",
    revokeText = "+Relations ease slightly with Genoa, Venice, Ragusa\n-Relations deteriorate with Florence, potential war",
    favouredFaction = "florence",
    unfavouredFactions = {"genoa", "venice", "ragusa"},
    enactedDecisionsHashSet = Context.enactedDecisionsHashSet,
})

local DCTable = {
    specialTaxDecision,
    changeNameTest,
    merchantFavour_venice,
    merchantFavour_genoa,
    merchantFavour_ragusa,
    merchantFavour_florence,
}

return DCTable;