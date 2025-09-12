--TsardomsGuiFunctions.lua
--Made by ShieldBearer
--PEACE FOREVER!

----- general Imgui functions-----

function pushTransparentButtonStyle()
    ImGui.PushStyleColor(ImGuiCol.Button, 0, 0, 0, 0)
    ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 1, 1, 1, 0.08)
    ImGui.PushStyleColor(ImGuiCol.ButtonActive, 0, 0, 0, 0.1)
    ImGui.PushStyleVar(ImGuiStyleVar.FramePadding, 0, 0)
end

function popTransparentButtonStyle()
    ImGui.PopStyleVar()
    ImGui.PopStyleColor(3)
end


-----Logic functions-----


--check for nil value to prevent errors and crashes, very helpful in debugging
function ifNotNilReturn(x)
    if(x ~= nil) then
        return x
    else
    M2TWEOP.logGame(x .. " is nil");
    end
end

-- LEGACY get player faction
function tsGetPlayerFaction()
return stratmap.game:getFaction(0)
end

--generate a random string
function randomString(length)
    local chars = 'abcdefghijklmnopqrstuvwxyz'
    local result = ''
    for i = 1, length do
        local randIndex = math.random(1, #chars)
        result = result .. string.sub(chars, randIndex, randIndex)
    end
    return result
end

--Get faction leader info
function getSignatureCharacterInfo()
    local factionLeader = {
        name = "",
        location = "",
    };

    local faction = M2TW.campaign:getFactionByOrder(0);
    local stratMap = M2TW.stratMap;
    ---@type character
    local leaderStruct = faction:getCharacter(0);
    factionLeader.name = leaderStruct.characterRecord.fullName;
    factionLeader.location = M2TW.stratMap.getRegion(leaderStruct.regionID):getSettlement(0).localizedName;
    --factionLeader.location = string.gsub(factionLeader.location, "_Region", "")

    return factionLeader;
end

--get the current game date
function getCurrentYear()
    return math.floor(M2TW.campaign.currentDate);
end
--------------------------Flex Window Manipulation--------------------------

--[[
-- Push a new window onto the stack
function FlexWindowStack:push(window)
    table.insert(self.stack, window)
end

-- Pop the top window from the stack
function FlexWindowStack:pop()
    return table.remove(self.stack)
end

-- Get the current (top) window
function FlexWindowStack:top()
    return self.stack[#self.stack]
end
]]

--------------------------TS.ARDOMS GUI ELEMENTS TEMPLATES--------------------------


--custom button, with sound(may be disabled, check inside) and a texture.
function tsCustomButton(buttonName, xPos, yPos, xSize, ySize, buttonFunction, buttonSound, image, tooltip)
    ImGui.SetCursorPos(xPos, yPos)
    if (image ~= nil) then
        ImGui.Image(image.img, xSize, ySize)
    end


    ImGui.SetCursorPos(xPos, yPos)
    ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 1, 1, 1, 0.5)     
    ImGui.PushStyleColor(ImGuiCol.ButtonActive, 0, 0, 0, 0.1)         
    pushTransparentButtonStyle()

    if ImGui.Button(buttonName, xSize, ySize) then     --generate button, and add functionality
        --print(buttonName .." clicked")
        buttonFunction()
        if buttonSound then
        --M2TWEOPSounds.playEOPSound (buttonSound)  --SHOULD NOT BE USED WHILE TESTING, CAUSES CRASHES
        end
    end

    if (tooltip) then
        --tooltip for the button
        if ImGui.IsItemHovered() then
            ImGui.PushStyleColor(ImGuiCol.PopupBg, 0.1, 0.1, 0.1, 0.65)  -- RGBA Background
            ImGui.PushStyleColor(ImGuiCol.Text, 1.0, 0.95, 0.55, 1.0)   -- RGBA Text
            ImGui.BeginTooltip()
            ImGui.Text(tooltip)
            ImGui.EndTooltip()
        end
    end

    ImGui.PopStyleColor(4)
    popTransparentButtonStyle()
end



--Just a long image used as a separator, Could be used to print out a regular image too :/
function tsCustomSeparator(xPos, yPos, xSize, ySize, separatorImage)
    ImGui.SetCursorPos(xPos, yPos)
        ImGui.Image(separatorImage.img, xSize, ySize)
end




--------------------------TS.ARDOMS ENACTED DECISIONS HASH SET--------------------------




--------------------------TS.ARDOMS SAVE DATA FUNCTIONS--------------------------

