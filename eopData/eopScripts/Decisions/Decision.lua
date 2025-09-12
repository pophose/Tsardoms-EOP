---decision.lua



---@class decision  --Desicion Class
---@field dcNum integer --used for filtering out enacted decisions from the enactedDCTable
---@field title string
---@field description string
---@field signature fun()
---@field condition fun()
---@field effectText string --used for tooltip
---@field effect fun()
---@field revokeText string --used for tooltip
---@field revoke fun()
---@field enacted boolean
local decision = {
    dcNum = 0,
    title = "",
    description = "",
    condition = function() end,
    effectText = "",
    effect = function() end,
    revokeText = "",
    revoke = function() end,
    enacted = false,
}

decision.__index = decision  -- correct metatable lookup key

--create a new decision table
function decision:new(args)
    local obj = {
        dcNum = args.dcNum,
        title = args.title or "",
        description = args.description or "",
        condition = args.condition or function() return true end,
        effectText = args.effectText or "",
        effect = args.effect or function() return false end,
        revokeText = args.revokeText or "",
        revoke = args.revoke or function() return true end,
    }
    setmetatable(obj, self)
    return obj
end


function decision:newMerchantFavour(args)
    local favouredFactionName = args.favouredFaction
    local unfavouredFactionsNames = args.unfavouredFactions
    local enactedDecisionsHashSet = args.enactedDecisionsHashSet
    
    local obj = {
        dcNum = args.dcNum,
        title = args.title or "",
        description = args.description or "",
        condition = function()
            M2TWEOP.logGame("FUNCTION: MERCHANT_BENEFITS_CONDITION ENTERED");
            local campaign = M2TW.campaign
            local playerfac = campaign:getFactionByOrder(0);

            local favouredFaction = campaign:getFaction(favouredFactionName)
            print("factionName: " .. favouredFactionName);
            --print("factionStuct: " .. favouredFaction);
            local unfavouredFactions = {}
            for i, facName in ipairs(unfavouredFactionsNames) do
                M2TWEOP.logGame("getting faction struct of:" .. facName);
                unfavouredFactions[i] = campaign:getFaction(facName);
            end

            if (campaign:checkDipStance(dipRelType.war, playerfac, favouredFaction)) then
                return false;
            end
            if ((favouredFaction.settlementsNum > 0) and
                    enactedDecisionsHashSet[tostring("merchantFavour_" .. unfavouredFactions[1].name)] ~= nil or
                    enactedDecisionsHashSet[tostring("merchantFavour_" .. unfavouredFactions[2].name)] ~= nil or
                    enactedDecisionsHashSet[tostring("merchantFavour_" .. unfavouredFactions[3].name)] ~= nil) then
                return false;
            end

            M2TWEOP.logGame("FUNCTION: MERCHANT_BENEFITS_CONDITION EXIT");
            return true
        end,
        effectText = args.effectText or "",
        effect = function()
            M2TWEOP.logGame("FUNCTION: MERCHANT_BENEFITS_EFFECT ENTERED")
            ---@type campaignStruct
            local campaign = M2TW.campaign
            ---@type factionStruct
            local playerfac = campaign:getFactionByOrder(0);

            local favouredFaction = campaign:getFaction(favouredFactionName)
            local unfavouredFactions = {}
            for i, facName in ipairs(unfavouredFactionsNames) do
                M2TWEOP.logGame("getting faction struct of:" .. facName);
                unfavouredFactions[i] = campaign:getFaction(facName);
            end

            --diplo changes for unfavoured factions
            for i, fac in ipairs(unfavouredFactions) do
                if (campaign:checkDipStance(dipRelType.alliance, playerfac, fac)) then
                    campaign:setDipStance(dipRelType.peace, playerfac, fac); --break alliance if had
                end
                local currentFactionStanding = fac:getFactionStanding(playerfac);
                fac:setFactionStanding(playerfac, currentFactionStanding - 0.8);
            end

            --diplo changes for favoured faction
            favouredFaction:setFactionStanding(playerfac, 1);
            campaign:setDipStance(dipRelType.alliance, playerfac, favouredFaction);
            campaign:setDipStance(dipRelType.trade, playerfac, favouredFaction);

            M2TWEOP.logGame("FUNCTION: MERCHANT_BENEFITS_EFFECT EXIT")
        end,
        revokeText = args.revokeText or "",
        "",
        revoke = function()
            M2TWEOP.logGame("FUNCTION: MERCHANT_BENEFITS_REVOKE ENTERED");
            ---@type campaignStruct
            local campaign = M2TW.campaign
            ---@type factionStruct
            local playerfac = campaign:getFactionByOrder(0);

            local favouredFaction = campaign:getFaction(favouredFactionName)
            local unfavouredFactions = {}
            for i, facName in ipairs(unfavouredFactionsNames) do
                M2TWEOP.logGame("getting faction struct of:" .. facName);
                unfavouredFactions[i] = campaign:getFaction(facName);
            end

            --diplo change for previously favoured faction
            if not campaign:checkDipStance(dipRelType.war, playerfac, favouredFaction) then
                local currentFactionStanding = favouredFaction:getFactionStanding(playerfac);
                favouredFaction:setFactionStanding(playerfac, currentFactionStanding - 1.8);
            end

            if favouredFaction:getFactionStanding(playerfac) < -0.9 then
                campaign:setDipStance(dipRelType.war, playerfac, favouredFaction);
            elseif  not campaign:checkDipStance(dipRelType.war, playerfac, favouredFaction) then
                campaign:setDipStance(dipRelType.peace, playerfac, favouredFaction);
            end

            --diplo changes for previously unfavoured factions
            for i, fac in ipairs(unfavouredFactions) do
                currentFactionStanding = fac:getFactionStanding(playerfac);
                fac:setFactionStanding(playerfac, currentFactionStanding + 0.1);
            end

            M2TWEOP.logGame("FUNCTION: MERCHANT_BENEFITS_REVOKE ENTERED");
        end,
    }
    setmetatable(obj, self)
    return obj
end



--unused because I can't get it to work :/
function decision:draw()
    --Title
    ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0)         --make text black
    ImGui.SetWindowFontScale(1.3)                                   -- enlarge text size
    ImGui.SetCursorPos(290 - (string.len(decision.title) * 1.7), ImGui.GetCursorPosY() + 5)
    ImGui.TextWrapped(decision.title)
    ImGui.SetWindowFontScale(1.0)         -- normalize text size

    --Description
    ImGui.SetCursorPos(20, ImGui.GetCursorPosY())
    ImGui.SetWindowFontScale(1.1)         -- enlarge text size
    ImGui.TextWrapped(decision.description)
    ImGui.SetWindowFontScale(1.0)         -- normalize text size
end


return decision