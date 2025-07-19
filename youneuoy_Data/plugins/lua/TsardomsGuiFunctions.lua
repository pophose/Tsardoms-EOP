--TsardomsGuiFunctions.lua
--Made by ShieldBearer
--PEACE FOREVER!

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

function ifNotNilReturn(x)
    if(x ~= nil) then
        return x
    end
end



--------------------------TS.ARDOMS GUI ELEMENTS TEMPLATES--------------------------


function tsCustomButton(buttonName, xPos, yPos, xSize, ySize, buttonFunction, buttonSound, image)
    ImGui.SetCursorPos(xPos, yPos)
    if (image) then
        ImGui.Image(image.img, xSize, ySize)
    end


    ImGui.SetCursorPos(xPos, yPos)
    ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 1, 1, 1, 0.5)     -- Transparent when hovered
    ImGui.PushStyleColor(ImGuiCol.ButtonActive, 0, 0, 0, 0.1)         -- Transparent when clicked
    pushTransparentButtonStyle()

    if ImGui.Button(buttonName, xSize, ySize) then     --generate button, and add functionality
        --print(buttonName .." clicked")
        buttonFunction()
        if buttonSound then
        --M2TWEOPSounds.playEOPSound (buttonSound)  --NOT USED IN TESTING, CAUSES CRASHES
        end
    end

    ImGui.PopStyleColor(2)
    popTransparentButtonStyle()
    
end




function tsCustomSeparator(xPos, yPos, xSize, ySize, separatorImage)
    ImGui.SetCursorPos(xPos, yPos)
        ImGui.Image(separatorImage.img, xSize, ySize)
end





--------------------------TS.ARDOMS GUI WINDOWS CACHE--------------------------



