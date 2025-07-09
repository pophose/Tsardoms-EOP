require('myconfigs')
require('DecisionTables')

-- Helper for managing persistence of tables across save/load
require('helpers/tableSave')

-- Uncomment to use EOP Helper functions
-- require('helpers/EopLuaHelpers')

-- Uncomment to use external debugger
-- require('helpers/mobdebug').start()

-- Our campaign config table.
campaignConfig = { ["someConfigValue"] = 5 };

-- Fires when loading a save file
function onLoadSaveFile(paths)
    campaignPopup = true;

    for index, path in pairs(paths) do
        if (string.find(path, "configTable.lua"))
        then
            -- Function from helper, load saved table
            campaignConfig = persistence.load(path);
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

    savefiles[1] = currentPath .. "configTable.lua";
    return savefiles;
end

-- Fires when the plugin is first loaded at game start or restarted with restartLua()
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

    if STRAT_MAP and STRAT_MAP.game and STRAT_MAP.game.getFaction then          --get player faction's name
        PlayerFaction = STRAT_MAP.game.getFaction(0)
        print("PlayerFaction initialized: " .. tostring(PlayerFaction.name))
    else
        print("Warning: STRAT_MAP.game is nil")
    end
end


--- DECISIONS WINDOW FUCTIONS ---



OpenDCButton = false  --boolean for opening DCButtonMain window
OpenDCMain = false  --boolean for opening DCMain window



---A  window with the "DecisionsButtonMain" opens when the overview scroll is opened, which can then be clicked to access the Decisions scroll" ---
function onScrollOpened(eventData)
    local scrollName = eventData.resourceDescription

    --debugging
    if scrollName then
        print("Scroll opened: " .. scrollName)
    else
        print("Warning: eventData.componentName is nil")
        return
    end

    --DecisionsButtonMain
    if (OpenDCButton == false and scrollName == "combined_overview_scroll") then OpenDCButton = true end

    --DecisionsMain
    if OpenDCMain == true and (
            scrollName == "faction_ranking_scroll" or
            scrollName == "combined_listview_scroll" or
            scrollName == "college_of_cardinals_scroll" or
            scrollName == "advanced_settlement_info_scroll" or
            scrollName == "family_tree_scroll"
        ) then
        OpenDCMain = false
    end
end


---The  "DecisionsButtonMain" AND "DecisionsMain" window is closed when the combined_overview_scroll is closed---
function onScrollClosed(eventData)
    local scrollName = eventData.resourceDescription

    if (scrollName == "combined_overview_scroll") then OpenDCButton = false end
end



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

    --draw DC ButtonMain window
    if (OpenDCButton) then -- check if window open
        ImGui.SetNextWindowSize(100, 30)
        ImGui.SetNextWindowPos(1300, 770)
        OpenDCButton, shouldDraw = ImGui.Begin("Decisions##ButtonMain", OpenDCButton,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove))

        if ImGui.Button("Decisions##DCButtonMain") then     --generate button, and add functionality
            print("DC main Button clicked!")                --button functionality
            OpenDCMain = true;                              --same
        end

        ImGui.End()
        --print("DC scroll opened!")--
    end

    ---draw DC MAIN WINDOW---
    if (OpenDCMain) then

        --GET PLAYER FACTION (in case it failed in OnLoadGame)
            PlayerFaction = stratmap.game.getFaction (0)



        --Main Decision Window
        ImGui.SetNextWindowSize(950, 810)
        ImGui.SetNextWindowPos(10, 10)
        OpenDCMain, shouldDraw = ImGui.Begin("Decisions##DCMain", OpenDCMain,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove))

        --Window Title
        ImGui.SetCursorPos(425, 10)
        ImGui.SetWindowFontScale(1.5)     -- enlarge text size
        ImGui.Text("DECISIONS")
        ImGui.SetWindowFontScale(1.0)     -- normalize text size


        --Decision List Window
        ImGui.SetCursorPos(30, 40)
        local shouldDraw = ImGui.BeginChild("Decisions##DCListWindow", 890, 600,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove))

        if PlayerFaction then
            local factionTable = GetFactionDCTable(PlayerFaction.name)
            local activeDecisions = CreateActiveDecisionsTable(factionTable)

            --decisions are part of the DCMain window, divided by separators
            for i, decision in ipairs(activeDecisions) do
                if decision.condition() then -- Only show if the condition is met
                    ImGui.Separator()
                    ImGui.SetWindowFontScale(1.1) -- enlarge text size
                    ImGui.LabelText(decision.title)
                    ImGui.SetWindowFontScale(1.0) -- normalize text size
                    ImGui.TextWrapped(decision.description)
                    ImGui.SetCursorPos(700, ImGui.GetCursorPosY())
                    ImGui.TextColored(0.7, 1.0, 0.7, 1.0, decision.effectText)

                    ImGui.SetCursorPos(820, ImGui.GetCursorPosY())      --enact button
                    if ImGui.Button("Enact##DCEnactButton" .. i) then
                        print("Decision applied: " .. decision.title)
                        decision.effect()
                    end
                end
            end
        else
            print("PlayerFaction is nil - decisions UI skipped.")
        end
        ImGui.EndChild() --DCLIstWindow end

        --exit button
        ImGui.SetCursorPos(860, 760)
        local shouldDraw = ImGui.BeginChild("Decisions##DCMainExitButton", 0, 0,
            bit.bor(ImGuiWindowFlags.NoDecoration, ImGuiWindowFlags.NoMove))

        if ImGui.Button("EXIT##DCMainExitButton") then --generate button, and add functionality
            print("DC window closed")                  --button functionality
            OpenDCMain = false;                        --same
        end
        ImGui.EndChild()        --DCMainExitButton end
        ImGui.End()             --DCMain end
    end
end
