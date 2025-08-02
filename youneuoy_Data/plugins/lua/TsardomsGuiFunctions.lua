--TsardomsGuiFunctions.lua
--Made by ShieldBearer
--PEACE FOREVER!

-----Imgui functions-----

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
    print(x .. " is nil")
    end
end

--get player faction
function tsGetPlayerFaction()  
return stratmap.game.getFaction(0)
end



--------------------------TS.ARDOMS GUI ELEMENTS TEMPLATES--------------------------


function tsCustomButton(buttonName, xPos, yPos, xSize, ySize, buttonFunction, buttonSound, image, tooltip)
    ImGui.SetCursorPos(xPos, yPos)
    if (image ~= nil) then
        --print(image.img)
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




function tsCustomSeparator(xPos, yPos, xSize, ySize, separatorImage)
    ImGui.SetCursorPos(xPos, yPos)
        ImGui.Image(separatorImage.img, xSize, ySize)
end





--------------------------TS.ARDOMS GUI TEXTURE LOADING CACHE--------------------------


---load faction specific gui textures
function loadTextures(PlayerFaction, ScrollTexture, InnerScrollTexture, ButtonSealTexture, DcButtonTexture, SeparatorTexture)
    if not PlayerFaction or not PlayerFaction.name then
        print("Error: Invalid PlayerFaction provided.")
        return
    end

    local factionKey = FactionToTable[tostring(PlayerFaction.name)]
    if factionKey == nil then
        print("Warning: No texture set found for faction '" .. tostring(PlayerFaction.name) .. "'")
        return
    end

    local texSet = factionKey.textureSet
    if not texSet then
        print("Warning: Texture set missing for faction '" .. PlayerFaction.name .. "'")
        return
    end

    print("Using textureSet for faction:", factionKey.name)

    ScrollTexture.x, ScrollTexture.y, ScrollTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.scrollTexturePath)

    InnerScrollTexture.x, InnerScrollTexture.y, InnerScrollTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.innerScrollTexturePath)

    ButtonSealTexture.x, ButtonSealTexture.y, ButtonSealTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.buttonSealTexturePath)

    DcButtonTexture.x, DcButtonTexture.y, DcButtonTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.dcButtonTexturePath)

    SeparatorTexture.x, SeparatorTexture.y, SeparatorTexture.img =
        M2TWEOP.loadTexture(M2TWEOP.getModPath() .. texSet.separatorTexturePath)
end



--------------------------TS.ARDOMS SAVE DATA FUNCTIONS--------------------------

