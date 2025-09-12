local textureSetsTable = require('TextureSets.TextureSetsTable');
local kantakouzenosDCTable = require('Decisions.Factions.kantakouzenos');
local aydinDCTable = require('Decisions.Factions.aydin');
local ottomanDCTable = require('Decisions.Factions.ottoman')


--FACTIONS MAY USE PLACEHOLDER TEXTURES AND DECISION TABLES

local FactionCatalogueTable = {
    kantakouzenos = {
        decisionsTable = kantakouzenosDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        byzantium = {
        decisionsTable = kantakouzenosDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
    aydin = {
        decisionsTable = aydinDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        ottoman = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        karaman = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        tatars = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        moldova = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        wallachia = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        bulgaria = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        serbia = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        albania = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        ragusa = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        bosnia = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        croatia = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        hungary = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        austria = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        bavaria = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        bohemia = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        switzerland = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        milan = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        venice = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        genoa = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        florence = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        papal_states = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        naples = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        trinacria = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        athens = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },
        rhodes = {
        decisionsTable = ottomanDCTable,
        TextureSetTable = textureSetsTable.GreekTextureSet,
    },


}




-----------------------------------------------
--------------- FUNCTIONS ---------------------
-----------------------------------------------



---@param factionName string
function GetAvailableDecisionsTable(factionName, enactedDecisionsHashSet)
    M2TWEOP.logGame("ENTERED GetAvailableDecisionsTable");
    --returning table
    local availableDCTable = {};
    --faction specific DC table
    local fullFactionDCTable = FactionCatalogueTable[factionName].decisionsTable or {};

    print(fullFactionDCTable);

    enactedDecisionsHashSet = enactedDecisionsHashSet or {} --safeguard against nil
    --print(enactedDecisionsHashSet[1].title)

    --Loop through fullFactionDCTable and check if they're available 
    for _, decision in ipairs(fullFactionDCTable) do
        if not enactedDecisionsHashSet[decision.dcNum]
            and (not decision:condition() or decision.condition) then
                print(enactedDecisionsHashSet[decision.dcNum]);
                table.insert(availableDCTable, decision);
        end
    end

    M2TWEOP.logGame("LEFT GetAvailableDecisionsTable");
    return availableDCTable;

end


function LoadTextures(factionName, ScrollTexture, InnerScrollTexture, ButtonSealTexture, ButtonRevokeSealTexture, DcButtonTexture, DcEnactedDecisionsButtonTexture, SeparatorTexture)
    if not factionName then
        M2TWEOP.logGame("Error: Invalid factionName provided in LoadTextures")
        return
    end

    local texSet = FactionCatalogueTable[factionName].TextureSetTable;

    ScrollTexture.x, ScrollTexture.y, ScrollTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.scrollTexturePath);

    InnerScrollTexture.x, InnerScrollTexture.y, InnerScrollTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.innerScrollTexturePath);

    ButtonSealTexture.x, ButtonSealTexture.y, ButtonSealTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.buttonSealTexturePath);

    ButtonRevokeSealTexture.x, ButtonRevokeSealTexture.y, ButtonRevokeSealTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.buttonRevokeSealTexturePath);

    DcButtonTexture.x, DcButtonTexture.y, DcButtonTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.dcButtonTexturePath);

    DcEnactedDecisionsButtonTexture.x, DcEnactedDecisionsButtonTexture.y, DcEnactedDecisionsButtonTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.dcEnactedDecisionsButtonTexturePath);

    SeparatorTexture.x, SeparatorTexture.y, SeparatorTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.separatorTexturePath);

    M2TWEOP.logGame("EXITING LoadTextures function")
end

