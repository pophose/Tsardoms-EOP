--luaPluginScript.lua

--require('myconfigs')
require('TsardomsGuiFunctions')
require('FactionCatalogueTables')
local RoyalTitles = require('Royal_Titles.royalTitles')
local Context = require('GameContext')


-- Helper for managing persistence of tables across save/load
require('helpers/tableSave')

-- Uncomment to use EOP Helper functions
-- require('helpers/EopLuaHelpers')

-- Uncomment to use external debugger
-- require('helpers/mobdebug').start()

-- Our campaign config table.
campaignConfig = { ["someConfigValue"] = 5 };




-------------------------------------------------------------------------------------
------ Textures setup ---------------------------------------------------------------
-------------------------------------------------------------------------------------

local ScrollTexture = {x = 0, y = 0, img = nil};
local InnerScrollTexture = {x = 0, y = 0, img = nil};
local ButtonSealTexture = {x = 0, y = 0, img = nil};
local ButtonRevokeSealTexture = {x = 0, y = 0, img = nil};
local DcButtonTexture = {x = 0, y = 0, img = nil};
local DcEnactedDecisionsButtonTexture = {x = 0, y = 0, img = nil};
local SeparatorTexture = {x = 0, y = 0, img = nil};




-------------------------------------------------------------------------------------
------ IMGUI VARIABLES --------------------------------------------------------------
-------------------------------------------------------------------------------------


--OPEN window variables
local openDCButton = false  --boolean for showing DCButtonMain window
local openDCMain = false  --boolean for showing DCMain window
local openDCEnactedDecisions = false --boolean for showing the past decisions window


--Window logic variables
--local currentFlexWindow = FlexWindowStack:top()    --flex window is always the top of the flexWindowStack
local RBselected   --selected radio button of the flex window




------------------------------------------------------------------------------------
---------- TABLES ------------------------------------------------------------------
------------------------------------------------------------------------------------

local availableDecisionsTable = {};
local enactedDecisionsHashSet = {};




------------------------------------------------------------------------------------
------- SAVE/LOADING ---------------------------------------------------------------
------------------------------------------------------------------------------------

-- Fires when loading a save file
function onLoadSaveFile(paths)
    campaignPopup = true

    --restart script to prevent crashes
    --M2TWEOP.restartLua()

    for index, path in pairs(paths) do
        if string.find(path, "configTable.lua") then
            campaignConfig = persistence.load(path)
        elseif string.find(path, "luaenacted_decisions.lua") then
            --enactedDecisionsHashSet = persistence.load(path)
        end
    end
    
end


-- Fires when creating a save file
-- Returns a list of M2TWEOP save files
function onCreateSaveFile()
    local savefiles = {};
    currentPath = M2TWEOP.getPluginPath();

    -- Function from helper, save our table
    persistence.store(currentPath .. "configTable.lua", campaignConfig);
    persistence.store(currentPath .. "enacted_decisions.lua", enactedDecisionsHashSet)

    savefiles[1] = currentPath .. "configTable.lua";
    savefiles[2] = currentPath .. "enacted_decisions.lua";
    return savefiles;
end


--- Called after loading the campaign map
function onCampaignMapLoaded() 
    GAME_DATA = gameDataAll.get()
    CAMPAIGN = GAME_DATA.campaignStruct
    STRAT_MAP = GAME_DATA.stratMap
    BATTLE = GAME_DATA.battleStruct
    UI_MANAGER = GAME_DATA.uiCardManager

    ButtonSound = M2TWEOPSounds.createEOPSound(M2TWEOP.getModPath().."\\eopData\\music\\button.ogg")
    ScrollOpenSound = M2TWEOPSounds.createEOPSound(M2TWEOP.getModPath().."\\eopData\\music\\scrollOpen.ogg")

    LoadTextures(Context.playerFaction.name, ScrollTexture, InnerScrollTexture, ButtonSealTexture, ButtonRevokeSealTexture, DcButtonTexture, DcEnactedDecisionsButtonTexture, SeparatorTexture)

end


--FONTS
function onLoadingFonts()
_ScrollTitleFont = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."\\eopData\\fonts\\Kingthings_Petrock_light.ttf", 32, nil, nil)
end




------------------------------------------------------------------------------------
----- EVENTS FUNCTIONS -------------------------------------------------------------
------------------------------------------------------------------------------------

