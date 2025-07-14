

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