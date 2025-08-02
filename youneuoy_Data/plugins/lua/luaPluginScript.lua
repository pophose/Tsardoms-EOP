--luaPluginScript.lua

require('myconfigs')
require('DecisionTables')
require('TsardomsGuiFunctions')

-- Helper for managing persistence of tables across save/load
require('helpers/tableSave')

-- Uncomment to use EOP Helper functions
-- require('helpers/EopLuaHelpers')

-- Uncomment to use external debugger
-- require('helpers/mobdebug').start()

-- Our campaign config table.
campaignConfig = { ["someConfigValue"] = 5 };


-- Textures setup
local ScrollTexture = {x = 0, y = 0, img = nil}
local InnerScrollTexture = {x = 0, y = 0, img = nil}
local ButtonSealTexture = {x = 0, y = 0, img = nil}
local DcButtonTexture = {x = 0, y = 0, img = nil}
local SeparatorTexture = {x = 0, y = 0, img = nil}




-- Fires when loading a save file
function onLoadSaveFile(paths)
    campaignPopup = true

    for index, path in pairs(paths) do
        if string.find(path, "configTable.lua") then
            campaignConfig = persistence.load(path)
        elseif string.find(path, "luaenacted_decisions.lua") then
            EnactedDecisionsHashSet = persistence.load(path)
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
    persistence.store(currentPath .. "enacted_decisions.lua", EnactedDecisionsHashSet)

    savefiles[1] = currentPath .. "configTable.lua";
    savefiles[2] = currentPath .. "enacted_decisions.lua";
    return savefiles;
end


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


--- Called after loading the campaign map
function onCampaignMapLoaded() 
    GAME_DATA = gameDataAll.get()
    CAMPAIGN = GAME_DATA.campaignStruct
    STRAT_MAP = GAME_DATA.stratMap
    BATTLE = GAME_DATA.battleStruct
    UI_MANAGER = GAME_DATA.uiCardManager



    ButtonSound = M2TWEOPSounds.createEOPSound(M2TWEOP.getModPath().."\\eopData\\music\\button.ogg")
    ScrollOpenSound = M2TWEOPSounds.createEOPSound(M2TWEOP.getModPath().."\\eopData\\music\\scrollOpen.ogg")
end




--FONTS
function onLoadingFonts()
_ScrollTitleFont = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."\\eopData\\fonts\\Kingthings_Petrock_light.ttf", 32, nil, nil)
end


--------------- DECISIONS WINDOW FUCTIONS ---------------



local OpenDCButton = false  --boolean for opening DCButtonMain window
local OpenDCMain = false  --boolean for opening DCMain window


---A  window with the "DecisionsButtonMain" opens when the overview scroll is opened, which can then be clicked to access the Decisions scroll ---
---Furthermore, all backend logic for the DC scroll is handled here ---
function onScrollOpened(eventData)
        
    --TEXTURES (I would like to move this to onCampaignMapLoaded, but lazy loading prevents it)
    loadTextures(PlayerFaction, ScrollTexture, InnerScrollTexture, ButtonSealTexture, DcButtonTexture, SeparatorTexture)

    local scrollName = eventData.resourceDescription

    --debugging
    if scrollName then
        print("Scroll opened: " .. scrollName)
    else
        print("Warning: eventData.componentName is nil")
        return
    end

    --DecisionsButtonMain
    if (OpenDCButton == false and scrollName == "combined_overview_scroll") then
        OpenDCButton = true

        --GET PLAYER FACTION (in case it failed in OnLoadGame)
        PlayerFaction = tsGetPlayerFaction()

        --Get Decision Tables
        if PlayerFaction then   --if playerFaction != nil
            getSignatureInfo()
            FactionTable = GetFactionDCTable(PlayerFaction.name)  --get Full Decision Table for the faction
            ActiveDecisions = CreateActiveDecisionsTable(FactionTable)    --filter it down to only the active Decisions
        else
            print("PlayerFaction is nil - decisions UI skipped.")
        end
    end

    --DecisionsMain closing logic
    if OpenDCMain == true and (
            scrollName == "faction_ranking_scroll" or
            scrollName == "combined_listview_scroll" or
            scrollName == "college_of_cardinals_scroll" or
            scrollName == "advanced_settlement_info_scroll" or
            scrollName == "family_tree_scroll"  or
            scrollName == "building_info_scroll"

        ) then
        OpenDCMain = false
    end