--Fires when the plugin is first loaded at game start or restarted with restartLua()
function onPluginLoad()
    M2TWEOP.unlockGameConsoleCommands();
    -- UNCOMMENT TO ENABLE BELOW SETTINGS
    --M2TWEOP.setAncillariesLimit(8);
    --M2TWEOP.setMaxBgSize(31);
    --M2TWEOP.setReligionsLimit(10);
    --M2TWEOP.setBuildingChainLimit(9);
    --M2TWEOP.setGuildCooldown(3);
end


function onFactionTurnStart(eventData)
    if (eventData.faction.name ~= "slave")  then
        changeFactionRank(eventData.faction.name, RoyalTitles[eventData.faction.name]:determineTitle())
    end

end

function onFactionNewCapital(eventData)
    if(eventData.faction.name == Context.playerFaction.name) then
        changeFactionRank(Context.playerFaction.name, RoyalTitles[Context.playerFaction.name]:determineTitle())
    end
end

---A  window with the "DecisionsButtonMain" opens when the overview scroll is opened, which can then be clicked to access the Decisions scroll ---
---Furthermore, all backend logic for the DC scroll is handled here ---
function onScrollOpened(eventData)

    Context:updateAll(M2TW.campaign:getFactionByOrder(0), enactedDecisionsHashSet, getSignatureCharacterInfo(), getCurrentYear());

    availableDecisionsTable = GetAvailableDecisionsTable(Context.playerFaction.name, enactedDecisionsHashSet);



    --TEXTURES (I would like to move this to onCampaignMapLoaded, but lazy loading prevents it)
    LoadTextures(Context.playerFaction.name, ScrollTexture, InnerScrollTexture, ButtonSealTexture, ButtonRevokeSealTexture, DcButtonTexture, DcEnactedDecisionsButtonTexture, SeparatorTexture)
    print("Textures should be loaded boss");
    M2TWEOP.logGame("IMGUI TEXTURES LOADED.");


    local scrollName = eventData.resourceDescription

    --debugging
    if scrollName then
        print("Scroll opened: " .. scrollName)
    else
        return
    end


    --DecisionsButtonMain
    if (openDCButton == false and scrollName == "combined_overview_scroll") then
        openDCButton = true

        --GET PLAYER FACTION (in case it failed in OnLoadGame)
        M2TWEOP.logGame("GOT PLAYER FACTION.")
    end

    --DecisionsMain closing logic
    if openDCMain == true and (
            scrollName == "faction_ranking_scroll" or
            scrollName == "combined_listview_scroll" or
            scrollName == "college_of_cardinals_scroll" or
            scrollName == "advanced_settlement_info_scroll" or
            scrollName == "family_tree_scroll"  or
            scrollName == "building_info_scroll"

        ) then
        openDCMain = false
    end
end


---The  "DecisionsButtonMain" AND "DecisionsMain" window is closed when the combined_overview_scroll is closed
function onScrollClosed(eventData)
    local scrollName = eventData.resourceDescription

    if (scrollName == "combined_overview_scroll") then openDCButton = false end
end




----------------------------------------------------------------------------------------------------------------
------------------- DRAW FUNCTION ------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------


