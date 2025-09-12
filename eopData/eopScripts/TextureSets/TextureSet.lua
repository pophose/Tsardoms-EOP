---@class TextureSet
---@field scrollTexturePath string
---@field innerScrollTexturePath string
---@field buttonSealTexturePath string
---@field buttonRevokeSealTexturePath string
---@field dcButtonTexturePath string
---@field dcEnactedDecisionsButtonTexturePath string
---@field separatorTexturePath string
local TextureSet = {
    scrollTexturePath = "",
    innerScrollTexturePath = "",
    buttonSealTexturePath = "",
    buttonRevokeSealTexturePath = "",
    dcButtonTexturePath = "",
    dcEnactedDecisionsButtonTexturePath = "",
    separatorTexturePath = "",
}

TextureSet.__index = TextureSet  -- correct metatable lookup key

---Constructor for TextureSet
---@param args table A table containing initialization values for the TextureSet fields
---@return TextureSet
function TextureSet:new(args)
    local obj = {
        scrollTexturePath = args.scrollTexturePath or "",
        innerScrollTexturePath = args.innerScrollTexturePath or "",
        buttonSealTexturePath = args.buttonSealTexturePath or "",
        buttonRevokeSealTexturePath = args.buttonRevokeSealTexturePath or "",
        dcButtonTexturePath = args.dcButtonTexturePath or "",
        dcEnactedDecisionsButtonTexturePath = args.dcEnactedDecisionsButtonTexturePath or "",
        separatorTexturePath = args.separatorTexturePath or "",
    }
    setmetatable(obj, self)
    return obj
end






return TextureSet