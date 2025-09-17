-- Additional functions
--
campaignEOPData = {generals= {}, settlements ={},genportraits ={},ancTga = {}} 
function updateCampaignDataTables() --Checks for Character Data
    if campaignEOPData.genportraits then            --
        for i = 1, #campaignEOPData.genportraits do             
            M2TWEOP.unloadTexture(campaignEOPData.genportraits[i].id)       --Unloads portrait textures if there exist any previous ones
        end
        for i = 1, #campaignEOPData.ancTga do
            M2TWEOP.unloadTexture(campaignEOPData.ancTga[i].id) 
        end     
        campaignEOPData.generals, 
        campaignEOPData.settlements, 
        campaignEOPData.genportraits, 
        campaignEOPData.ancTga = {}, {},{},{}
        --campaignEOPData = {}
    end
    local portraits = {}        --Temporary table to store portrait data
    local fac = stratmap.game.getFaction(0)   --Gets player faction by index
    for i = 0, fac.numOfCharacters-1 do     --Iterates through all characters in the stratmap
            local thisCharacter = fac:getCharacter(i)
            --print("Name:"..thisCharacter.namedCharacter.fullName ,"Type: "..thisCharacter:getTypeID().."\n") --Minor log to know which characters are present in the campaign
            if thisCharacter:getTypeID() == 7 then    --Checks for generals
                table.insert(campaignEOPData.generals,thisCharacter) --Inserts character/general into our table
                local thisPortrait = {x = nil, y = nil , id = nil}
                if thisCharacter.namedCharacter.portrait then         --Checks if character has generic portrait/portrait ~nil
                    thisPortrait.x, thisPortrait.y, thisPortrait.id = M2TWEOP.loadTexture(thisCharacter.namedCharacter.portrait)      --Loads generic portrait
                else 
                    thisPortrait.x, thisPortrait.y, thisPortrait.id = M2TWEOP.loadTexture(thisCharacter.namedCharacter.portrait_custom) --Loads custom portrait if generic portrait is nil
                end
                table.insert(portraits,thisPortrait)          --Inserts portrait data into temporary table
            end
    end

    for i = 0, fac.settlementsNum-1 do      --Iterates through all settlements owned by faction
        local thisSett = fac:getSettlement(i)
        if isBuildingPresent(thisSett,"feudal_estates") or isBuildingPresent(thisSett, "large_feudal_estates") or isBuildingPresent(thisSett, "feudal_court") then     --Checks for the presence of feudal estates
            table.insert(campaignEOPData.settlements,thisSett)                  --Inserts settlement into table if feudalEstates are found
            --print(thisSett.name.." has been added to the settlements table. ")
            local thisAncTga = ancTable[fac.name][thisSett.name].tga    
            if thisAncTga and thisAncTga  ~= "" then
                local ancTga = {x = nil, y = nil , id = nil}   
                local ancpath = M2TWEOP.getModPath().."\\data\\ui\\3x ancillary sizes\\64x64\\"
                ancTga.x, ancTga.y, ancTga.id = M2TWEOP.loadTexture(ancpath..thisAncTga)   --Loads the associated .tga for the ancillary
                table.insert(campaignEOPData.ancTga,ancTga)         --Inserts data into main table
            else
                table.insert(campaignEOPData.ancTga,nil)
            end
        end
    end
    
    campaignEOPData.genportraits = portraits           --Transferring values to main table
    portraits = {}                                      -- Clearing temporary table
end

function isBuildingPresent(settlement,targetBuilding)       --Checks the given settlement for the target building specified. 
    for i = 0, settlement.buildingsNum-1 do
        local building = settlement:getBuilding(i)
        if building:getName() == targetBuilding then
            return true
        end
    end
end