end


---The  "DecisionsButtonMain" AND "DecisionsMain" window is closed when the combined_overview_scroll is closed---
function onScrollClosed(eventData)
    local scrollName = eventData.resourceDescription

    if (scrollName == "combined_overview_scroll") then OpenDCButton = false end
end




------------------- DRAW FUNCTION -------------------



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


    

    --- DECISIONS WINDOW DRAW---

    --draw DC Main Button window
    if (OpenDCButton) then -- check if window open
        ImGui.SetNextWindowSize(76, 59)
        ImGui.SetNextWindowPos(1302, 755)
        OpenDCButton, shouldDraw = ImGui.Begin("Decisions##ButtonMain", OpenDCButton,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove, ImGuiWindowFlags.NoBackground,
                ImGuiWindowFlags.NoScrollWithMouse))

        tsCustomButton("##DCButtonMain", 0, 0, 77, 57,
            function()
                OpenDCMain = not OpenDCMain
            end,
            ScrollOpenSound, DcButtonTexture, "Show decisions scroll")



        ImGui.End() --end Decisions##ButtonMain
    end

    ---draw DC MAIN WINDOW---
    if (OpenDCMain) then


        --Main Decision Window
        ImGui.SetNextWindowSize(980, 835)
        ImGui.SetNextWindowPos(1, -3    )
        OpenDCMain, shouldDraw = ImGui.Begin("Decisions##DCMain", OpenDCMain,
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
        for i, decision in ipairs(ActiveDecisions) do
            --Title
            ImGui.PushStyleColor(ImGuiCol.Text, 0.0, 0.0, 0.0, 1.0) --make text black
            ImGui.SetWindowFontScale(1.3) -- enlarge text size
            ImGui.SetCursorPos(290 - (string.len(decision.title) * 1.7), ImGui.GetCursorPosY() + 5)
            ImGui.TextWrapped(decision.title)
            ImGui.SetWindowFontScale(1.0) -- normalize text size

            --Description
            ImGui.SetCursorPos(20, ImGui.GetCursorPosY())
            ImGui.SetWindowFontScale(1.1) -- enlarge text size
            ImGui.TextWrapped(decision.description)
            ImGui.SetWindowFontScale(1.0) -- normalize text size

            --Signature
            ImGui.SetCursorPos(20, ImGui.GetCursorPosY())
            ImGui.SetWindowFontScale(1.1) -- enlarge text size
            ImGui.TextWrapped(decision.signature())
            ImGui.SetWindowFontScale(1.0) -- normalize text size

            --[[Effect Text
            ImGui.SetCursorPos(480, (ImGui.GetCursorPosY())+10)
            ImGui.PushStyleColor(ImGuiCol.Text, 0.05, 0.4, 0.05, 1.0)
            ImGui.TextWrapped(decision.effectText)
            ImGui.PopStyleColor(2)            -- removes text assigned colour from stack(imgui logic)
            ]]

            tsCustomButton("##DCEnactButton" .. i, 720, ImGui.GetCursorPosY(), 64, 64,          --the "i" in the button name ensures that every button has a unique name, so it can function!
                function()
                    decision.effect()
                    insertDCtoEnactedHashSet(decision.DCnum, tostring(decision.signature()), decision.revoke())
                    ActiveDecisions = CreateActiveDecisionsTable(FactionTable)
                end,
                ButtonSound, ButtonSealTexture, decision.effectText)


            tsCustomSeparator(0, ImGui.GetCursorPosY(), 815, 30, SeparatorTexture)    
        end
        ImGui.EndChild() --DCLIstWindow end


        --exit button texture
        ImGui.SetCursorPos(820, 730)
        xPos, yPos = ImGui.GetCursorPos()
        ImGui.Image(ButtonSealTexture.img, 130, 110)
        ImGui.SetCursorPos(xPos, yPos)

        --Exit button, without texture in this instance because it needed to be bigger than the button
        tsCustomButton("##DCMainExitButton", 835, 740, 100, 80,          
            function()
                OpenDCMain = false;
            end,
            ButtonSound, nil, "Close this scroll")


        ImGui.End() --Decisions##DCMain end
    end
end