--- Called every time an image is rendered for display
---@param pDevice LPDIRECT3DDEVICE9 
function draw(pDevice)

    ---SHORTCUTS FOR WINDOWS AND CONSOLE---
    

    ---console--
    if (ImGui.IsKeyPressed(ImGuiKey.GraveAccent))
    and (ImGui.IsKeyDown(ImGuiKey.LeftCtrl))
    then
        M2TWEOP.toggleConsole()
    elseif (ImGui.IsKeyPressed(ImGuiKey.GraveAccent))
    and (ImGui.IsKeyDown(ImGuiKey.LeftAlt))
    then
        M2TWEOP.toggleDeveloperMode()
    elseif (ImGui.IsKeyPressed(ImGuiKey.R))
        and (ImGui.IsKeyDown(ImGuiKey.LeftCtrl))
        and (ImGui.IsKeyDown(ImGuiKey.LeftShift))
    then
        M2TWEOP.restartLua()
    end

    if(ImGui.IsKeyPressed(ImGuiKey.M))
     and (ImGui.IsKeyPressed(ImGuiKey.LeftCtrl)) then
        OpenFlexWindow = not OpenFlexWindow;
    end
    

    -------- DECISIONS WINDOW DRAW--------

    --draw DC Main Button window
    if (openDCButton) then -- check if window open
        ImGui.SetNextWindowSize(76, 59)
        ImGui.SetNextWindowPos(1302, 755)
        openDCButton, shouldDraw = ImGui.Begin("Decisions##ButtonMain", openDCButton,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove, ImGuiWindowFlags.NoBackground,
                ImGuiWindowFlags.NoScrollWithMouse))

        tsCustomButton("##DCButtonMain", 0, 0, 77, 57,
            function()
                if(openDCEnactedDecisions == false) then
                    openDCMain = not openDCMain;

                elseif(openDCEnactedDecisions == true) then
                    openDCEnactedDecisions = false;
                end
            end,
            ScrollOpenSound, DcButtonTexture, "Show decisions scroll")



        ImGui.End() --end Decisions##ButtonMain
    end

    --------draw DC MAIN WINDOW--------
    if (openDCMain) then


        --Main Decision Window
        ImGui.SetNextWindowSize(980, 835)
        ImGui.SetNextWindowPos(1, -3)
        openDCMain, shouldDraw = ImGui.Begin("Decisions##DCMain", openDCMain,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove, ImGuiWindowFlags.NoBackground, ImGuiWindowFlags.NoScrollWithMouse))
        
        --main texture
        local xPos, yPos = ImGui.GetCursorPos() 
        ImGui.Image(ScrollTexture.img, 950, 835)
        ImGui.SetCursorPos(xPos, yPos)

        --Window Title
        ImGui.SetCursorPos(425, 60)
        ImGui.SetWindowFontScale(1.6)     -- enlarge text size
        ImGui.PushFont(_ScrollTitleFont)
        ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0) --make text black
        ImGui.Text("Decisions")
        ImGui.PopStyleColor()            -- removes text assigned colour from stack(imgui logic)
        ImGui.PopFont()                  -- no argument needed
        ImGui.SetWindowFontScale(1.0)     -- normalize text size



        --inner (list window) texture
        ImGui.SetCursorPos(35, 130)
        xPos, yPos = ImGui.GetCursorPos()
        ImGui.Image(InnerScrollTexture.img, 890, 640)
        ImGui.SetCursorPos(xPos, yPos)

        --Decision List Window
        ImGui.SetCursorPos(65, 144)
        ImGui.SetNextWindowBgAlpha(0.0)
        local shouldDraw = ImGui.BeginChild("Decisions##DCListWindow", 815, 580,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove, ImGuiWindowFlags.NoBackground))



        --decisions are part of the DCListWindow, divided by separators
        for i, decision in ipairs(availableDecisionsTable) do
            --Title
            ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0) --make text black
            ImGui.SetWindowFontScale(1.3)                   -- enlarge text size
            ImGui.SetCursorPos(290 - (string.len(decision.title) * 1.7), ImGui.GetCursorPosY() + 5)
            ImGui.TextWrapped(decision.title)
            ImGui.SetWindowFontScale(1.0) -- normalize text size

            --Description
            ImGui.SetCursorPos(20, ImGui.GetCursorPosY())
            ImGui.SetWindowFontScale(1.1) -- enlarge text size
            ImGui.TextWrapped(decision.description)
            ImGui.SetWindowFontScale(1.0) -- normalize text size

            --Signature
            local dcSignature = tostring(Context.factionLeader.title .. " " .. Context.factionLeader.name .. ", " .. Context.factionLeader.location .. ", " .. Context.currentYear);
            ImGui.SetCursorPos(20, ImGui.GetCursorPosY())
            ImGui.SetWindowFontScale(1.1)                                              -- enlarge text size
            ImGui.TextWrapped(dcSignature);
            ImGui.SetWindowFontScale(1.0)                                              -- normalize text size

            tsCustomButton("##DCEnactButton" .. i, 720, ImGui.GetCursorPosY(), 64, 64,          --the "i" in the button name ensures that every button has a unique name, so it can function!
                function()
                    decision.effect()
                    print("DECISIONS TO BE INSERTED: " .. decision.dcNum)
                    insertDCtoEnactedHashSet(decision.dcNum, decision.title, decision.description, dcSignature, decision.revokeText, decision.revoke)
                    availableDecisionsTable = GetAvailableDecisionsTable(Context.playerFaction.name, enactedDecisionsHashSet);
                end,
                ButtonSound, ButtonSealTexture, decision.effectText)


            tsCustomSeparator(0, ImGui.GetCursorPosY(), 815, 30, SeparatorTexture)    
        end
        ImGui.EndChild() --DCLIstWindow end



        --view past desicions window button
        tsCustomButton("##ViewEnactedDecisions", 700, 758, 77, 57,
            function()
            openDCMain = false;
            openDCEnactedDecisions = true;
            end,
        ButtonSound, DcEnactedDecisionsButtonTexture, "View Enacted Decisions")
        

        --exit button texture
        ImGui.SetCursorPos(820, 730)
        xPos, yPos = ImGui.GetCursorPos()
        ImGui.Image(ButtonSealTexture.img, 130, 110)
        ImGui.SetCursorPos(xPos, yPos)

        --Exit button, without texture in this instance because it needed to be bigger than the button
        tsCustomButton("##DCMainExitButton", 835, 740, 100, 80,
            function()
                openDCMain = false;
                openDCEnactedDecisions = false;
            end,
            ButtonSound, nil, "Close this scroll")


        ImGui.End() --Decisions##DCMain end
    end




    --
    --------draw DC ENACTED DECISIONS WINDOW--------
    if (openDCEnactedDecisions) then


        --Main Past Decisions Main window
        ImGui.SetNextWindowSize(980, 835)
        ImGui.SetNextWindowPos(1, -3)
        openDCEnactedDecisions, shouldDraw = ImGui.Begin("Enacted Decisions##DCEnactedDecisionsMain", openDCEnactedDecisions,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove, ImGuiWindowFlags.NoBackground, ImGuiWindowFlags.NoScrollWithMouse))
        
        --main texture
        local xPos, yPos = ImGui.GetCursorPos() 
        ImGui.Image(ScrollTexture.img, 950, 835)
        ImGui.SetCursorPos(xPos, yPos)

        --Window Title
        ImGui.SetCursorPos(425, 60)
        ImGui.SetWindowFontScale(1.6)     -- enlarge text size
        ImGui.PushFont(_ScrollTitleFont)
        ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0) --make text black
        ImGui.Text("Enacted Decisions")
        ImGui.PopStyleColor()            -- removes text assigned colour from stack(imgui logic)
        ImGui.PopFont()                  -- no argument needed
        ImGui.SetWindowFontScale(1.0)     -- normalize text size



        --inner (list window) texture
        ImGui.SetCursorPos(35, 130)
        xPos, yPos = ImGui.GetCursorPos()
        ImGui.Image(InnerScrollTexture.img, 890, 640)
        ImGui.SetCursorPos(xPos, yPos)

        --Decision List Window
        ImGui.SetCursorPos(65, 144)
        ImGui.SetNextWindowBgAlpha(0.0)
        local shouldDraw = ImGui.BeginChild("Enacted Decisions##DCEnactedDecisionsListWindow", 815, 580,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove, ImGuiWindowFlags.NoBackground))



        --Enacted Decisions, divided by separators
        if (enactedDecisionsHashSet ~= nil) then
            for i, enactedDecision in pairs(enactedDecisionsHashSet) do
                --Title
                ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0) --make text black
                ImGui.SetWindowFontScale(1.3)                           -- enlarge text size
                ImGui.SetCursorPos(290 - (string.len(enactedDecisionsHashSet[i].title) * 1.7),
                    ImGui.GetCursorPosY() + 5)
                ImGui.TextWrapped(enactedDecisionsHashSet[i].title)
                ImGui.SetWindowFontScale(1.0) -- normalize text size

                --Description
                ImGui.SetCursorPos(20, ImGui.GetCursorPosY())
                ImGui.SetWindowFontScale(1.1) -- enlarge text size
                ImGui.TextWrapped(enactedDecisionsHashSet[i].description)
                ImGui.SetWindowFontScale(1.0) -- normalize text size

                --Signature
                ImGui.SetCursorPos(20, ImGui.GetCursorPosY())
                ImGui.SetWindowFontScale(1.1) -- enlarge text size
                ImGui.TextWrapped(enactedDecision.signature)
                ImGui.SetWindowFontScale(1.0) -- normalize text size

                if (enactedDecision.revokeText ~= "") then
                    tsCustomButton("##DCRevokeButton" .. i, 720, ImGui.GetCursorPosY(), 64, 64, --the "i" in the button name ensures that every button has a unique name, so it can function!
                        function()
                            enactedDecision.revoke();
                            removeDCfromEnactedHashSet(i);
                            availableDecisionsTable, enactedDecisionsHashSet = GetAvailableDecisionsTable(
                            Context.playerFaction.name, enactedDecisionsHashSet);
                        end,
                        ButtonSound, ButtonRevokeSealTexture, enactedDecision.revokeText);
                end
                tsCustomSeparator(0, ImGui.GetCursorPosY(), 815, 30, SeparatorTexture);
            end
         elseif (enactedDecisionsHashSet == nil) then
            ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0) --make text black
            ImGui.SetWindowFontScale(1.3)                           -- enlarge text size
            --ImGui.SetCursorPos(406, 290)
            ImGui.TextWrapped("No Decisions have been enacted as of now")
            ImGui.SetWindowFontScale(1.0) -- normalize text size
        end
        ImGui.EndChild()                  --DCLIstWindow end


        --view past desicions window button
        tsCustomButton("##ViewActiveDecisions", 700, 758, 77, 57,
            function()
            openDCEnactedDecisions = false;
            openDCMain = true;
            end,
        ButtonSound, DcButtonTexture, "View Available Decisions")


        --exit button texture
        ImGui.SetCursorPos(820, 730)
        xPos, yPos = ImGui.GetCursorPos()
        ImGui.Image(ButtonSealTexture.img, 130, 110)
        ImGui.SetCursorPos(xPos, yPos)

        --Exit button, without texture in this instance because it needed to be bigger than the button
        tsCustomButton("##DCEnactedExitButton", 835, 740, 100, 80,
            function()
                openDCEnactedDecisions = false;
            end,
            ButtonSound, nil, "Close this scroll")


        ImGui.End() --Decisions##DCMain end
    end




    --[[

        ----------draw FLEX WINDOW------------
    --print(OpenFlexWindow);
    if (FlexWindowStack:top() ~= nil) then
        currentFlexWindow = FlexWindowStack:top();

        ImGui.SetNextWindowSize(800, 700);
        ImGui.SetNextWindowPos(400, 300);
        shouldDraw = ImGui.Begin("FlexWindow##FLEXWindow", FlexWindowStack:top() ~= nil,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove,
                ImGuiWindowFlags.NoScrollWithMouse));

        if(FlexWindowStack:top() ~= nil) then
            --Title
            --ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0) --make text black
            --ImGui.SetWindowFontScale(1.3) -- enlarge text size
            ImGui.SetCursorPos(290 - (string.len(currentFlexWindow.title) * 1.7), ImGui.GetCursorPosY() + 5)
            ImGui.TextWrapped(currentFlexWindow.title)
            --ImGui.SetWindowFontScale(1.0) -- normalize text size

            --Description
            ImGui.SetCursorPos(20, (ImGui.GetCursorPosY() + 20))
            --ImGui.SetWindowFontScale(1.1) -- enlarge text size
            ImGui.TextWrapped(currentFlexWindow.description)
            --ImGui.SetWindowFontScale(1.0) -- normalize text size

        ImGui.SetCursorPos(20, 180)
        local shouldDraw = ImGui.BeginChild("##FlexSubWindow", 760, 400,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove))

            if currentFlexWindow.RBoptions then
                for i, option in ipairs(currentFlexWindow.RBoptions) do
                    if ImGui.RadioButton(option.name, RBselected == i) then
                        RBselected = i
                    end
                end
            end
        end
        
        -- Optionally display which one is selected
        --ImGui.Text("Selected Mode: " .. tostring(currentFlexWindow.RBoptions[RBselected].name));

        ImGui.EndChild(); --end FlexSubWindow

        tsCustomButton("##FlexButton", 660, 600, 100, 80,
            function()
                M2TWEOP.logGame(tostring(RBselected));
                currentFlexWindow.flexFunction(currentFlexWindow.RBoptions[RBselected].struct)
                FlexWindowStack:pop()
            end,
            ButtonSound, ButtonSealTexture, "Complete Action")

        ImGui.End();    --end FlexWindow
    end
    ]]
end




----------------------------------------------------------------------------------------------------------------
------------------- LOCAL FUNCTIONS ----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------



function insertDCtoEnactedHashSet(aDcNum, aTitle, aDescription, aSignature, aRevokeText, aRevoke)
    enactedDecisionsHashSet[aDcNum] = {
        title = aTitle,
        description = aDescription,
        signature = aSignature,
        revokeText = aRevokeText,
        revoke = aRevoke,
    }
end


-- remove an entry from the enacted decisions hash set
function removeDCfromEnactedHashSet(aDcNum)
    enactedDecisionsHashSet[aDcNum] = nil
end

