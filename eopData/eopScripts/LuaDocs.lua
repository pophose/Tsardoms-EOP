---@diagnostic disable: missing-return, lowercase-global
---Basic M2TWEOP table
---@class M2TWEOP
M2TWEOP = { 

}

---Function to return the path to the mod folder, starts from the drive not the game folder.
---@return string mod path
function M2TWEOP.getModPath() end 

---Get the name of the mod folder.
---@return string mod path
function M2TWEOP.getModFolderName() end 

---Open/close the lua console.
function M2TWEOP.toggleConsole() end 

---Toggle developer mode.
function M2TWEOP.toggleDeveloperMode() end 

---Reload the lua script (without restarting the plugin itself, onPluginLoad doesn't fire).
function M2TWEOP.reloadScript() end 

---Restart the lua plugin (onPluginLoad fires).
function M2TWEOP.restartLua() end 

---Save the game.
---@param path string (start from mods)
function M2TWEOP.saveGame(path) end 

---Get an ancillary by name.
---@param name string 
---@return ancillary anc 
function M2TWEOP.getAncillary(name) end 

---Get an ancillary by index.
---@param index integer 
---@return ancillary anc 
function M2TWEOP.getAncillaryByIndex(index) end 

---Get ancillary count.
---@return integer ancNum 
function M2TWEOP.getAncillaryCount() end 

---Get a trait by name.
---@param name string 
---@param trait traitEntry 
function M2TWEOP.getTrait(name, trait) end 

---Get a trait by index.
---@param index integer 
---@return traitEntry trait 
function M2TWEOP.getTraitByIndex(index) end 

---Get trait count.
---@return integer traitNum 
function M2TWEOP.getTraitCount() end 

---Copy a file.
---@param from string 
---@param to string 
function M2TWEOP.copyFile(from, to) end 

---Set a string in expanded string table.
---@param key string 
---@param value string 
function M2TWEOP.setExpandedString(key, value) end 

---Function to get the game version.
---@return integer gamever (1 = disk 2 = steam)
function M2TWEOP.getGameVersion() end 

---Set perfect spy.
---@param set boolean 
function M2TWEOP.setPerfectSpy(set) end 

---Get local faction ID.
---@return integer localFaction 
function M2TWEOP.getLocalFactionID() end 

---Function to return the path to the plugin (location of your LUA files).
---@return string plugin path
function M2TWEOP.getPluginPath() end 

---Log something to the game log.
---@param message string 
function M2TWEOP.logGame(message) end 

---Load a savegame.
---@param path string starting from mods
function M2TWEOP.loadGame(path) end 

---Load d3d texture
---@param path string full path to texture
---@return integer x size of the image
---@return integer y size of the image
---@return integer id of the image
function M2TWEOP.loadTexture(path) end 

---Unload d3d texture
---@param id integer of the image
function M2TWEOP.unloadTexture(id) end 

---Sets the limit of ancillaries per character on the stratmap.
---@param newLimit integer default: 8, maximum: 127
function M2TWEOP.setAncillariesLimit(newLimit) end 

---Unlocks all console commands, also allows the use of the 'control' command to change factions in singleplayer campaigns.
function M2TWEOP.unlockGameConsoleCommands() end 

---Sets the maximum amount of soldiers a general's bodyguard unit can replenish to. The value is multiplied by the unit size modifiers (e.g Huge = 2.5 multiplier)
---@param newSize integer 
function M2TWEOP.setMaxBgSize(newSize) end 

---Sets the new maximum soldier count.
---@param minSize integer maximum: 300
---@param maxSize integer maximum: 300
function M2TWEOP.setEDUUnitsSize(minSize, maxSize) end 

---Gets a struct containing color information about the settlement info scroll.
---@return settlementInfoScroll infoScroll 
function M2TWEOP.getSettlementInfoScroll() end 

---* Sets the new maximum amount of building levels within a chain.
---@param limit integer default: 9, maximum: 56
function M2TWEOP.setBuildingChainLimit(limit) end 

---* Sets which level of castle converts to which level of city.
---@param castleLvl integer 0-5
---@param convertToLvl integer 0-6, 6 means conversion from that level is disabled
function M2TWEOP.setConversionLvlFromCastle(castleLvl, convertToLvl) end 

---* Sets which level of city converts to which level of castle.
---@param cityLvl integer 0-5
---@param convertToLvl integer 0-6, 6 means conversion from that level is disabled
function M2TWEOP.setConversionLvlFromCity(cityLvl, convertToLvl) end 

---* Sets the minimum number of turns until the next guild offer after a rejection by the player.
---@param turns integer default: 10
function M2TWEOP.setGuildCooldown(turns) end 

---Toggle the highlighting of units on the tactical map.
function M2TWEOP.toggleUnitsBMapHighlight() end 

---Get the current x, y and z coords of the battlemap camera
---@return battleCameraStruct Camera struct
function M2TWEOP.getBattleCamCoords() end 

---Set the maximum number of religions in the mod (per descr\_religions.txt). Do not use religions > 10 in CombatVsReligion attributes!
---@param newLimit integer maximum: 127
function M2TWEOP.setReligionsLimit(newLimit) end 

---Set the siege points required to make different siege equipment.
---@param equipmentType integer 0 = ram, 1 = ladder, 2 = siege tower
---@param newCost integer 
function M2TWEOP.setEquipmentCosts(equipmentType, newCost) end 

---Checks if a tile is free.
---@param X integer coordinate of the tile.
---@param Y integer coordinate of the tile.
function M2TWEOP.isTileFree(X, Y) end 

---Get the hovered tile coordinates on the strategy map.
---@return integer x 
---@return integer y 
function M2TWEOP.getStratHoveredCoords() end 

---Get the hovered position coordinates on the battle map.
---@return number x 
---@return number y 
---@return number z 
function M2TWEOP.getBattleHoveredCoords() end 

---Get a specific tile's visibility according to faction (i.e can a faction see a tile) Note: Once the tile has been seen by a faction, it will always return true. e.g If you have spotted a settlement but it is now outside of the fog of war, it will still be classed as visible.
---@param faction factionStruct Faction to check
---@param xCoord integer x coord of the tile
---@param yCoord integer y coord of the tile
---@return boolean isVisible true = visible, false = not visible
function M2TWEOP.getTileVisibility(faction, xCoord, yCoord) end 

---Get religion name by index.
---@param index integer 
---@return string name 
function M2TWEOP.getReligionName(index) end 

---Get the amount of religions.
---@return integer religionCount 
function M2TWEOP.getReligionCount() end 

---Get culture name by index.
---@param index integer 
---@return string name 
function M2TWEOP.getCultureName(index) end 

---Get climate name by index.
---@param index integer 
---@return string name 
function M2TWEOP.getClimateName(index) end 

---Get religion ID by name.
---@param name string 
---@return integer index 
function M2TWEOP.getReligion(name) end 

---Get culture ID by name.
---@param name string 
---@return integer index 
function M2TWEOP.getCultureID(name) end 

---Get climate ID by name.
---@param name string 
---@return integer index 
function M2TWEOP.getClimateID(name) end 

---Get some game options.
---@return options1 options 
function M2TWEOP.getOptions1() end 

---Get some game options.
---@return options2 options 
function M2TWEOP.getOptions2() end 

---Get the campaign difficulty modifiers.
---@return campaignDifficulty1 options 
function M2TWEOP.getCampaignDifficulty1() end 

---Get the campaign difficulty modifiers.
---@return campaignDifficulty2 options 
function M2TWEOP.getCampaignDifficulty2() end 

---Get the campaign options.
---@return campaignDb options 
function M2TWEOP.getCampaignDb() end 

---Get the campaign options.
---@return campaignDbExtra options 
function M2TWEOP.getCampaignDbExtra() end 

---Add a new .cas campaign strategy model to the game with a unique ID. This should be called during onPluginLoad()
---@param path string Relative path from the modfolder (starting with "data/").
---@param modelId integer Unique ID to use the model later.
---@param isSettlement boolean? optional
function M2TWEOP.addModelToGame(path, modelId, isSettlement) end 

---Check game condition.
---@param condition string 
---@param eventData eventTrigger|nil? 
---@return boolean isTrue 
function M2TWEOP.condition(condition, eventData) end 

---Calculate movement point cost between two adjacent tiles.
---@param originX integer 
---@param originY integer 
---@param targetX integer only adjacent tiles! Does not calculate paths just the cost of moving from one tile to another.
---@param targetY integer only adjacent tiles! Does not calculate paths just the cost of moving from one tile to another.
---@return number moveCost 
function M2TWEOP.getTileMoveCost(originX, originY, targetX, targetY) end 

---Set the strategy model for object at specified coordinates, works only for supported object types
---@param xCoord integer 
---@param yCoord integer 
---@param modelId integer used for: watchtower, resource, settlement, fort, port
---@param modelId2 integer used for: fort wall (use fort coords), dock (use port coords)
function M2TWEOP.setModel(xCoord, yCoord, modelId, modelId2) end 

---Execute a Medieval II console command.
---@param command string 
---@param args string? 
---@return string error Note: string can be empty but not nil
function M2TWEOP.callConsole(command, args) end 

---Set an event\_counter value, does not work for counters, only event\_counters.
---@param counterName string 
---@param value integer 
function M2TWEOP.setScriptCounter(counterName, value) end 

---Get a script counter value, works for counters and for event\_counters
---@param counterName string The name of the counter
---@return integer counterValue Returns the value of the counter
function M2TWEOP.getScriptCounter(counterName) end 

---Get AI config.
---@return eopAiConfig config 
function M2TWEOP.getEopAiConfig() end 

---Get a rebel faction.
---@param name string 
---@return eopRebelFaction rebelFac 
function M2TWEOP.getRebelFaction(name) end 

---Get a faction record.
---@param factionID integer 
---@return factionRecord facRecord 
function M2TWEOP.getFactionRecord(factionID) end 

---Get amount of factions in descr_sm_factions.
---@return integer facNum 
function M2TWEOP.getFactionRecordNum() end 

---Hides tooltips for unknown units, only use if you use empty card instead of question mark as the UI. Disabled by default.
---@param set boolean 
function M2TWEOP.hideUnknownUnitTooltips(set) end 

---Recalculates frontier tiles for the AI using EOP algorithms.
---@param set boolean 
function M2TWEOP.useEopFrontiers(set) end 

---Faction specific unit cards are always chosen if found. Enabled by default.
---@param set boolean 
function M2TWEOP.handleUnitCards(set) end 

---Set watchtower range. Default: 10.
---@param newRange integer 
function M2TWEOP.setWatchTowerRange(newRange) end 

---Factions without a family tree or a teutonic one still get marriage offers and produce children. Enabled by default.
---@param set boolean 
function M2TWEOP.enableFamilyEventsWithoutTree(set) end 

---Change color of default khaki text.
---@param r integer 
---@param g integer 
---@param b integer 
function M2TWEOP.setKhakiTextColor(r, g, b) end 

---Get modifiers for minor settlements for income and growth.
---@return minorSettlementBalance modifiers 
function M2TWEOP.getMinorSettlementBalance() end 

---Generate sprites for a battle model entry in the bmdb. There needs to be a export/unit_sprites folder in your vanilla Medieval II directory. The game will close after generating the sprites.
---@param modelName string 
function M2TWEOP.generateSprite(modelName) end 

---Get the move cost of a ground type.
---@param groundType integer 
---@return number moveCost 
function M2TWEOP.getGroundTypeMoveCost(groundType) end 

---Set the move cost of a ground type.
---@param groundType integer 
---@param moveCost number 
function M2TWEOP.setGroundTypeMoveCost(groundType, moveCost) end 

---Add a banner symbol. Add them onCampaignMapLoaded or later!
---@param name string 
---@param filePath string starting from mods, path to the tga file containing the symbol. You need to add this file to descr_standards.txt so the game loads it!
---@param topLeftX number As percentage of the picture width, for example 0.5 for the middle
---@param topLeftY number As percentage of the picture width, for example 0.5 for the middle
---@param bottomRightX number As percentage of the picture width, for example 0.5 for the middle
---@param bottomRightY number As percentage of the picture width, for example 0.5 for the middle
function M2TWEOP.addBanner(name, filePath, topLeftX, topLeftY, bottomRightX, bottomRightY) end 

---Fire any script command available from the game. It is always just 2 parameters in the function, the command name and all the arguments as 1 string in the second parameter.
---Do not use inc_counter, set_counter, declare_counter! they crash!
---@param command string 
---@param args string? 
function M2TWEOP.scriptCommand(command, args) end 

---Global game structures.
---@class M2TW
M2TW = { 

    ---@type battleStruct
    battle = nil,

    ---@type campaignStruct
    campaign = nil,

    ---@type uiCardManager
    uiCardManager = nil,

    ---@type stratMap
    stratMap = nil,

    ---@type selectionInfo
    selectionInfo = nil,

}

---Basic M2TWEOPSounds table. Contains descriptions of M2TWEOP sound features.
---Attention! You can use 256 sounds max.
---It supports the following audio formats:
---- WAV
---- OGG/Vorbis
---- FLAC
---You can play many sounds at the same time.
---It should be used for small sounds that can fit in memory. It's not recommended to use this for playing larger sounds like music.
---@class M2TWEOPSounds
M2TWEOPSounds = { 

}

---Create (and load) a new sound.
---@param soundPath string Path to sound file
---@return integer soundID ID that will be used by this sound. Returns nil if the sound can't load..
function M2TWEOPSounds.createEOPSound(soundPath) end 

---Delete a sound
---@param soundID integer ID of the sound that you want to delete.
function M2TWEOPSounds.deleteEOPSound(soundID) end 

---Play a sound.
---@param soundID integer ID of the sound that you want to play.
function M2TWEOPSounds.playEOPSound(soundID) end 

---Set a sound's playing offset. i.e Skip a certain number of milliseconds of the beginning of the sound.
---@param soundID integer ID of the sound.
---@param millisecondsOffset integer New playing position, from the beginning of the sound.
function M2TWEOPSounds.setEOPSoundOffset(soundID, millisecondsOffset) end 

---Get a sound's playing offset.
---@param soundID integer ID of the sound.
---@return integer millisecondsOffset Playing position, from the beginning of the sound.
function M2TWEOPSounds.getEOPSoundOffset(soundID) end 

---Pause a sound that is playing.
---@param soundID integer ID of the sound that you want to pause.
function M2TWEOPSounds.pauseEOPSound(soundID) end 

---Stop a sound that is playing.
---@param soundID integer ID of the sound that you want to stop.
function M2TWEOPSounds.stopEOPSound(soundID) end 

---Basic M2TWEOPFBX table. Contains descriptions of m2tweop fbx feathures.
---@class M2TWEOPFBX
M2TWEOPFBX = { 

}

---Load a new fbx model.
---@param modelPath string Path to .fbx file.
---@param texturePath string Path to .dds file
---@param modelID integer ID to be used for this model.
function M2TWEOPFBX.addFbxModel(modelPath, texturePath, modelID) end 

---Delete a fbx model.
---@param modelID integer Model's ID that was specified when calling addFbxModel()
function M2TWEOPFBX.deleteFbxModel(modelID) end 

---Get an added fbx model by it's ID.
---@param modelID integer Model's ID that was specified when calling addFbxModel()
---@return fbxModel fbx model, not it`s ID!
function M2TWEOPFBX.getFbxModel(modelID) end 

---Create new fbx object with our previously loaded model. It can be placed on map, etc.
---@param modelID integer Model's ID that was specified when calling addFbxModel()
---@param objectID integer The ID that the object should use
---@return fbxObject The newly created FBX object (not it's ID)
function M2TWEOPFBX.addFbxObject(modelID, objectID) end 

---Delete an fbx object.
---@param object fbxObject The created FBX object (not it's ID)
function M2TWEOPFBX.deleteFbxObject(object) end 

---Get an fbx object by it's ID.
---@param int objectID The ID of the FBX object you wish to retrieve
---@return fbxObject The created FBX object (not it's ID)
function M2TWEOPFBX.getFbxObject(int) end 

---Set an fbx object's coordinates.
---@param fbx fbxObject object
---@param x number coord
---@param y number coord
---@param z number coord
function M2TWEOPFBX.setFbxObjectCoords(fbx, x, y, z) end 

---Get an fbx object's coordinates.
---@param fbx fbxObject object
---@return number x coord
---@return number y coord
---@return number z coord
function M2TWEOPFBX.getFbxObjectCoords(fbx) end 

---Set an fbx object's size modifier.
---@param fbx fbxObject object
---@param sizeModifier number object size modifier
function M2TWEOPFBX.setFbxObjectSize(fbx, sizeModifier) end 

---Get an fbx object's size modifier.
---@param fbx fbxObject object
---@return number sizeModifier object size modifier
function M2TWEOPFBX.getFbxObjectSize(fbx) end 

---Set an fbx object's draw state.
---@param fbx fbxObject object
---@param is boolean draw needed
function M2TWEOPFBX.setFbxObjectDrawState(fbx, is) end 

---Get an fbx object's draw state.
---@param fbx fbxObject object
---@return boolean is draw needed
function M2TWEOPFBX.getFbxObjectDrawState(fbx) end 

---Set an fbx object's animation state.
---@param fbx fbxObject object
---@param is boolean animation needed
function M2TWEOPFBX.setFbxObjectAnimState(fbx, is) end 

---Get an fbx object's animation state.
---@param fbx fbxObject object
---@return boolean is animation needed
function M2TWEOPFBX.getFbxObjectAnimState(fbx) end 

---Set fbx object draw type, i.e. on what part of the game it is drawn.
---Can be:
---1 - Strategy Map
---2 - Tactical/Battle Map
---0 - Both
---Default value - 1
---@param fbx fbxObject object
---@param current integer draw type
function M2TWEOPFBX.setFbxObjectDrawType(fbx, current) end 

---Get fbx object draw type, i.e. on what part of game it is drawn.
---Can be:
---1 - Strategy Map
---2 - Tactical/Battle Map
---0 - Both
---Default value - 1
---@param fbx fbxObject object
---@return integer current draw type
function M2TWEOPFBX.getFbxObjectDrawType(fbx) end 

---Basic M2TWEOP3dObjects table. Contains descriptions of m2tweop simple 3d objects feathures. Not call this functions onPluginLoad(graphics system not initialized here yet).
---@class M2TWEOP3dObjects
M2TWEOP3dObjects = { 

}

---Create new 3d text font. Fonts using for creating text(you not need font after it)
---@param fontName string name of font
---@param weight integer? weight of font(optional). Default - 400
---@param isItalic boolean? is font italic(optional). Default - true
---@return integer fondID ID of created font.
function M2TWEOP3dObjects.makeTextFont(fontName, weight, isItalic) end 

---Delete 3d text font. Do it where not need anymore
---@param fondID integer ID of created font.
function M2TWEOP3dObjects.deleteTextFont(fondID) end 

---Create line of 3d text.
---@param fondID integer ID of created font.
---@param text string utf8 string with text.
---@return eop3dText text utf8 string with text.
function M2TWEOP3dObjects.make3dText(fondID, text) end 

---3d text object. Not use it onPluginLoad(graphics system not initialized here yet).
---@class eop3dText
eop3dText = { 

    ---default value 1
    ---@type number
    xSize = nil,

    ---default value 0.2
    ---@type number
    ySize = nil,

    ---default value 1
    ---@type number
    zSize = nil,

    ---default value 1
    ---@type number
    xRoll = nil,

    ---default value 90
    ---@type number
    yRoll = nil,

    ---default value 1
    ---@type number
    zRoll = nil,

    ---@type number
    xCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type number
    zCoord = nil,

}

---Scale 3d text.
---@param sizeMultiplier number 
function eop3dText:scale(sizeMultiplier) end 

---Set 3d text color.
---@param a integer 
---@param r integer 
---@param g integer 
---@param b integer 
function eop3dText:changeColor(a, r, g, b) end 

---Set 3d text coords.
---@param x number 
---@param y number 
---@param z number 
function eop3dText:setCoords(x, y, z) end 

---Start draw text. Text go on display until stop function called
function eop3dText:startDrawing() end 

---Stop draw text.
function eop3dText:stopDrawing() end 

---Draw text once(at one frame only). Can be called in draw loop. Not need call stop after it.
function eop3dText:drawOnce() end 

---Delete text. Not use after it!
function eop3dText:delete() end 

---Enum with a list of types of diplomatic relations.
---@enum dipRelType
dipRelType = { 

    ---@type integer
    war = nil,

    ---@type integer
    peace = nil,

    ---@type integer
    alliance = nil,

    ---@type integer
    suzerain = nil,

    ---(Doesn't work with trade rights agreements set at game start)
    ---@type integer
    trade = nil,

}

---Enum with a list of types of unit battle properties.
---@enum unitBattleProperties
unitBattleProperties = { 

    ---@type integer
    guardMode = nil,

    ---@type integer
    fireAtWill = nil,

    ---@type integer
    skirmish = nil,

}

---Enum with a list of types of building capabilities.
---@enum buildingCapability
buildingCapability = { 

    ---@type integer
    population_growth_bonus = 0,

    ---@type integer
    population_loyalty_bonus = 1,

    ---@type integer
    population_health_bonus = 2,

    ---@type integer
    trade_base_income_bonus = 3,

    ---@type integer
    trade_level_bonus = 4,

    ---@type integer
    trade_fleet = 5,

    ---@type integer
    taxable_income_bonus = 6,

    ---@type integer
    mine_resource = 7,

    ---@type integer
    farming_level = 8,

    ---@type integer
    road_level = 9,

    ---@type integer
    gate_strength = 10,

    ---@type integer
    gate_defences = 11,

    ---@type integer
    wall_level = 12,

    ---@type integer
    tower_level = 13,

    ---@type integer
    armour = 14,

    ---@type integer
    stage_games = 15,

    ---@type integer
    stage_races = 16,

    ---@type integer
    fire_risk = 17,

    ---@type integer
    weapon_melee_simple = 18,

    ---@type integer
    weapon_melee_blade = 19,

    ---@type integer
    weapon_missile_mechanical = 20,

    ---@type integer
    weapon_missile_gunpowder = 21,

    ---@type integer
    weapon_artillery_mechanical = 22,

    ---@type integer
    weapon_artillery_gunpowder = 23,

    ---@type integer
    weapon_naval_gunpowder = 24,

    ---@type integer
    upgrade_bodyguard = 25,

    ---@type integer
    recruits_morale_bonus = 26,

    ---@type integer
    recruits_exp_bonus = 27,

    ---@type integer
    happiness_bonus = 28,

    ---@type integer
    law_bonus = 29,

    ---@type integer
    construction_cost_bonus_military = 30,

    ---@type integer
    construction_cost_bonus_religious = 31,

    ---@type integer
    construction_cost_bonus_defensive = 32,

    ---@type integer
    construction_cost_bonus_other = 33,

    ---@type integer
    construction_time_bonus_military = 34,

    ---@type integer
    construction_time_bonus_religious = 35,

    ---@type integer
    construction_time_bonus_defensive = 36,

    ---@type integer
    construction_time_bonus_other = 37,

    ---@type integer
    construction_cost_bonus_wooden = 38,

    ---@type integer
    construction_cost_bonus_stone = 39,

    ---@type integer
    construction_time_bonus_wooden = 40,

    ---@type integer
    construction_time_bonus_stone = 41,

    ---@type integer
    free_upkeep = 42,

    ---@type integer
    pope_approval = 43,

    ---@type integer
    pope_disapproval = 44,

    ---@type integer
    religion_level = 45,

    ---@type integer
    amplify_religion_level = 46,

    ---@type integer
    archer_bonus = 47,

    ---@type integer
    cavalry_bonus = 48,

    ---@type integer
    heavy_cavalry_bonus = 49,

    ---@type integer
    gun_bonus = 50,

    ---@type integer
    navy_bonus = 51,

    ---@type integer
    recruitment_cost_bonus_naval = 52,

    ---@type integer
    retrain_cost_bonus = 53,

    ---@type integer
    weapon_projectile = 54,

    ---@type integer
    income_bonus = 55,

    ---@type integer
    recruitment_slots = 56,

}

---Enum with a list of character types.
---@enum characterType
characterType = { 

    ---@type integer
    spy = 0,

    ---@type integer
    assassin = 1,

    ---@type integer
    diplomat = 2,

    ---@type integer
    admiral = 3,

    ---@type integer
    merchant = 4,

    ---@type integer
    priest = 5,

    ---@type integer
    general = 6,

    ---@type integer
    named_character = 7,

    ---@type integer
    princess = 8,

    ---@type integer
    heretic = 9,

    ---@type integer
    witch = 10,

    ---@type integer
    inquisitor = 11,

    ---@type integer
    pope = 13,

}

---Enum with a character death types.
---@enum deathType
deathType = { 

    ---@type integer
    alive = 0,

    ---@type integer
    diedNatural = 1,

    ---@type integer
    diedInDisaster = 2,

    ---@type integer
    diedInBattle = 3,

    ---@type integer
    assassinated = 4,

    ---@type integer
    executed = 5,

    ---@type integer
    executedPrisoner = 6,

    ---@type integer
    poisoned = 7,

    ---@type integer
    plague = 8,

    ---@type integer
    starvation = 9,

    ---@type integer
    captainRemoval = 10,

    ---@type integer
    removedForRetraining = 11,

    ---@type integer
    incompatibleFaction = 12,

    ---@type integer
    bribed = 13,

    ---@type integer
    disbanded = 14,

    ---@type integer
    sunk = 15,

    ---@type integer
    married = 16,

    ---@type integer
    acquired = 17,

    ---@type integer
    retired = 18,

    ---@type integer
    disgraced = 19,

    ---@type integer
    denounced = 20,

}

---Enum with a list of army sort types.
---@enum sortType
sortType = { 

    ---@type integer
    eduType = 1,

    ---@type integer
    category = 2,

    ---@type integer
    class = 3,

    ---@type integer
    soldierCount = 4,

    ---@type integer
    experience = 5,

    ---@type integer
    categoryClass = 6,

    ---@type integer
    aiUnitValue = 7,

}

---Enum with a list of GTA AI plans.
---@enum aiPlan
aiPlan = { 

    ---@type integer
    doNothing = 0,

    ---@type integer
    attackAll = 1,

    ---@type integer
    defend = 2,

    ---@type integer
    defendFeature = 3,

    ---@type integer
    hide = 4,

    ---@type integer
    ambush = 5,

    ---@type integer
    scout = 6,

    ---@type integer
    withdraw = 7,

    ---@type integer
    attackSettlement = 8,

    ---@type integer
    defendSettlement = 9,

    ---@type integer
    sallyOut = 10,

}

---Enum with a list of GTA AI objectives.
---@enum aiObjective
aiObjective = { 

    ---@type integer
    invalid = 0,

    ---@type integer
    moveToPoint = 1,

    ---@type integer
    attackEnemyBattleGroup = 2,

    ---@type integer
    defendTerrainHill = 3,

    ---@type integer
    defendTerrainForest = 4,

    ---@type integer
    defendTerrainArea = 5,

    ---@type integer
    defendCrossing = 6,

    ---@type integer
    assaultCrossing = 7,

    ---@type integer
    defendLine = 8,

    ---@type integer
    scout = 9,

    ---@type integer
    withdraw = 10,

    ---@type integer
    defendSettlement = 11,

    ---@type integer
    supportDefendSettlement = 12,

    ---@type integer
    attackSettlement = 13,

    ---@type integer
    skirmish = 14,

    ---@type integer
    bombard = 15,

    ---@type integer
    attackModel = 16,

    ---@type integer
    sallyOut = 17,

    ---@type integer
    ambush = 18,

}

---Enum with a list of resources.
---@enum resourceType
resourceType = { 

    ---@type integer
    gold = 0,

    ---@type integer
    silver = 1,

    ---@type integer
    fish = 2,

    ---@type integer
    furs = 3,

    ---@type integer
    grain = 4,

    ---@type integer
    timber = 5,

    ---@type integer
    iron = 6,

    ---@type integer
    ivory = 7,

    ---@type integer
    wine = 8,

    ---@type integer
    slaves = 9,

    ---@type integer
    chocolate = 10,

    ---@type integer
    marble = 11,

    ---@type integer
    textiles = 12,

    ---@type integer
    dyes = 13,

    ---@type integer
    tobacco = 14,

    ---@type integer
    silk = 15,

    ---@type integer
    sugar = 16,

    ---@type integer
    sulfur = 17,

    ---@type integer
    tin = 18,

    ---@type integer
    spices = 19,

    ---@type integer
    cotton = 20,

    ---@type integer
    amber = 21,

    ---@type integer
    coal = 22,

    ---@type integer
    wool = 23,

    ---@type integer
    elephants = 24,

    ---@type integer
    camels = 25,

    ---@type integer
    dogs = 26,

    ---@type integer
    generic = 27,

}

---Enum of unit morale status.
---@enum moraleStatus
moraleStatus = { 

    ---@type integer
    berserk = 0,

    ---@type integer
    impetuous = 1,

    ---@type integer
    high = 2,

    ---@type integer
    firm = 3,

    ---@type integer
    shaken = 4,

    ---@type integer
    wavering = 5,

    ---@type integer
    routing = 6,

}

---Enum of unit discipline.
---@enum unitDiscipline
unitDiscipline = { 

    ---@type integer
    berserker = 0,

    ---@type integer
    impetuous = 1,

    ---@type integer
    low = 2,

    ---@type integer
    normal = 3,

    ---@type integer
    disciplined = 4,

}

---Enum of unit training.
---@enum unitTraining
unitTraining = { 

    ---@type integer
    untrained = 0,

    ---@type integer
    trained = 1,

    ---@type integer
    highly_trained = 2,

}

---Enum of unit combat status.
---@enum combatStatus
combatStatus = { 

    ---@type integer
    notInCombat = 0,

    ---@type integer
    victoryCertain = 1,

    ---@type integer
    victoryAlmostCertain = 2,

    ---@type integer
    victoryDistinct = 3,

    ---@type integer
    balanced = 4,

    ---@type integer
    defeatDistinct = 5,

    ---@type integer
    defeatAlmostCertain = 6,

    ---@type integer
    defeatCertain = 7,

}

---Enum of battle success types.
---@enum battleSuccess
battleSuccess = { 

    ---@type integer
    close = 0,

    ---@type integer
    average = 1,

    ---@type integer
    clear = 2,

    ---@type integer
    crushing = 3,

}

---Enum of unit mount class.
---@enum mountClass
mountClass = { 

    ---@type integer
    horse = 0,

    ---@type integer
    camel = 1,

    ---@type integer
    elephant = 2,

    ---@type integer
    infantry = 3,

}

---Enum of tile visibility status.
---@enum tileVisibility
tileVisibility = { 

    ---@type integer
    notVisibleInitial = 0,

    ---@type integer
    notVisible = 1,

    ---@type integer
    wasVisible = 2,

    ---@type integer
    visible = 3,

}

---Enum of construction types.
---@enum constructionType
constructionType = { 

    ---@type integer
    upgrade = 0,

    ---@type integer
    construction = 1,

    ---@type integer
    repair = 2,

    ---@type integer
    demolition = 3,

    ---@type integer
    convert = 4,

    ---@type integer
    none = 5,

}

---Enum of battle types.
---@enum battleType
battleType = { 

    ---@type integer
    ambushSuccess = 0,

    ---@type integer
    ambushFail = 1,

    ---@type integer
    open = 2,

    ---@type integer
    siege = 3,

    ---@type integer
    sally = 4,

    ---@type integer
    naval = 5,

    ---@type integer
    withdrawal = 6,

    ---@type integer
    meetEnemy = 7,

}

---Enum of battle states.
---@enum battleState
battleState = { 

    ---@type integer
    notInBattle = 0,

    ---@type integer
    preBattle = 1,

    ---@type integer
    delay = 2,

    ---@type integer
    deployment = 3,

    ---@type integer
    deploymentPlayer2 = 4,

    ---@type integer
    conflict = 5,

    ---@type integer
    victoryScroll = 6,

    ---@type integer
    pursuit = 7,

}

---Enum of unit status.
---@enum unitStatus
unitStatus = { 

    ---@type integer
    idle = 0,

    ---@type integer
    hiding = 1,

    ---@type integer
    taunting = 2,

    ---@type integer
    celebrating = 3,

    ---@type integer
    ready = 4,

    ---@type integer
    reforming = 5,

    ---@type integer
    moving = 6,

    ---@type integer
    withdrawing = 7,

    ---@type integer
    missilesFiring = 8,

    ---@type integer
    missilesReloading = 9,

    ---@type integer
    charging = 10,

    ---@type integer
    fighting = 11,

    ---@type integer
    pursuing = 12,

    ---@type integer
    routing = 13,

    ---@type integer
    fightingBacksToTheWalls = 14,

    ---@type integer
    runningAmok = 15,

    ---@type integer
    berserk = 16,

    ---@type integer
    rallying = 17,

    ---@type integer
    dead = 18,

    ---@type integer
    leavingBattle = 19,

    ---@type integer
    enteringBattle = 20,

    ---@type integer
    leftBattle = 21,

    ---@type integer
    bracing = 22,

    ---@type integer
    infighting = 23,

}

---Enum of unit actions.
---@enum unitAction
unitAction = { 

    ---@type integer
    changeFormation = 0,

    ---@type integer
    changeFormationClose = 1,

    ---@type integer
    changeFormationWidth = 2,

    ---@type integer
    changeSpeed = 3,

    ---@type integer
    changeMeleeState = 4,

    ---@type integer
    setupEngine = 5,

    ---@type integer
    collectEngine = 6,

    ---@type integer
    dropEngine = 7,

    ---@type integer
    hide = 8,

    ---@type integer
    move = 9,

    ---@type integer
    moveIntoPlayableArea = 10,

    ---@type integer
    turn = 11,

    ---@type integer
    attackUnit = 12,

    ---@type integer
    attackBuilding = 13,

    ---@type integer
    attackEngine = 14,

    ---@type integer
    withdraw = 15,

    ---@type integer
    feignRout = 16,

    ---@type integer
    useAbility = 17,

    ---@type integer
    halt = 18,

    ---@type integer
    idle = 19,

}

---Enum of character attributes
---@enum characterAttr
characterAttr = { 

    ---@type integer
    command = 0,

    ---increases command radius
    ---@type integer
    influence = 1,

    ---@type integer
    subterfuge = 2,

    ---@type integer
    loyalty = 3,

    ---princess only
    ---@type integer
    charm = 4,

    ---merchant only
    ---@type integer
    finance = 5,

    ---@type integer
    piety = 6,

    ---witch only, doesnt really do anything
    ---@type integer
    magic = 7,

    ---@type integer
    chivalry = 8,

    ---@type integer
    authority = 9,

    ---@type integer
    level = 10,

    ---influences chance for priest to become heretic
    ---@type integer
    unorthodoxy = 11,

    ---value over 1 makes it impossible for priest to become heretic
    ---@type integer
    heresyImmunity = 12,

    ---@type integer
    assassination = 13,

    ---@type integer
    sabotage = 14,

    ---increases college of cardinals eligibility
    ---@type integer
    eligibility = 15,

    ---used for catholic mission scoring
    ---@type integer
    purity = 16,

    ---used for cease fire / break alliance mission scoring
    ---@type integer
    violence = 17,

    ---useless
    ---@type integer
    disposition = 18,

    ---useless
    ---@type integer
    boldness = 19,

    ---useless
    ---@type integer
    generosity = 20,

    ---useless
    ---@type integer
    management = 21,

    ---@type integer
    bodyguardSize = 22,

    ---@type integer
    troopMorale = 23,

    ---5% per point
    ---@type integer
    movementPoints = 24,

    ---@type integer
    attack = 25,

    ---@type integer
    defence = 26,

    ---@type integer
    siegeAttack = 27,

    ---@type integer
    siegeDefence = 28,

    ---@type integer
    ambush = 29,

    ---@type integer
    navalCommand = 30,

    ---@type integer
    siegeEngineering = 31,

    ---@type integer
    nightBattle = 32,

    ---increases bodyguard size
    ---@type integer
    personalSecurity = 33,

    ---increases counterspy ability as governor
    ---@type integer
    publicSecurity = 34,

    ---divided by campaign db briber attr divisor
    ---@type integer
    bribery = 35,

    ---divided by campaign db bribee attr divisor
    ---@type integer
    briberyResistance = 36,

    ---useless
    ---@type integer
    electability = 37,

    ---@type integer
    lineOfSight = 38,

    ----5% cost per point
    ---@type integer
    trainingUnits = 39,

    ----5% cost per point
    ---@type integer
    trainingAgents = 40,

    ----5% cost per point
    ---@type integer
    construction = 41,

    ---1% per point
    ---@type integer
    trading = 42,

    ---@type integer
    localPopularity = 43,

    ---useless
    ---@type integer
    footInTheDoor = 44,

    ---@type integer
    farming = 45,

    ---@type integer
    mining = 46,

    ---@type integer
    taxCollection = 47,

    ---@type integer
    fertility = 48,

    ---@type integer
    cavalryCommand = 49,

    ---@type integer
    infantryCommand = 50,

    ---@type integer
    gunpowderCommand = 51,

    ---@type integer
    artilleryCommand = 52,

    ---@type integer
    startReligionCombat = 53,

    ---@type integer
    combatVReligion0 = 53,

    ---@type integer
    combatVReligion1 = 54,

    ---@type integer
    combatVReligion2 = 55,

    ---@type integer
    combatVReligion3 = 56,

    ---@type integer
    combatVReligion4 = 57,

    ---@type integer
    combatVReligion5 = 58,

    ---@type integer
    combatVReligion6 = 59,

    ---@type integer
    combatVReligion7 = 60,

    ---@type integer
    combatVReligion8 = 61,

    ---@type integer
    combatVReligion9 = 62,

    ---@type integer
    endReligionCombat = 62,

    ---@type integer
    startFactionCombat = 63,

    ---@type integer
    combatVFaction0 = 63,

    ---@type integer
    combatVFaction1 = 64,

    ---@type integer
    combatVFaction2 = 65,

    ---@type integer
    combatVFaction3 = 66,

    ---@type integer
    combatVFaction4 = 67,

    ---@type integer
    combatVFaction5 = 68,

    ---@type integer
    combatVFaction6 = 69,

    ---@type integer
    combatVFaction7 = 70,

    ---@type integer
    combatVFaction8 = 71,

    ---@type integer
    combatVFaction9 = 72,

    ---@type integer
    combatVFaction10 = 73,

    ---@type integer
    combatVFaction11 = 74,

    ---@type integer
    combatVFaction12 = 75,

    ---@type integer
    combatVFaction13 = 76,

    ---@type integer
    combatVFaction14 = 77,

    ---@type integer
    combatVFaction15 = 78,

    ---@type integer
    combatVFaction16 = 79,

    ---@type integer
    combatVFaction17 = 80,

    ---@type integer
    combatVFaction18 = 81,

    ---@type integer
    combatVFaction19 = 82,

    ---@type integer
    combatVFaction20 = 83,

    ---@type integer
    combatVFaction21 = 84,

    ---@type integer
    combatVFaction22 = 85,

    ---@type integer
    combatVFaction23 = 86,

    ---@type integer
    combatVFaction24 = 87,

    ---@type integer
    combatVFaction25 = 88,

    ---@type integer
    combatVFaction26 = 89,

    ---@type integer
    combatVFaction27 = 90,

    ---@type integer
    combatVFaction28 = 91,

    ---@type integer
    combatVFaction29 = 92,

    ---@type integer
    combatVFaction30 = 93,

    ---@type integer
    combatVFaction31 = 94,

    ---@type integer
    endFactionCombat = 94,

    ---@type integer
    health = 95,

    ---@type integer
    squalor = 96,

    ---@type integer
    unrest = 97,

    ---@type integer
    law = 98,

    ---@type integer
    looting = 99,

    ---@type integer
    bodyguardValour = 100,

    ---@type integer
    hitPoints = 101,

    ---@type integer
    trainingAnimalUnits = 102,

    ---@type integer
    battleSurgery = 103,

    ---@type integer
    attributeNum = 104,

}

---Enum of unit classes
---@enum unitClass
unitClass = { 

    ---@type integer
    heavy = 0,

    ---@type integer
    light = 1,

    ---@type integer
    skirmish = 2,

    ---@type integer
    spearmen = 3,

    ---@type integer
    missile = 4,

}

---Enum of unit categories
---@enum unitCategory
unitCategory = { 

    ---@type integer
    infantry = 0,

    ---@type integer
    cavalry = 1,

    ---@type integer
    siege = 2,

    ---@type integer
    non_combatant = 3,

    ---@type integer
    ship = 4,

    ---@type integer
    handler = 5,

}

---Enum of unit categories and class combo
---@enum unitCategoryClass
unitCategoryClass = { 

    ---@type integer
    nonCombatant = 0,

    ---@type integer
    lightInfantry = 1,

    ---@type integer
    heavyInfantry = 2,

    ---@type integer
    spearmenInfantry = 3,

    ---@type integer
    missileInfantry = 4,

    ---@type integer
    lightCavalry = 5,

    ---@type integer
    heavyCavalry = 6,

    ---@type integer
    missileCavalry = 7,

    ---@type integer
    siegeWeapon = 8,

    ---@type integer
    animalHandler = 9,

    ---@type integer
    battleShip = 10,

}

---Enum of automated settlement policy types
---@enum managePolicy
managePolicy = { 

    ---@type integer
    balanced = 0,

    ---@type integer
    financial = 1,

    ---@type integer
    military = 2,

    ---@type integer
    growth = 3,

    ---@type integer
    cultural = 4,

    ---@type integer
    noPolicy = 5,

}

---Enum of invasion types for LTGD.
---@enum invadeType
invadeType = { 

    ---@type integer
    buildup = 0,

    ---@type integer
    immediate = 1,

    ---@type integer
    raids = 2,

    ---@type integer
    opportunistic = 3,

    ---@type integer
    start = 4,

    ---@type integer
    none = 5,

}

---Enum of defend types for LTGD.
---@enum defendType
defendType = { 

    ---@type integer
    minimal = 0,

    ---@type integer
    normal = 1,

    ---@type integer
    raid = 2,

    ---@type integer
    frontline = 3,

    ---@type integer
    fortified = 4,

    ---@type integer
    deep = 5,

}

---Enum of strategy pathfinding types
---@enum searchType
searchType = { 

    ---@type integer
    avoidZoc = 0,

    ---@type integer
    ignoreZoc = 1,

    ---@type integer
    direct = 2,

    ---@type integer
    militaryAccess = 3,

    ---@type integer
    landingPoints = 4,

    ---@type integer
    region = 5,

    ---@type integer
    strategic = 6,

}

---Enum of production controller extra bias
---@enum productionBias
productionBias = { 

    ---@type integer
    frontier = 0,

    ---@type integer
    conflict = 1,

    ---@type integer
    frontline = 2,

    ---@type integer
    abandon = 3,

    ---@type integer
    increaseGarrison = 4,

    ---@type integer
    trade = 5,

    ---@type integer
    tax = 6,

    ---@type integer
    spies = 7,

    ---@type integer
    assassins = 8,

    ---@type integer
    merchants = 9,

    ---@type integer
    priests = 10,

    ---@type integer
    diplomats = 11,

    ---@type integer
    ships = 12,

    ---@type integer
    qualityUnits = 13,

    ---@type integer
    buildStrengthLimit = 14,

}

---Enum of formation types
---@enum formationType
formationType = { 

    ---@type integer
    horde = 0,

    ---@type integer
    column = 1,

    ---@type integer
    square = 2,

    ---@type integer
    wedge = 3,

    ---@type integer
    squareHollow = 4,

    ---@type integer
    phalanx = 5,

    ---@type integer
    schiltrom = 6,

    ---@type integer
    shieldWall = 7,

    ---@type integer
    wall = 8,

    ---@type integer
    movingThrough = 9,

}

---Enum of battle building types
---@enum battleBuildingType
battleBuildingType = { 

    ---@type integer
    ambient = 1,

    ---@type integer
    gate = 3,

    ---@type integer
    tower = 9,

    ---@type integer
    wall = 10,

}

---Enum of precipitation types
---@enum rainType
rainType = { 

    ---@type integer
    none = 0,

    ---@type integer
    rain = 1,

    ---@type integer
    hail = 2,

    ---@type integer
    snow = 3,

    ---@type integer
    dust = 4,

    ---@type integer
    invalid = 5,

}

---Enum of precipitation levels
---@enum rainLevel
rainLevel = { 

    ---@type integer
    dry = 0,

    ---@type integer
    drizzle = 1,

    ---@type integer
    light = 2,

    ---@type integer
    heavy = 3,

    ---@type integer
    torrential = 4,

    ---@type integer
    invalid = 5,

}

---Enum of battle ground types
---@enum physicalGroundType
physicalGroundType = { 

    ---@type integer
    grassShort = 0,

    ---@type integer
    grassLong = 1,

    ---@type integer
    sand = 2,

    ---@type integer
    rock = 3,

    ---@type integer
    forestDense = 4,

    ---@type integer
    scrubDense = 5,

    ---@type integer
    swamp = 6,

    ---@type integer
    mud = 7,

    ---@type integer
    mudRoad = 8,

    ---@type integer
    stoneRoad = 9,

    ---@type integer
    water = 10,

    ---@type integer
    ice = 11,

    ---@type integer
    snow = 12,

    ---@type integer
    wood = 13,

    ---@type integer
    dirt = 14,

    ---@type integer
    unknown = 15,

}

---Enum of campaign ground types
---@enum strategyGroundType
strategyGroundType = { 

    ---@type integer
    lowFertility = 0,

    ---@type integer
    mediumFertility = 1,

    ---@type integer
    highFertility = 2,

    ---@type integer
    wilderness = 3,

    ---@type integer
    highMountains = 4,

    ---@type integer
    lowMountains = 5,

    ---@type integer
    hills = 6,

    ---@type integer
    denseForest = 7,

    ---@type integer
    woodland = 8,

    ---@type integer
    swamp = 9,

    ---@type integer
    ocean = 10,

    ---@type integer
    deepSea = 11,

    ---@type integer
    shallowSea = 12,

    ---@type integer
    coast = 13,

    ---@type integer
    impassableLand = 14,

    ---@type integer
    impassableSea = 15,

}

---Enum of engine types
---@enum engineType
engineType = { 

    ---@type integer
    catapult = 0,

    ---@type integer
    trebuchet = 1,

    ---@type integer
    ballista = 2,

    ---@type integer
    bombard = 3,

    ---@type integer
    grandBombard = 4,

    ---@type integer
    hugeBombard = 5,

    ---@type integer
    culverin = 6,

    ---@type integer
    basilisk = 7,

    ---@type integer
    cannon = 8,

    ---@type integer
    mortar = 9,

    ---@type integer
    scorpion = 10,

    ---@type integer
    serpentine = 11,

    ---@type integer
    rocketLauncher = 12,

    ---@type integer
    ribault = 13,

    ---@type integer
    monsterRibault = 14,

    ---@type integer
    mangonel = 15,

    ---@type integer
    tower = 17,

    ---@type integer
    ram = 18,

    ---@type integer
    ladder = 19,

    ---@type integer
    holy_cart = 20,

}

---Basic armyStruct table
---@class armyStruct
armyStruct = { 

    ---@type factionStruct
    faction = nil,

    ---@type integer
    numOfUnits = nil,

    ---@type integer
    deadUnitsNum = nil,

    ---@type boolean
    isAdmiral = nil,

    ---@type boolean
    canRetreat = nil,

    ---@type integer
    supportingArmiesCampaign = nil,

    ---@type integer
    bannerRed = nil,

    ---@type integer
    bannerGreen = nil,

    ---@type integer
    bannerBlue = nil,

    ---@type boolean
    bannerSet = nil,

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type integer
    ladders = nil,

    ---@type integer
    rams = nil,

    ---@type integer
    towers = nil,

    ---How many left in battle.
    ---@type integer
    battleLadders = nil,

    ---How many left in battle.
    ---@type integer
    battleRams = nil,

    ---How many left in battle.
    ---@type integer
    battleTowers = nil,

    ---Includes Auxiliary generals and agents (i.e all characters excluding the leading general)
    ---@type integer
    numOfCharacters = nil,

    ---army embarked on this fleet stack
    ---@type armyStruct
    boardedArmy = nil,

    ---fleet that this army stack is embarked on
    ---@type armyStruct
    shipArmy = nil,

    ---@type dockStruct
    blockedPort = nil,

    ---Returns nil if stack is inside residence (fleet, settlement, fort).
    ---@type character
    leader = nil,

    ---@type integer
    totalStrength = nil,

    ---@type integer
    subFactionID = nil,

    ---@type integer
    regionID = nil,

    ---@type integer
    totalStrengthStart = nil,

    ---@type integer
    alliance = nil,

    ---@type integer
    generalDeathTimer = nil,

    ---@type integer
    upkeepModifier = nil,

    ---@type integer
    generalRoutTimer = nil,

    ---@type boolean
    isHalfDestroyed = nil,

    ---@type integer
    generalBattleCommand = nil,

    ---@type number
    generalCommandRadius = nil,

    ---if not leading army but reinforcement
    ---@type armyStruct
    commandingArmy = nil,

    ---reinforcement and listening to player commands
    ---@type armyStruct
    commandingArmyThatGivesCommands = nil,

    ---@type boolean
    inBattle = nil,

    ---Actively reinforcing (moving units into the battlefield).
    ---@type boolean
    isReinforcing = nil,

    ---Just fought a battle.
    ---@type boolean
    finishedBattle = nil,

    ---@type boolean
    isReinforcement = nil,

    ---@type boolean
    tired = nil,

    ---@type boolean
    routedBattle = nil,

    ---@type boolean
    moraleBroken = nil,

    ---@type integer
    battleOutcome = nil,

    ---@type integer
    reformPointX = nil,

    ---@type integer
    reformPointY = nil,

    ---@type integer
    maxGroups = nil,

    ---@type integer
    hiddenUnitCount = nil,

    ---@type rebelFaction
    rebelEntry = nil,

    ---X coordinate to which the retreating units will go.
    ---@type number
    reform_point_x = nil,

    ---Y coordinate to which the retreating units will go.
    ---@type number
    reform_point_y = nil,

    ---Current siege.
    ---@type siegeStruct
    siege = nil,

}

---Sort units in a stack. Use the sortType enum to specify the sorting mode.
---@param sortMode integer 
---@param sortMode2 integer 
---@param sortMode3 integer 
function armyStruct:sortStack(sortMode, sortMode2, sortMode3) end 

---Get a unit by it's index.
---@param number integer 
---@return unit retUnit 
function armyStruct:getUnit(number) end 

---Get a character (agent or non-leading named character) by it's index.
---@param number integer 
---@return character retCharacter 
function armyStruct:getCharacter(number) end 

---Find the settlement in which the army is located. Returns nil if the army is not in a settlement.
---Returns nil if the army is not in the settlement.
---@return settlementStruct settlement 
function armyStruct:findInSettlement() end 

---Find the fort in which the army is located. Returns nil if the army is not in a fort.
---Returns nil if the army is not in the fort.
---@return fortStruct fort 
function armyStruct:findInFort() end 

---Create a unit in the army by type from export\_descr\_unit.txt
---@param type string 
---@param exp integer Experience. Maximum: 9.
---@param armor integer Armour level.
---@param weapon integer Weapon upgrade. Maximum: 1.
---@param soldiers integer? optional
---@return unit newUnit 
function armyStruct:createUnit(type, exp, armor, weapon, soldiers) end 

---Create a unit in the army by index from export\_descr\_unit.txt
---@param index integer Index (order in export\_descr\_unit.txt)
---@param exp integer Experience. Maximum: 9.
---@param armor integer Armour level.
---@param weapon integer Weapon upgrade. Maximum: 1.
---@param soldiers integer? optional
---@return unit newUnit 
function armyStruct:createUnitByIDX(index, exp, armor, weapon, soldiers) end 

---Merge 2 armies on the strat map. Does nothing if the total size of the new army exceeds 20 units.
---@param targetArmy armyStruct 
---@param force boolean? optional
---@return armyStruct army 
function armyStruct:mergeArmies(targetArmy, force) end 

---Besiege the specified settlement, or attack it if already besieging it. Requires movement points.
---@param settlement settlementStruct 
---@param isAttack boolean if this is false it makes the army maintain a siege
function armyStruct:siegeSettlement(settlement, isAttack) end 

---Besiege the specified fort, or attack it if already besieging it. Requires movement points.
---@param fort fortStruct 
---@param isAttack boolean if this is false it makes the army maintain a siege
function armyStruct:siegeFort(fort, isAttack) end 

---Blockade a port.
---@param port portStruct 
---@return boolean success 
function armyStruct:blockadePort(port) end 

---Lift an active siege.
function armyStruct:liftSiege() end 

---Lift an active blockade.
function armyStruct:liftBlockade() end 

---Attack another army. Requires movement points.
---@param defender armyStruct 
---@return integer Success 
function armyStruct:attackArmy(defender) end 

---Get dead unit at index.
---@param index integer 
---@return unit deadUnit 
function armyStruct:getDeadUnit(index) end 

---Get unit group at index.
---@param index integer 
---@return unitGroup group 
function armyStruct:getGroup(index) end 

---Define a new unit group with a label.
---@param name string 
---@param unit unit 
---@return unitGroup group 
function armyStruct:defineUnitGroup(name, unit) end 

---Set ai active set to a value for the whole army (0 = inacitve, 1 = active, 2 = script controlled)
---@param activeSet integer 
function armyStruct:setAiActiveSet(activeSet) end 

---Set ai active set to on or off depending if army is player controlled
function armyStruct:releaseUnits() end 

---Build a watchtower (payment applies)
function armyStruct:buildWatchTower() end 

---Does army have the capability to start a siege? (infantry units to carry equipment or siege engines)
---@param target settlementStruct 
---@return boolean canSiege 
function armyStruct:canStartSiege(target) end 

---Does army have the capability to start a siege? (infantry units to carry equipment or siege engines)
---@param target fortStruct 
---@return boolean canSiege 
function armyStruct:canStartSiegeFort(target) end 

---Does army have the capability to start an assault?
---@param target settlementStruct 
---@return boolean canAssault 
function armyStruct:canStartAssault(target) end 

---Does army have the capability to start an assault?
---@param target fortStruct 
---@return boolean canAssault 
function armyStruct:canStartAssaultFort(target) end 

---Is another army at war with this army?
---@param other armyStruct 
---@return boolean isEnemy 
function armyStruct:isEnemyTo(other) end 

---Is another army allied to this army?
---@param other armyStruct 
---@return boolean isAlly 
function armyStruct:isAllyTo(other) end 

---Is this army at war with this faction?
---@param fac factionStruct 
---@return boolean isEnemy 
function armyStruct:isEnemyToFaction(fac) end 

---Is this army allied to this faction?
---@param fac factionStruct 
---@return boolean isAlly 
function armyStruct:isAllyToFaction(fac) end 

---Move to specified position, merge with other armies if they occupy the same tile, find close tile if the target is occupied.
---@param x integer 
---@param y integer 
---@param forceMerge boolean Merge automatically instead of by movement if an army occupies
---@return armyStruct army 
function armyStruct:moveTactical(x, y, forceMerge) end 

---Get number of units in this army of a specific category
---@param category integer use unitCategory enum
---@return integer num 
function armyStruct:getNumberOfCategory(category) end 

---Basic siegeStruct table
---@class siegeStruct
siegeStruct = { 

    ---@type armyStruct
    besieger = nil,

    ---@type settlementStruct
    besiegedSettlement = nil,

    ---@type fortStruct
    besiegedFort = nil,

    ---@type integer
    equipmentQueueCount = nil,

    ---@type integer
    siegeTurns = nil,

    ---@type integer
    siegeCasualties = nil,

    ---Amount of times the besieger has assaulted the settlement.
    ---@type integer
    siegeAssaults = nil,

    ---@type integer
    soldierCountStart = nil,

    ---@type boolean
    finished = nil,

}

---Get an item in the siege equipment queue by index.
---@param index integer 
---@return siegeEquipmentQueueItem item 
function siegeStruct:getQueueItem(index) end 

---Basic siegeEquipmentQueueItem table
---@class siegeEquipmentQueueItem
siegeEquipmentQueueItem = { 

    ---@type integer
    type = nil,

    ---@type boolean
    frozen = nil,

    ---@type boolean
    valid = nil,

    ---@type integer
    cost = nil,

    ---@type integer
    remainingCost = nil,

    ---@type integer
    percentComplete = nil,

}

---basic battleStruct table
---@class battleStruct
battleStruct = { 

    ---@type integer
    battleState = nil,

    ---@type integer
    battleType = nil,

    ---@type boolean
    isNightBattle = nil,

    ---@type boolean
    battleAiEnabled = nil,

    ---@type boolean
    defenderWithdrawn = nil,

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type integer
    attackingSide = nil,

    ---@type integer
    defendingSide = nil,

    ---@type integer
    residenceOwnerFacId = nil,

    ---@type integer
    attackerXCoord = nil,

    ---@type integer
    attackerYCoord = nil,

    ---@type integer
    defenderXCoord = nil,

    ---@type integer
    defenderYCoord = nil,

    ---@type boolean
    paused = nil,

    ---@type boolean
    isAutoResolve = nil,

    ---@type boolean
    isFortBattle = nil,

    ---@type boolean
    inBattle = nil,

    ---@type integer
    finishTimer = nil,

    ---@type number
    battleSpeed = nil,

    ---@type number
    secondsPassed = nil,

    ---@type integer
    tickCount = nil,

    ---@type integer
    ticksSinceBattleStart = nil,

    ---@type integer
    hidingEnabledSet = nil,

    ---@type fortBattleInfo
    fortInfo = nil,

    ---@type number
    mapWidth = nil,

    ---@type number
    mapHeight = nil,

    ---@type terrainFeatures
    terrainFeatures = nil,

    ---@type integer
    sidesNum = nil,

    ---@type integer
    unitSize = nil,

    ---@type integer
    tideOfBattle = nil,

    ---@type integer
    playerArmyNum = nil,

    ---@type integer
    timeWinningAlliance = nil,

    ---Returns a battleSide[8]. Maximum: 8.
    ---@type table<integer, battleSide>
    sides = nil,

    ---faction alliance array, -1 if not in battle, start at 1 so faction ID + 1 Maximum 31.
    ---@type table<integer, integer>
    factionSide = nil,

}

---Get a players army.
---@param index integer 
---@return armyStruct army 
function battleStruct:getPlayerArmy(index) end 

---Get table with certain info about the battle residence.
---@return battleResidence battleResidence 
function battleStruct.getBattleResidence() end 

---Get a unit by it's label.
---@param label string 
---@return unit foundUnit 
function battleStruct.getUnitByLabel(label) end 

---Get a group by it's label.
---@param label string 
---@return unitGroup foundGroup 
function battleStruct.getGroupByLabel(label) end 

---Get battlemap height at position.
---@param xCoord number 
---@param yCoord number 
---@return number zCoord 
function battleStruct.getBattleMapHeight(xCoord, yCoord) end 

---Get battlefield engines.
---@return battlefieldEngines engines 
function battleStruct.getBattlefieldEngines() end 

---Get battlefield tile.
---@param xCoord number 
---@param yCoord number 
---@return battleTile tile 
function battleStruct.getBattleTile(xCoord, yCoord) end 

---Get zone ID.
---@param xCoord number 
---@param yCoord number 
---@return integer zoneID 
function battleStruct.getZoneID(xCoord, yCoord) end 

---Get position perimeter.
---@param xCoord number 
---@param yCoord number 
---@return integer perimeter 
function battleStruct.getPosPerimeter(xCoord, yCoord) end 

---Is zone valid.
---@param zoneID integer 
---@return boolean valid 
function battleStruct.isZoneValid(zoneID) end 

---Is battle a river battle.
---@return boolean riverBattle 
function battleStruct:isRiverBattle() end 

---Basic battlefieldEngines table
---@class battlefieldEngines
battlefieldEngines = { 

    ---@type integer
    engineNum = nil,

}

---Get an engine from the battlefield.
---@param index integer 
---@return siegeEngineStruct engine 
function battlefieldEngines:getEngine(index) end 

---Basic fortBattleInfo table
---@class fortBattleInfo
fortBattleInfo = { 

    ---@type fortStruct
    fort = nil,

    ---@type armyStruct
    garrison = nil,

    ---@type factionStruct
    faction = nil,

    ---@type integer
    ownerFactionID = nil,

    ---@type integer
    creatorFactionID = nil,

    ---@type integer
    fortFortificationLevel = nil,

}

---Basic battleSide table
---@class battleSide
battleSide = { 

    ---@type boolean
    isDefender = nil,

    ---@type boolean
    canWithdraw = nil,

    ---@type boolean
    canDeploy = nil,

    ---0 = lose, 1 = draw, 2 = win
    ---@type integer
    wonBattle = nil,

    ---0 = close, 1 = average, 2 = clear, 3 = crushing
    ---@type battleSuccess
    battleSuccess = nil,

    ---Returns an int index of a wincondition. Maximum 4.
    ---@type table<integer, integer>
    winConditions = nil,

    ---@type integer
    armiesNum = nil,

    ---@type integer
    battleArmyNum = nil,

    ---@type integer
    alliance = nil,

    ---@type integer
    soldierCountStart = nil,

    ---@type integer
    factionCount = nil,

    ---@type integer
    totalStrength = nil,

    ---@type integer
    reinforceArmyCount = nil,

    ---@type number
    battleOdds = nil,

    ---@type integer
    activeArmyStrength = nil,

    ---@type battleAI
    battleAIPlan = nil,

    ---Returns a table of battleSideArmy. Maximum: 64.
    ---@type table<integer, battleSideArmy>
    armies = nil,

}

---Get win condition string, for example: destroy\_or\_rout_enemy
---@param condition integer 
---@return string winCondition destroy\_or\_rout\_enemy, balance\_of\_strength\_percent, destroy\_enemy\_strength\_percent, capture\_location, destroy\_character, capture\_major\_settlement, capture\_army\_settlement, unknown\_condition
function battleSide.getWinConditionString(condition) end 

---Get a battle army by it's index.
---@param index integer 
---@return battleArmy army 
function battleSide:getBattleArmy(index) end 

---Get a faction in this side by it's index.
---@param index integer 
---@return factionStruct faction 
function battleSide:getFaction(index) end 

---Get a reinforcement army in this side by it's index.
---@param index integer 
---@return armyStruct army 
function battleSide:getReinforcementArmy(index) end 

---Check if a side contains a faction.
---@param factionID integer 
---@return boolean containsFac 
function battleSide:hasFaction(factionID) end 

---Basic battleSideArmy table
---@class battleSideArmy
battleSideArmy = { 

    ---@type armyStruct
    army = nil,

    ---@type boolean
    isReinforcement = nil,

    ---@type boolean
    canWithdraw = nil,

    ---@type integer
    deployAreaCount = nil,

}

---Get a deployment area.
---@param index integer 
---@return deploymentAreaS area 
function battleSideArmy:getDeployArea(index) end 

---Basic DeploymentAreaS table
---@class deploymentAreaS
deploymentAreaS = { 

    ---@type integer
    coordsNum = nil,

    ---@type integer
    width = nil,

    ---@type integer
    height = nil,

    ---@type number
    centreX = nil,

    ---@type number
    centreY = nil,

}

---Get pair of coords with index.
---@param index integer 
---@return battlePos position 
function deploymentAreaS:getCoordPair(index) end 

---Basic battlePos table
---@class battlePos
battlePos = { 

    ---@type number
    xCoord = nil,

    ---@type number
    yCoord = nil,

}

---Basic Battle AI table
---@class battleAI
battleAI = { 

    ---@type integer
    gtaPlan = nil,

    ---@type integer
    previousAiPlan = nil,

    ---@type integer
    aiAnalyzerPlan = nil,

    ---@type boolean
    scriptPlan = nil,

    ---@type integer
    unitCount = nil,

    ---@type integer
    visibleEnemyUnitCount = nil,

    ---@type integer
    addedObjectivesCount = nil,

    ---@type integer
    objectiveCount = nil,

    ---@type integer
    objectiveTimer = nil,

    ---@type battleSide
    battleSide = nil,

    ---@type number
    defendAreaX = nil,

    ---@type number
    defendAreaZ = nil,

    ---@type number
    defendAreaY = nil,

    ---@type number
    defendRadius = nil,

    ---@type boolean
    isDefender = nil,

    ---@type boolean
    isAmbush = nil,

    ---@type boolean
    hasDeployed = nil,

    ---@type boolean
    isDeploying = nil,

    ---@type boolean
    wantsToSally = nil,

    ---@type boolean
    defendAreaSet = nil,

    ---@type integer
    battleDifficulty = nil,

    ---@type battleStrengthStruct
    alliedInitialStrength = nil,

    ---@type battleStrengthStruct
    alliedStrength = nil,

    ---@type battleStrengthStruct
    enemyInitialStrength = nil,

    ---@type battleStrengthStruct
    enemyStrength = nil,

    ---@type battleStrengthStruct
    enemyVisibleInitialStrength = nil,

    ---@type battleStrengthStruct
    enemyVisibleStrength = nil,

    ---@type terrainFeatureHill
    defendHill = nil,

}

---Get a battle objective by it's index.
---@param index integer 
---@return battleObjective objective 
function battleAI:getObjective(index) end 

---Get a visible enemy unit by index.
---@param index integer 
---@return unit enemy 
function battleAI:getVisibleEnemy(index) end 

---Get a unit by index.
---@param index integer 
---@return unit aiUnit 
function battleAI:getUnit(index) end 

---Basic lineData table
---@class lineData
lineData = { 

    ---@type number
    xCoordStart = nil,

    ---@type number
    yCoordStart = nil,

    ---@type number
    xCoordEnd = nil,

    ---@type number
    yCoordEnd = nil,

    ---@type number
    xMidPoint = nil,

    ---@type number
    yMidPoint = nil,

    ---@type number
    length = nil,

}

---Basic battleStrengthStruct table
---@class battleStrengthStruct
battleStrengthStruct = { 

    ---@type integer
    soldierCount = nil,

    ---@type integer
    meleeStrength = nil,

    ---@type integer
    missileStrength = nil,

    ---@type integer
    siegeStrength = nil,

    ---@type integer
    infantryMissilePlusMelee = nil,

    ---@type integer
    cavalryMeleeStrength = nil,

    ---@type integer
    total = nil,

}

---Basic battleObjective table
---@class battleObjective
battleObjective = { 

    ---@type integer
    priority = nil,

    ---@type battleAI
    battleAi = nil,

    ---@type integer
    unitCount = nil,

    ---@type integer
    ticks = nil,

    ---@type boolean
    isRequired = nil,

    ---@type boolean
    isPlayer = nil,

}

---Get a unit by it's index.
---@param index integer 
---@return unit unit 
function battleObjective:getUnit(index) end 

---Get the type of objective.
---@return integer objectiveType 
function battleObjective:getType() end 

---Basic battleArmy table
---@class battleArmy
battleArmy = { 

    ---@type armyStruct
    army = nil,

    ---@type character
    character = nil,

    ---@type integer
    generalNumKillsBattle = nil,

    ---@type number
    initialStrength = nil,

    ---@type number
    battleOdds = nil,

    ---@type number
    generalHPRatioLost = nil,

    ---(manual battle only)
    ---@type integer
    numKilledGenerals = nil,

    ---@type integer
    unitCount = nil,

}

---Get a battle unit by it's index.
---@param index integer 
---@return battleUnit unit 
function battleArmy:getBattleUnit(index) end 

---Basic battleUnit table
---@class battleUnit
battleUnit = { 

    ---@type unit
    unit = nil,

    ---@type number
    valuePerSoldier = nil,

    ---@type integer
    soldiersLost = nil,

    ---@type integer
    soldiersStart = nil,

    ---@type integer
    soldiersRouted = nil,

    ---@type integer
    soldiersKilled = nil,

    ---@type integer
    takenPrisoner = nil,

    ---@type integer
    prisonersCaught = nil,

    ---@type integer
    soldiersHealed = nil,

    ---@type integer
    soldiersRallied = nil,

    ---@type integer
    soldiersEnd = nil,

    ---@type integer
    friendlyFireCasualties = nil,

    ---@type integer
    expStart = nil,

    ---@type integer
    expGained = nil,

    ---@type integer
    shipsSunk = nil,

    ---@type integer
    shipDamage = nil,

    ---@type integer
    isGeneral = nil,

    ---@type integer
    hasWithdrawn = nil,

}

---Basic battleResidence table
---@class battleResidence
battleResidence = { 

    ---@type settlementStruct
    settlement = nil,

    ---@type battleBuildings
    battleBuildings = nil,

    ---@type factionStruct
    faction = nil,

    ---@type plazaData
    plazaData = nil,

    ---@type fortBattleInfo
    fortInfo = nil,

    ---@type integer
    settlementWallsBreached = nil,

    ---@type integer
    settlementGateDestroyed = nil,

    ---@type boolean
    isUsed = nil,

    ---@type integer
    streetPositionCount = nil,

}

---Get a street position in a settlement.
---@param index integer 
---@return streetPosition pos 
function battleResidence:getStreetPosition(index) end 

---Basic battleBuildings table
---@class battleBuildings
battleBuildings = { 

    ---@type integer
    buildingCount = nil,

    ---@type integer
    perimeterCount = nil,

}

---Get a battle building by it's index.
---@param index integer 
---@return buildingBattle building 
function battleBuildings:getBuilding(index) end 

---Get a perimeter by it's index.
---@param index integer 
---@return perimeterBuildings perimeter 
function battleBuildings:getPerimeter(index) end 

---Basic perimeterBuildings table
---@class perimeterBuildings
perimeterBuildings = { 

    ---@type integer
    buildingCount = nil,

}

---Get a battle building in a perimiter by it's index.
---@param index integer 
---@return buildingBattle building 
function perimeterBuildings:getBuilding(index) end 

---Basic streetPosition table
---@class streetPosition
streetPosition = { 

    ---@type number
    xCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type integer
    perimeter = nil,

    ---@type boolean
    available = nil,

}

---Basic plazaData table
---@class plazaData
plazaData = { 

    ---@type number
    xCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type number
    sizeX = nil,

    ---@type number
    sizeY = nil,

    ---@type integer
    alliance = nil,

    ---@type boolean
    capturing = nil,

    ---@type boolean
    isCaptured = nil,

    ---@type number
    plazaMaxTime = nil,

    ---@type number
    plazaControlPerSecond = nil,

    ---@type number
    plazaControl = nil,

}

---Get amount of soldiers on plazaz for an alliance.
---@param alliance integer 
---@return integer soldiers 
function plazaData:getSoldierCount(alliance) end 

---Basic terrainFeatures table
---@class terrainFeatures
terrainFeatures = { 

    ---@type number
    width = nil,

    ---@type number
    widthHalf = nil,

    ---@type number
    length = nil,

    ---@type number
    lengthHalf = nil,

    ---@type number
    widthOnePercent = nil,

    ---@type number
    lengthOnePercent = nil,

    ---@type integer
    terrainLineCount = nil,

    ---@type integer
    hillCount = nil,

}

---Get a terrain line by index.
---@param index integer 
---@return terrainLine line 
function terrainFeatures:getLine(index) end 

---Get a terrain hill by index.
---@param index integer 
---@return terrainFeatureHill hill 
function terrainFeatures:getHill(index) end 

---Basic terrainLine table
---@class terrainLine
terrainLine = { 

    ---@type number
    startX = nil,

    ---@type number
    startZ = nil,

    ---@type number
    startY = nil,

    ---@type number
    endX = nil,

    ---@type number
    endZ = nil,

    ---@type number
    endY = nil,

    ---@type terrainLine
    previousSegment = nil,

    ---@type terrainLine
    nextSegment = nil,

}

---Basic terrainFeatureHill table
---@class terrainFeatureHill
terrainFeatureHill = { 

    ---@type number
    xCoord = nil,

    ---@type number
    zCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type number
    radius = nil,

    ---@type terrainLine
    terrainLinesStart = nil,

    ---@type number
    area = nil,

}

---Basic buildingBattle table
---@class buildingBattle
buildingBattle = { 

    ---@type integer
    type = nil,

    ---@type integer
    currentHealth = nil,

    ---@type integer
    startHealth = nil,

    ---@type integer
    alliance = nil,

    ---@type integer
    factionId = nil,

    ---@type factionStruct
    faction = nil,

    ---@type battleResidence
    battleResidence = nil,

    ---@type number
    posX = nil,

    ---@type number
    posZ = nil,

    ---@type number
    posY = nil,

    ---@type battleBuildingStats
    battleBuildingStats = nil,

    ---@type integer
    index = nil,

    ---@type integer
    perimeter = nil,

    ---@type boolean
    breached = nil,

    ---@type boolean
    dockable = nil,

    ---@type unit
    controllingUnit = nil,

    ---@type boolean
    isBurning = nil,

    ---@type number
    fireDamage = nil,

    ---@type number
    fireLevel = nil,

}

---Basic battleBuildingStats table
---@class battleBuildingStats
battleBuildingStats = { 

    ---@type string
    name = nil,

    ---@type integer
    flammability = nil,

    ---@type integer
    impactDamage = nil,

    ---(descr_walls, not currently battle)
    ---@type integer
    health = nil,

    ---@type number
    controlAreaRadius = nil,

    ---@type integer
    manned = nil,

    ---@type integer
    isSelectable = nil,

    ---@type integer
    healthExcluded = nil,

    ---@type integer
    towerStatsCount = nil,

}

---Get tower stats by index.
---@param index integer 
---@return towerStats stats 
function battleBuildingStats:getTowerStats(index) end 

---Basic towerStats table
---@class towerStats
towerStats = { 

    ---@type attackStats
    stats = nil,

    ---@type number
    fireAngle = nil,

    ---@type number
    slotYawX = nil,

    ---@type number
    slotYawY = nil,

    ---@type number
    slotPitchX = nil,

    ---@type number
    slotPitchY = nil,

    ---(don't set)
    ---@type integer
    fireRate = nil,

    ---(don't set)
    ---@type integer
    fireRateFlaming = nil,

}

---Basic battleTile table
---@class battleTile
battleTile = { 

    ---@type integer
    physicalGroundType = nil,

    ---@type number
    height = nil,

    ---@type number
    waterHeight = nil,

}

---Get information about the camera in a battle
---@class battleCameraStruct
battleCameraStruct = { 

    ---@type number
    xCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type number
    zCoord = nil,

}

---Basic campaign table.
---@class campaignStruct
campaignStruct = { 

    ---Indexing starts at 1, so add 1 to faction ID. Maximum 31.
    ---@type table<integer, integer>
    campaignDifficultyFaction = nil,

    ---Indexing starts at 1, so add 1 to faction ID. Maximum 31.
    ---@type table<integer, integer>
    battleDifficultyFaction = nil,

    ---Table of factionStruct[31], indexing starts at 1. Maximum 31. Slightly misleading name, sorted by the turn order of the factions. Player controlled faction is at index 0 in single player.
    ---@type table<integer, factionStruct>
    factionsSortedByDescrStrat = nil,

    ---Table of factionStruct[31], indexing starts at 1, so add 1 to faction ID. Maximum 31.
    ---@type table<integer, factionStruct>
    factionsSortedByID = nil,

    ---@type integer
    numberOfFactions = nil,

    ---Number of player-controlled factions.
    ---@type integer
    numberOfHumanFactions = nil,

    ---Faction whose turn it is at the moment, can be set.
    ---@type factionStruct
    currentFaction = nil,

    ---@type collegeOfCardinals
    collegeOfCardinals = nil,

    ---@type factionStruct
    papalFaction = nil,

    ---@type boolean
    fogOfWar = nil,

    ---@type boolean
    marianReformsActive = nil,

    ---@type boolean
    marianReformsDisabled = nil,

    ---@type factionStruct
    slaveFaction = nil,

    ---@type integer
    factionTurnID = nil,

    ---@type integer
    tickCount = nil,

    ---@type integer
    campaignWinnerID = nil,

    ---@type integer
    millisecondCount = nil,

    ---@type number
    secondCount = nil,

    ---@type integer
    turnNumber = nil,

    ---Factor for number of turns per year, see descr\_strat.txt
    ---@type number
    timescale = nil,

    ---@type settlementStruct
    romeSettlement = nil,

    ---@type settlementStruct
    constantinopleSettlement = nil,

    ---@type crusadeStruct
    crusade = nil,

    ---@type jihadStruct
    jihad = nil,

    ---Lower values increase spawn rate.
    ---@type number
    brigandSpawnValue = nil,

    ---Lower values increase spawn rate.
    ---@type number
    pirateSpawnValue = nil,

    ---@type integer
    restrictAutoResolve = nil,

    ---@type integer
    saveEnabled = nil,

    ---Number of units who get free upkeep in forts.
    ---@type integer
    freeUpkeepForts = nil,

    ---@type number
    currentDate = nil,

    ---season (0=summer, 1=winter)
    ---@type integer
    currentSeason = nil,

    ---@type number
    startDate = nil,

    ---season (0=summer, 1=winter)
    ---@type integer
    startSeason = nil,

    ---@type number
    endDate = nil,

    ---season (0=summer, 1=winter)
    ---@type integer
    endSeason = nil,

    ---@type integer
    daysInBattle = nil,

    ---24 max, so calculate as daysInBattle*24+currentTimeInBattle.
    ---@type number
    currentTimeInBattle = nil,

    ---@type number
    timeOfDay = nil,

    ---@type number
    windSpeed = nil,

    ---@type weatherData
    weather = nil,

    ---@type integer
    fortsNum = nil,

    ---@type boolean
    speedUp = nil,

    ---@type boolean
    ignoreSpeedUp = nil,

    ---@type boolean
    isPaused = nil,

    ---@type boolean
    followMovement = nil,

    ---@type integer
    portsBuildingsNum = nil,

    ---@type integer
    watchTowerNum = nil,

    ---@type integer
    slaveFactionID = nil,

    ---@type integer
    roadsNum = nil,

    ---@type integer
    mercPoolNum = nil,

    ---@type integer
    settlementNum = nil,

    ---@type boolean
    nightBattlesEnabled = nil,

    ---@type boolean
    rebellingCharactersActive = nil,

}

---Check if a diplomatic relation between two factions.
---@param checkType dipRelType Example: dipRelType.war
---@param fac1 factionStruct A faction.
---@param fac2 factionStruct Another faction.
---@return boolean checkResult 
function campaignStruct:checkDipStance(checkType, fac1, fac2) end 

---Set a diplomatic relation between two factions.
---@param relType dipRelType Example: dipRelType.war
---@param fac1 factionStruct A faction.
---@param fac2 factionStruct Another faction.
function campaignStruct:setDipStance(relType, fac1, fac2) end 

---Get size of unit(i.e. small or medium, etc). Numbers from 0 to 3
---@return integer unitSize 
function campaignStruct.getUnitSize() end 

---Get fort by index.
---@param index integer 
---@return fortStruct fort 
function campaignStruct:getFort(index) end 

---Get port by index.
---@param index integer 
---@return portStruct port 
function campaignStruct:getPort(index) end 

---Get watchtower by index.
---@param index integer 
---@return watchtowerStruct watchtower 
function campaignStruct:getWatchTower(index) end 

---Get settlement by internal name.
---@param name string 
---@return settlementStruct settlement 
function campaignStruct:getSettlementByName(name) end 

---Get a faction by it's internal name.
---@param name string 
---@return factionStruct faction 
function campaignStruct:getFaction(name) end 

---Get path to the current descr\_strat file used.
---@return string path 
function campaignStruct:getCampaignPath() end 

---Get a mercenary pool by index.
---@param index integer 
---@return mercPool pool 
function campaignStruct:getMercPool(index) end 

---Get a mercenary pool by name.
---@param name string 
---@return mercPool pool 
function campaignStruct:getMercPoolByName(name) end 

---Get a road by index.
---@param index integer 
---@return roadStruct road 
function campaignStruct:getRoad(index) end 

---Get a human faction by index.
---@param index integer 
---@return factionStruct playerFac 
function campaignStruct:getPlayerFaction(index) end 

---Get a faction by faction ID.
---@param factionID integer 
---@return factionStruct fac 
function campaignStruct:getFactionByID(factionID) end 

---Get a faction by turn order (best way to iterate over factions on the campaign map).
---@param index integer 
---@return factionStruct fac 
function campaignStruct:getFactionByOrder(index) end 

---Check if a faction is playable.
---@param factionID integer 
---@return boolean isPlayable 
function campaignStruct:isPlayableFaction(factionID) end 

---Check if a faction is player controlled.
---@param factionID integer 
---@return boolean isPlayer 
function campaignStruct:isPlayerFaction(factionID) end 

---Check if a faction is currently active in the campaign.
---@param factionID integer 
---@return boolean exists 
function campaignStruct:isExistingFaction(factionID) end 

---Check how many interfaction marriages have been done between the 2 factions.
---@param factionIDOne integer 
---@param factionIDTwo integer 
---@return integer marriageNum 
function campaignStruct:getNumberOfMarriages(factionIDOne, factionIDTwo) end 

---Get faction diplomacy data.
---@param factionIDOne integer 
---@param factionIDTwo integer 
---@return factionDiplomacy diplomacy 
function campaignStruct:getFactionDiplomacy(factionIDOne, factionIDTwo) end 

---Get settlement by index.
---@param index integer 
---@return settlementStruct sett 
function campaignStruct:getSettlement(index) end 

---Add a new .cas character strategy model to the game with a unique name. Only add it after loading to campaign map!
---@param skeleton string name of skeleton used.
---@param caspath string Relative path from the mods folder (starting with "mods/").
---@param shadowcaspath string Relative path from the mods folder (starting with "mods/").
---@param typename string Name of the new model used to assign.
---@param texturepath string Relative path from the mods folder (starting with "mods/").
---@param scale number 
function campaignStruct.addCharacterCas(skeleton, caspath, shadowcaspath, typename, texturepath, scale) end 

---Fire a game event message. Picture needs to be provided in the ui folders as default.
---@param eventName string 
---@param title string 
---@param body string 
---@param isChoice boolean? optional
---@param xCoord integer? optional, -1 to disable
---@param yCoord integer? optional, -1 to disable
---@param factions table? optional
function campaignStruct.historicEvent(eventName, title, body, isChoice, xCoord, yCoord, factions) end 

---Get a character by script label.
---@param label string 
---@return characterRecord charRecord 
function campaignStruct:getCharacterByLabel(label) end 

---Get the first character it finds holding an ancillary, or nil if it doesn't exist in the campaign.
---@param ancName string 
---@return characterRecord characterWithAnc 
function campaignStruct:worldwideAncillaryExists(ancName) end 

---Fire an event such as a disaster. You need vision of the event or the event must be in your lands to get a notification event message.
---@param name string Needs entry in historic_events.txt! Empty string to disable (no message).
---@param eventType string earthquake, flood, horde, storm, volcano, dustbowl, locusts, famine, plague, riot, fire, historic
---@param xCoord integer 
---@param yCoord integer 
---@param scale integer default is 1
---@param movie string Empty string if not applicable
function campaignStruct.execScriptEvent(name, eventType, xCoord, yCoord, scale, movie) end 

---Basic weather data table.
---@class weatherData
weatherData = { 

    ---get only
    ---@type number
    fogMin = nil,

    ---get only
    ---@type number
    fogMax = nil,

    ---get only
    ---@type number
    windStrength = nil,

    ---get only
    ---@type integer
    rainType = nil,

    ---get only
    ---@type integer
    rainLevel = nil,

}

---Basic faction diplomacy table.
---@class factionDiplomacy
factionDiplomacy = { 

    ---@type integer
    previousState = nil,

    ---(don't set, use setDipStance so all proper functionality fires)
    ---@type integer
    state = nil,

    ---(don't set, use setDipStance so all proper functionality fires)
    ---@type boolean
    hasTradeRights = nil,

    ---@type boolean
    hasMilitaryAccess = nil,

    ---@type boolean
    isTrustWorthy = nil,

    ---(don't set, use setDipStance so all proper functionality fires)
    ---@type boolean
    isProtectorate = nil,

    ---@type boolean
    isKnown = nil,

    ---@type boolean
    lastDiplomaticResult = nil,

    ---@type number
    factionStanding = nil,

    ---@type integer
    protectoratePayment = nil,

    ---@type integer
    numTurnsAllied = nil,

    ---@type integer
    numTurnsWar = nil,

    ---@type integer
    numTurnsState = nil,

    ---@type integer
    numTurnsTrade = nil,

    ---@type integer
    numTurnsAccess = nil,

    ---@type integer
    numTurnsProtectorate = nil,

    ---@type integer
    numTreaties = nil,

    ---@type integer
    numAssists = nil,

    ---@type integer
    numAssistFailures = nil,

    ---@type integer
    numEmptyThreats = nil,

    ---@type integer
    numValidThreats = nil,

    ---@type integer
    leaveTerritoryTimer = nil,

    ---@type integer
    winsInBattle = nil,

    ---@type integer
    tributeAmount = nil,

    ---@type integer
    tributeDuration = nil,

    ---@type integer
    turnsSinceLastMeeting = nil,

    ---@type integer
    diplomaticSuccess = nil,

    ---@type integer
    diplomaticBalance = nil,

    ---@type integer
    lastMapInfoTrade = nil,

    ---@type integer
    numTurnsCeasefire = nil,

}

---Basic College of Cardinals table.
---@class collegeOfCardinals
collegeOfCardinals = { 

    ---@type characterRecord
    pope = nil,

    ---@type integer
    cardinalNum = nil,

    ---@type integer
    electionResultsCount = nil,

    ---@type boolean
    popeIsOld = nil,

    ---@type boolean
    inElection = nil,

    ---@type integer
    popePreviousFactionID = nil,

    ---@type integer
    maxCardinals = nil,

    ---@type integer
    maxPreferati = nil,

}

---Get a specific cardinal by index.
---@param index integer 
---@return cardinal cardinal 
function collegeOfCardinals:getCardinal(index) end 

---Get a election result by index.
---@param index integer 
---@return cardinal electionResult 
function collegeOfCardinals:getElectionResult(index) end 

---Basic cardinal table.
---@class cardinal
cardinal = { 

    ---@type character
    character = nil,

    ---@type integer
    factionID = nil,

    ---@type integer
    voteFactionID = nil,

    ---@type boolean
    isPreferati = nil,

}

---Basic crusade table.
---@class crusadeStruct
crusadeStruct = { 

    ---@type integer
    startTurn = nil,

    ---@type integer
    endTurn = nil,

    ---@type settlementStruct
    targetSettlement = nil,

    ---@type integer
    length = nil,

    ---@type integer
    outcome = nil,

    ---@type integer
    orthodoxID = nil,

    ---@type integer
    catholicID = nil,

    ---@type integer
    hereticID = nil,

}

---Check if a faction has joined this crusade.
---@param factionID integer 
---@return boolean hasJoined 
function crusadeStruct:factionJoined(factionID) end 

---Check if a faction has joined this crusade last turn.
---@param factionID integer 
---@return boolean hasJoined 
function crusadeStruct:factionJoinedLastTurn(factionID) end 

---Check if a faction has fought in this crusade.
---@param factionID integer 
---@return boolean hasFought 
function crusadeStruct:factionFought(factionID) end 

---Check if a faction is in the crusade target region.
---@param factionID integer 
---@return boolean inTarget 
function crusadeStruct:factionInTarget(factionID) end 

---Get reward a faction will get for winning this crusade.
---@param factionID integer 
---@return crusadeReward reward 
function crusadeStruct:getReward(factionID) end 

---Start a new crusade.
---@param target settlementStruct 
---@param timeToJoin integer (Game uses 10).
---@param caller character 
function crusadeStruct:start(target, timeToJoin, caller) end 

---Stop an ongoing crusade.
---@param result integer none = 0, success = 1, failure = 2, cancelled = 3
function crusadeStruct:stop(result) end 

---Basic jihad table.
---@class jihadStruct
jihadStruct = { 

    ---@type integer
    startTurn = nil,

    ---@type integer
    endTurn = nil,

    ---@type settlementStruct
    targetSettlement = nil,

    ---@type integer
    length = nil,

    ---@type integer
    outcome = nil,

    ---@type integer
    muslimID = nil,

}

---Check if a faction has joined this jihad.
---@param factionID integer 
---@return boolean hasJoined 
function jihadStruct:factionJoined(factionID) end 

---Check if a faction has joined this jihad last turn.
---@param factionID integer 
---@return boolean hasJoined 
function jihadStruct:factionJoinedLastTurn(factionID) end 

---Check if a faction has fought in this jihad.
---@param factionID integer 
---@return boolean hasFought 
function jihadStruct:factionFought(factionID) end 

---Check if a faction is in the jihad target region.
---@param factionID integer 
---@return boolean inTarget 
function jihadStruct:factionInTarget(factionID) end 

---Get reward a faction will get for winning this jihad.
---@param factionID integer 
---@return crusadeReward reward 
function jihadStruct:getReward(factionID) end 

---Start a new jihad.
---@param target settlementStruct 
---@param timeToJoin integer (Game uses 10).
---@param caller character 
function jihadStruct:start(target, timeToJoin, caller) end 

---Stop an ongoing jihad.
---@param result integer none = 0, success = 1, failure = 2, cancelled = 3
function jihadStruct:stop(result) end 

---Basic crusadeReward table.
---@class crusadeReward
crusadeReward = { 

    ---@type integer
    money = nil,

    ---@type integer
    experience = nil,

}

---Basic mercenary pool table.
---@class mercPool
mercPool = { 

    ---@type string
    name = nil,

}

---Get amount of mercenary units a region has.
---@return integer mercUnitNum 
function mercPool:getMercUnitNum() end 

---Add a new mercenary unit to a pool.
---@param idx integer EDU index, supports EOP units.
---@param exp integer Starting experience.
---@param cost integer 
---@param repmin number Minimum replenishment rate.
---@param repmax number Maximum replenishment rate.
---@param maxunits integer Maximum Pool.
---@param startpool number Starting pool.
---@param startyear integer (0 to disable) Use 0 if the startyear is before the year you introduce the merc, not an earlier startyear!
---@param endyear integer (0 to disable)
---@param crusading integer 
---@return mercPoolUnit mercunit 
function mercPool:addMercUnit(idx, exp, cost, repmin, repmax, maxunits, startpool, startyear, endyear, crusading) end 

---Get a mercenary unit from a pool by index.
---@param idx integer 
---@return mercPoolUnit mercUnit 
function mercPool:getMercUnit(idx) end 

---Basic mercenary unit table.
---@class mercPoolUnit
mercPoolUnit = { 

    ---@type eduEntry
    eduEntry = nil,

    ---@type integer
    experience = nil,

    ---@type integer
    cost = nil,

    ---@type number
    replenishMin = nil,

    ---@type number
    replenishMax = nil,

    ---@type integer
    maxUnits = nil,

    ---@type number
    currentPool = nil,

    ---@type integer
    startYear = nil,

    ---@type integer
    endYear = nil,

    ---@type integer
    crusading = nil,

    ---@type integer
    poolIndex = nil,

    ---@type integer
    mercPoolUnitIndex = nil,

    ---@type mercPool
    mercPool = nil,

}

---Set or remove a religion requirement for a mercenary unit.
---@param religion integer 
---@param set boolean True means enable this religion requirement, False means disable.
function mercPoolUnit:setMercReligion(religion, set) end 

---Basic watchtowerStruct table
---@class watchtowerStruct
watchtowerStruct = { 

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type integer
    factionID = nil,

    ---@type integer
    regionID = nil,

    ---@type factionStruct
    faction = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type armyStruct
    blockingArmy = nil,

}

---Basic portStruct table
---@class portStruct
portStruct = { 

    ---land tile, Note: setting this only moves port's strat model.
    ---@type integer
    xCoord = nil,

    ---land tile, Note: setting this only moves port's strat model.
    ---@type integer
    yCoord = nil,

    ---Note: port's ownership changes to blockading faction (army on port)
    ---@type factionStruct
    ownerFaction = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type integer
    regionID = nil,

    ---@type integer
    cultureID = nil,

    ---@type integer
    numTurnsBlocked = nil,

    ---Enemy army blockading the port, by standing on it's tile, check for nil.
    ---@type armyStruct
    blockadingArmy = nil,

    ---water tile, only upgraded ports have this, check for nil.
    ---@type dockStruct
    dock = nil,

}

---Basic dockStruct table
---@class dockStruct
dockStruct = { 

    ---water tile, Note: setting only moves dock strat model
    ---@type integer
    xCoord = nil,

    ---water tile, Note: setting only moves dock strat model
    ---@type integer
    yCoord = nil,

    ---@type integer
    regionID = nil,

    ---Note: port's ownership changes to blockading faction (army on port)
    ---@type factionStruct
    ownerFaction = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type integer
    cultureID = nil,

    ---@type integer
    numTurnsBlocked = nil,

    ---@type portStruct
    port = nil,

    ---@type armyStruct
    dockedArmy = nil,

}

---Basic tradeResource table
---@class tradeResource
tradeResource = { 

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type integer
    regionID = nil,

    ---@type integer
    resourceID = nil,

    ---@type settlementStruct
    settlement = nil,

}

---Set the resource's strat model.
---@param modelId integer Added with M2TWEOP.addModelToGame
function tradeResource:setStratModel(modelId) end 

---Get the resource's ID.
---@return integer ID 
function tradeResource:getResourceID() end 

---Get the resource's trade value.
---@return integer value 
function tradeResource:getResourceValue() end 

---Check if the resource can have a mine.
---@return integer hasMine 0=no mine, 1=mine
function tradeResource:getResourceHasMine() end 

---Check if the resource has a mine built.
---@return boolean built 
function tradeResource:hasMineBuilt() end 

---Get the resource's image (icon) relative path.
---@return string imagePath 
function tradeResource:getResourceImage() end 

---Basic campaignDifficulty1 table.
---@class campaignDifficulty1
campaignDifficulty1 = { 

    ---@type integer
    orderFromGrowth = nil,

    ---@type boolean
    aiHireMercenaries = nil,

    ---@type number
    brigandChanceAi = nil,

    ---@type number
    brigandChancePlayer = nil,

    ---@type integer
    maxPlayerPeaceTurns = nil,

    ---@type number
    taxIncomeModifierPlayer = nil,

    ---@type number
    farmingIncomeModifierPlayer = nil,

    ---@type number
    incomeModifierAi = nil,

    ---@type number
    playerRegionValueModifier = nil,

}

---Basic campaignDifficulty2 table.
---@class campaignDifficulty2
campaignDifficulty2 = { 

    ---@type integer
    popGrowthBonusAi = nil,

    ---@type integer
    publicOrderBonusAi = nil,

    ---@type integer
    experienceBonusAi = nil,

    ---@type integer
    incomeBonusAi = nil,

    ---@type boolean
    dontAttackAiDefenders = nil,

    ---@type boolean
    forceNavalInvasions = nil,

    ---@type boolean
    brigandControllerTargetSettlements = nil,

}

---Basic selectionInfo table
---@class selectionInfo
selectionInfo = { 

    ---(Get only)
    ---@type character
    selectedCharacter = nil,

    ---(Get only)
    ---@type character
    hoveredCharacter = nil,

    ---You can only select non-player characters with zoom to location button (Get only)
    ---@type character
    selectedEnemyCharacter = nil,

    ---(Get only)
    ---@type settlementStruct
    selectedSettlement = nil,

    ---(Get only)
    ---@type settlementStruct
    hoveredSettlement = nil,

    ---You can only select non-player settlements with zoom to location button (Get only)
    ---@type settlementStruct
    selectedEnemySettlement = nil,

    ---(Get only)
    ---@type fortStruct
    selectedFort = nil,

    ---(Get only)
    ---@type fortStruct
    hoveredFort = nil,

    ---You can only select non-player forts with zoom to location button (Get only)
    ---@type fortStruct
    selectedEnemyFort = nil,

}

---Basic characterMovementExtents table
---@class characterMovementExtents
characterMovementExtents = { 

    ---(only get)
    ---@type integer
    searchType = nil,

    ---@type integer
    totalTiles = nil,

    ---@type integer
    xCoordMin = nil,

    ---@type integer
    yCoordMin = nil,

    ---@type integer
    xCoordMax = nil,

    ---@type integer
    yCoordMax = nil,

    ---@type integer
    turns = nil,

    ---@type character
    character = nil,

}

---Get a movement extent tile.
---@param xCoord integer 
---@param yCoord integer 
---@return movementExtentTile extentTile 
function characterMovementExtents:getTile(xCoord, yCoord) end 

---Basic movementExtentTile table
---@class movementExtentTile
movementExtentTile = { 

    ---@type tileStruct
    tile = nil,

    ---@type number
    moveCost = nil,

    ---@type integer
    turns = nil,

}

---Basic characterMoveData table
---@class characterMoveData
characterMoveData = { 

    ---@type character
    character = nil,

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type integer
    searchType = nil,

    ---@type integer
    turns = nil,

    ---@type integer
    settlementCount = nil,

    ---@type integer
    fortCount = nil,

    ---@type integer
    tileCount = nil,

    ---@type integer
    armyCount = nil,

    ---@type integer
    resourceCount = nil,

    ---@type integer
    characterCount = nil,

    ---@type characterMovementExtents
    moveExtents = nil,

}

---Get a settlement.
---@param index integer 
---@return moveDataSettlement settlement 
function characterMoveData:getSettlement(index) end 

---Get a character.
---@param index integer 
---@return moveDataCharacter foundChar 
function characterMoveData:getCharacter(index) end 

---Get an army.
---@param index integer 
---@return moveDataArmy army 
function characterMoveData:getArmy(index) end 

---Get a resource.
---@param index integer 
---@return moveDataResource resource 
function characterMoveData:getResource(index) end 

---Get a fort.
---@param index integer 
---@return moveDataFort fort 
function characterMoveData:getFort(index) end 

---Get a tile.
---@param index integer 
---@return moveDataTile tile 
function characterMoveData:getTile(index) end 

---Sort settlements by distance (already sorted by default).
function characterMoveData:sortSettlementsDistance() end 

---Sort settlements by strength.
function characterMoveData:sortSettlementsStrength() end 

---Sort armies by distance (already sorted by default).
function characterMoveData:sortArmiesDistance() end 

---Sort armies by strength.
function characterMoveData:sortArmiesStrength() end 

---Sort forts by distance (already sorted by default).
function characterMoveData:sortFortsDistance() end 

---Sort forts by strength.
function characterMoveData:sortFortsStrength() end 

---Basic moveDataSettlement table
---@class moveDataSettlement
moveDataSettlement = { 

    ---@type settlementStruct
    settlement = nil,

    ---@type number
    moveCost = nil,

    ---@type integer
    turns = nil,

    ---@type boolean
    ownFaction = nil,

}

---Basic moveDataCharacter table
---@class moveDataCharacter
moveDataCharacter = { 

    ---@type character
    character = nil,

    ---@type number
    moveCost = nil,

    ---@type integer
    turns = nil,

    ---@type boolean
    ownFaction = nil,

}

---Basic moveDataArmy table
---@class moveDataArmy
moveDataArmy = { 

    ---@type armyStruct
    army = nil,

    ---@type number
    moveCost = nil,

    ---@type integer
    turns = nil,

    ---@type boolean
    ownFaction = nil,

}

---Basic moveDataResource table
---@class moveDataResource
moveDataResource = { 

    ---@type tradeResource
    resource = nil,

    ---@type number
    moveCost = nil,

    ---@type integer
    turns = nil,

    ---@type boolean
    ownFaction = nil,

}

---Basic moveDataFort table
---@class moveDataFort
moveDataFort = { 

    ---@type fortStruct
    fort = nil,

    ---@type number
    moveCost = nil,

    ---@type integer
    turns = nil,

    ---@type boolean
    ownFaction = nil,

}

---Basic moveDataTile table
---@class moveDataTile
moveDataTile = { 

    ---@type tileStruct
    tile = nil,

    ---@type number
    moveCost = nil,

    ---@type integer
    turns = nil,

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

}

---Basic eopAiConfig table
---@class eopAiConfig
eopAiConfig = { 

    ---@type boolean
    enabled = nil,

    ---@type boolean
    enableLogging = nil,

    ---@type number
    aggressionFactor = nil,

    ---@type number
    defenseFactor = nil,

    ---@type number
    residenceFactor = nil,

    ---@type number
    aidFactor = nil,

    ---@type number
    moveCostFactor = nil,

    ---@type number
    powerFactor = nil,

    ---@type number
    nonBorderFactor = nil,

    ---@type number
    invadePriorityFactor = nil,

    ---@type integer
    maxTurnSearchCount = nil,

}

---Get faction specific data.
---@param fac factionStruct 
---@return aiFactionData data 
function eopAiConfig.getFactionData(fac) end 

---Basic aiFactionData table
---@class aiFactionData
aiFactionData = { 

}

---Set factor for targetting a faction.
---@param fac factionStruct 
---@param factor number 
function aiFactionData:setTargetFactionFactor(fac, factor) end 

---Set factor for aiding a faction.
---@param fac factionStruct 
---@param factor number 
function aiFactionData:setAidFactionFactor(fac, factor) end 

---Set factor for a specific settlement (defense or attack).
---@param sett settlementStruct 
---@param factor number 
function aiFactionData:setSettlementFactor(sett, factor) end 

---Set factor for targetting a religion.
---@param religionID integer 
---@param factor number 
function aiFactionData:setTargetReligionFactor(religionID, factor) end 

---Set factor for aiding a religion.
---@param religionID integer 
---@param factor number 
function aiFactionData:setAidReligionFactor(religionID, factor) end 

---Basic campaignDb Recruitment table
---@class campaignDbRecruitment
campaignDbRecruitment = { 

    ---@type integer
    recruitmentSlots = nil,

    ---@type integer
    retrainingSlots = nil,

    ---@type boolean
    deplenishPoolsWithCaps = nil,

    ---@type number
    deplenishMultiplier = nil,

    ---@type number
    deplenishOffset = nil,

    ---@type boolean
    addDisbandNoCaps = nil,

    ---@type integer
    percentagePoolReductionLost = nil,

    ---@type integer
    percentagePoolReductionOccupy = nil,

    ---@type integer
    percentagePoolReductionSack = nil,

    ---@type integer
    percentagePoolReductionExterminate = nil,

    ---@type integer
    maxAgentsPerTurn = nil,

}

---Basic campaignDb Religion table
---@class campaignDbReligion
campaignDbReligion = { 

    ---@type integer
    maxWitchesPerRegion = nil,

    ---@type integer
    maxWitches = nil,

    ---@type integer
    maxHereticsPerRegion = nil,

    ---@type integer
    maxHeretics = nil,

    ---@type integer
    maxInquisitorsPerRegion = nil,

    ---@type integer
    maxInquisitors = nil,

    ---@type number
    maxHereticsConversionModifier = nil,

    ---@type number
    hereticConversionRateModifier = nil,

    ---@type number
    hereticConversionRateOffset = nil,

    ---@type number
    witchConversionRateOffset = nil,

    ---@type number
    inquisitorConversionRateModifier = nil,

    ---@type number
    inquisitorConversionRateOffset = nil,

    ---@type number
    priestConversionRateModifier = nil,

    ---@type number
    priestConversionRateOffset = nil,

    ---@type number
    witchChanceModifier = nil,

    ---@type number
    hereticChanceModifier = nil,

    ---@type number
    inquisitorChanceModifier = nil,

    ---@type integer
    minCardinalPiety = nil,

    ---@type number
    convertToHereticBaseModifier = nil,

    ---@type number
    convertToHereticUnorthodoxModifier = nil,

    ---@type integer
    inquisitorTurnStart = nil,

}

---Basic campaignDb Bribery table
---@class campaignDbBribery
campaignDbBribery = { 

    ---@type number
    baseCharacterChance = nil,

    ---@type number
    religionModifier = nil,

    ---@type number
    combinedAttributeModifier = nil,

    ---@type number
    briberAttributeDivisor = nil,

    ---@type number
    bribeeAttributeDivisor = nil,

    ---@type number
    armySizeModifier = nil,

    ---@type number
    baseSettlementChance = nil,

    ---@type number
    settlementLoyaltyModifier = nil,

    ---@type number
    settlementPopulationModifier = nil,

    ---@type number
    factionStandingDivisor = nil,

    ---@type number
    maxBribeChance = nil,

    ---@type number
    minBribeChance = nil,

    ---@type number
    bribeChanceModifier = nil,

}

---Basic campaignDb Family Tree table
---@class campaignDbFamilyTree
campaignDbFamilyTree = { 

    ---@type integer
    maxAge = nil,

    ---@type integer
    maxAgeForMarriageMale = nil,

    ---@type integer
    maxAgeForMarriageForFemale = nil,

    ---@type integer
    maxAgeBeforeDeath = nil,

    ---@type integer
    maxAgeOfChild = nil,

    ---@type integer
    oldAge = nil,

    ---@type integer
    ageOfManhood = nil,

    ---@type integer
    daughtersAgeOfConsent = nil,

    ---@type integer
    daughtersRetirementAge = nil,

    ---@type integer
    ageDifferenceMin = nil,

    ---@type integer
    ageDifferenceMax = nil,

    ---@type integer
    parentToChildMinAgeDiff = nil,

    ---@type integer
    minAdoptionAge = nil,

    ---@type integer
    maxAdoptionAge = nil,

    ---@type integer
    maxAgeForConception = nil,

    ---@type integer
    ageOfManhoodClose = nil,

    ---@type integer
    maxNumberOfChildren = nil,

}

---Basic campaignDb Diplomacy table
---@class campaignDbDiplomacy
campaignDbDiplomacy = { 

    ---@type integer
    maxDiplomacyItems = nil,

    ---@type integer
    nullMissionScore = nil,

}

---Basic campaignDb Display table
---@class campaignDbDisplay
campaignDbDisplay = { 

    ---@type number
    characterSelectionRadius = nil,

    ---@type number
    characterSelectionHeight = nil,

    ---@type number
    characterSelectionHeightCrouching = nil,

    ---@type number
    diplomacyScrollHeight = nil,

    ---@type number
    factionStandingMin = nil,

    ---@type number
    factionStandingMax = nil,

    ---@type boolean
    UseOrigRebelFactionModels = nil,

    ---@type integer
    hudTabTextOffset = nil,

    ---@type boolean
    useFactionCreatorSettModels = nil,

    ---@type integer
    standardSoldierLimit = nil,

    ---@type integer
    standardSoldierLevelScale = nil,

    ---@type boolean
    clearBattleModelsOnNewFaction = nil,

}

---Basic campaignDb Ransom table
---@class campaignDbRansom
campaignDbRansom = { 

    ---@type number
    captorReleaseChanceBase = nil,

    ---@type number
    captorReleaseChanceChivMod = nil,

    ---@type number
    captorRansomChanceBase = nil,

    ---@type number
    captorRansomChanceChivMod = nil,

    ---@type number
    captorRansomChanceTmMod = nil,

    ---@type number
    captiveRansomChanceBase = nil,

    ---@type number
    captiveRansomChanceChivMod = nil,

    ---@type number
    captiveRansomChanceTmMod = nil,

    ---@type number
    captiveRansomChanceMsmMod = nil,

}

---Basic campaignDb Autoresolve table
---@class campaignDbAutoresolve
campaignDbAutoresolve = { 

    ---@type number
    minCapturePercent = nil,

    ---@type number
    maxCapturePercent = nil,

    ---@type number
    lopsidedThresh = nil,

    ---@type number
    lopsidedHnMod = nil,

    ---@type integer
    separationMissileAdd = nil,

    ---@type number
    navalSinkModifier = nil,

    ---@type number
    navalSinkOffset = nil,

    ---@type number
    navalSinkMax = nil,

    ---@type number
    sallyAtDefDrawDivisor = nil,

    ---@type boolean
    useNewSettAutoResolve = nil,

    ---@type integer
    gateDefenceNumOilAttacks = nil,

    ---@type number
    gateDefenceStrengthOilBase = nil,

    ---@type integer
    gateDefenceNumArrowAttacks = nil,

    ---@type number
    gateDefenceStrengthArrowBase = nil,

    ---@type number
    gateDefenceStrengthArrowLevelModifier = nil,

    ---@type integer
    gateDefenceNumDefaultAttacks = nil,

    ---@type number
    gateDefenceStrengthDefaultBase = nil,

    ---@type number
    gateDefenceStrengthDefaultLevelModifier = nil,

    ---@type integer
    settDefenceNumArrowAttacks = nil,

    ---@type number
    settDefenceStrengthArrowBase = nil,

    ---@type number
    settDefenceStrengthArrowModifier = nil,

    ---@type number
    settDefenceStrengthDefaultBase = nil,

    ---@type number
    settDefenceStrengthDefaultModifier = nil,

    ---@type number
    displayStrengthOil = nil,

    ---@type number
    displayStrengthArrow = nil,

    ---@type number
    displayStrengthDefault = nil,

}

---Basic campaignDb Settlement table
---@class campaignDbSettlement
campaignDbSettlement = { 

    ---@type number
    sackMoneyModifier = nil,

    ---@type number
    exterminateMoneyModifier = nil,

    ---@type number
    chivSpfModifier = nil,

    ---@type number
    chivSofModifier = nil,

    ---@type number
    dreadSofModifier = nil,

    ---@type number
    pietyCorruptionModifier = nil,

    ---@type number
    pietyAdminSifModifier = nil,

    ---@type number
    portToPortMpMin = nil,

    ---@type number
    heresyUnrestNodifier = nil,

    ---@type number
    religionUnrestModifier = nil,

    ---@type integer
    siegeGearRequiredForCityLevel = nil,

    ---@type integer
    noTowersOnlyForCityLevel = nil,

    ---@type integer
    minTurnKeepRebelGarrison = nil,

    ---@type boolean
    destroyEmptyForts = nil,

    ---@type boolean
    canBuildForts = nil,

    ---@type number
    raceGameCostsModifier = nil,

    ---@type number
    altRelAlliedModifier = nil,

    ---@type number
    altRelGovModifierBase = nil,

    ---@type number
    altRelGovCoefficient = nil,

}

---Basic campaignDb Revolt table
---@class campaignDbRevolt
campaignDbRevolt = { 

    ---@type number
    endTurnModifier = nil,

    ---@type number
    excommunicatedModifier = nil,

    ---@type number
    newLeaderModifier = nil,

    ---@type number
    maxEffectiveLoyalty = nil,

    ---@type number
    rebelRegionModifier = nil,

    ---@type number
    shadowRegionModifier = nil,

    ---@type number
    rebelBorderModifier = nil,

    ---@type number
    shadowBorderModifier = nil,

    ---@type number
    numUnitsModifier = nil,

    ---@type number
    captainModifier = nil,

    ---@type number
    minRevoltChance = nil,

    ---@type number
    maxRevoltChance = nil,

    ---@type number
    aiRevoltModifier = nil,

    ---@type number
    shadowAuthorityModifier = nil,

    ---@type number
    shadowAuthorityModifierSett = nil,

}

---Basic campaignDb Horde table
---@class campaignDbHorde
campaignDbHorde = { 

    ---@type integer
    endTargetFactionBonus = nil,

    ---@type integer
    startTargetFactionBonus = nil,

    ---@type integer
    farmingLevelBonus = nil,

    ---@type integer
    sharedTargetBonus = nil,

    ---@type integer
    disbandingHordeBonus = nil,

    ---@type integer
    hordeStartingRegionBonus = nil,

    ---@type integer
    hordeTargetResourceBonus = nil,

}

---Basic campaignDb Merchants table
---@class campaignDbMerchants
campaignDbMerchants = { 

    ---@type number
    baseIncomeModifier = nil,

    ---@type number
    tradeBonusOffset = nil,

}

---Basic campaignDb Agents table
---@class campaignDbAgents
campaignDbAgents = { 

    ---@type number
    denounceInquisitorBaseChance = nil,

    ---@type number
    DenouncePriestBaseChance = nil,

    ---@type number
    denounceAttackModifier = nil,

    ---@type number
    denounceDefenceModifier = nil,

    ---@type integer
    denounceChanceMax = nil,

    ---@type number
    assassinateBaseChance = nil,

    ---@type number
    assassinateAttackModifier = nil,

    ---@type number
    assassinateDefenceModifier = nil,

    ---@type number
    assassinatePublicModifier = nil,

    ---@type number
    assassinatePersonalModifier = nil,

    ---@type number
    assassinateCounterSpyModifier = nil,

    ---@type number
    assassinateAgentModifier = nil,

    ---@type number
    assassinateOwnRegionModifier = nil,

    ---@type number
    assassinateAssassinateAttrModifier = nil,

    ---@type integer
    assassinateChanceMin = nil,

    ---@type integer
    assassinateChanceMax = nil,

    ---@type number
    denounceHereticAttemptModifier = nil,

    ---@type number
    denounceCharacterAttemptModifier = nil,

    ---@type number
    acquisitionBaseChance = nil,

    ---@type number
    acquisitionLevelModifier = nil,

    ---@type number
    acquisitionAttackTradeRightsModifier = nil,

    ---@type number
    acquisitionDefenceTradeRightsModifier = nil,

    ---@type integer
    acquisitionChanceMin = nil,

    ---@type integer
    acquisitionChanceMax = nil,

    ---@type number
    inquisitorCrtHeresyDivisor = nil,

    ---@type number
    inquisitorCrtPfpModifier = nil,

    ---@type number
    inquisitorCrtPfpModifierMin = nil,

    ---@type number
    inquisitorCrtPfpModifierMax = nil,

    ---@type number
    inquisitorCrtChanceMax = nil,

    ---@type number
    spyBaseChance = nil,

    ---@type number
    spyLevelModifier = nil,

    ---@type number
    notSpyLevelModifier = nil,

    ---@type number
    spyPublicModifier = nil,

    ---@type number
    spyCounterSpyModifier = nil,

    ---@type number
    spyDistanceModifier = nil,

    ---@type number
    spySecretAgentTargetModifier = nil,

    ---@type number
    spySedentaryTurnsModifier = nil,

    ---@type number
    spyAllianceModifier = nil,

    ---@type number
    spyTargetEngagedModifier = nil,

    ---@type number
    spyInSettlementModifier = nil,

    ---@type number
    spyWatchtowerModifier = nil,

    ---@type number
    spyInOwnRegionModifier = nil,

    ---@type integer
    spyChanceMin = nil,

    ---@type integer
    spyChanceMax = nil,

}

---Basic campaignDb Crusades table
---@class campaignDbCrusades
campaignDbCrusades = { 

    ---@type integer
    requiredJihadPiety = nil,

    ---@type number
    maxDisbandProgress = nil,

    ---@type number
    nearTargetNoDisbandDistance = nil,

    ---@type integer
    disbandProgressWindow = nil,

    ---@type integer
    crusadeCalledStartTurn = nil,

    ---@type integer
    jihadCalledStartTurn = nil,

    ---@type number
    movementPointsModifier = nil,

}

---Basic campaignDb Ai table
---@class campaignDbAi
campaignDbAi = { 

    ---@type number
    priestReligionMin = nil,

    ---@type number
    priestReligionMax = nil,

    ---@type number
    priestHeresyMin = nil,

    ---@type number
    priestHeresyMax = nil,

    ---@type number
    priestReligionExport = nil,

    ---@type number
    priestMaxProdTurns = nil,

    ---@type integer
    merchantMinSurvivalAcquire = nil,

    ---@type number
    attStrModifier = nil,

    ---@type number
    siegeAttStrModifier = nil,

    ---@type number
    crusadeAttStrModifier = nil,

    ---@type number
    sallyAttStrModifier = nil,

    ---@type number
    ambushAttStrModifier = nil,

    ---@type number
    strLimitWeak = nil,

    ---@type number
    strLimitStrong = nil,

}

---Basic campaignDb Misc table
---@class campaignDbMisc
campaignDbMisc = { 

    ---@type integer
    fortDevastationDistance = nil,

    ---@type integer
    armyDevastationDistance = nil,

    ---@type integer
    fortDevastationModifier = nil,

    ---@type integer
    armyDevastationModifier = nil,

    ---@type boolean
    allowEnemyForts = nil,

    ---@type integer
    siegeMovementPointsModifier = nil,

    ---@type integer
    cavalryMovementPointsModifier = nil,

}

---Basic campaignDb table
---@class campaignDb
campaignDb = { 

    ---@type campaignDbRecruitment
    recruitment = nil,

    ---@type campaignDbReligion
    religion = nil,

    ---@type campaignDbBribery
    bribery = nil,

    ---@type campaignDbFamilyTree
    familyTree = nil,

    ---@type campaignDbDiplomacy
    diplomacy = nil,

    ---@type campaignDbDisplay
    display = nil,

    ---@type campaignDbRansom
    ransom = nil,

    ---@type campaignDbAutoresolve
    autoResolve = nil,

    ---@type campaignDbSettlement
    settlement = nil,

    ---@type campaignDbRevolt
    revolt = nil,

    ---@type campaignDbHorde
    horde = nil,

    ---@type campaignDbMerchants
    merchants = nil,

    ---@type campaignDbAgents
    agents = nil,

    ---@type campaignDbCrusades
    crusades = nil,

    ---@type campaignDbAi
    ai = nil,

    ---@type campaignDbMisc
    misc = nil,

}

---Basic campaignDb Extra table (these options are just in another place in memory)
---@class campaignDbExtra
campaignDbExtra = { 

    ---@type boolean
    clearPoolsWithCaps = nil,

    ---@type boolean
    addInitialWithCaps = nil,

    ---@type boolean
    forceClampToMax = nil,

    ---@type number
    witchConversionRateModifier = nil,

    ---@type boolean
    inquisitorTargetCrusades = nil,

    ---@type number
    foundingConversionDefaultRate = nil,

    ---@type number
    ownerConversionDefaultRate = nil,

    ---@type number
    neighbourNormaliseWeight = nil,

    ---@type number
    governorConversionRateOffset = nil,

    ---@type number
    governorConversionRateModifier = nil,

    ---@type number
    spyConversionRateOffset = nil,

    ---@type number
    spyConversionRateModifier = nil,

    ---@type number
    spyConversionRateForeignModifier = nil,

    ---@type boolean
    bribeToFamilyTree = nil,

    ---@type boolean
    enemiesRejectGifts = nil,

    ---@type boolean
    useBalanceOwed = nil,

    ---@type boolean
    recruitmentSortSimple = nil,

    ---@type boolean
    keepOriginalHereticPortraits = nil,

    ---@type boolean
    altSettOrderColors = nil,

    ---@type boolean
    separateGamesRaces = nil,

    ---@type integer
    chivalryDisplayThreshold = nil,

    ---@type boolean
    captiveRansomForSlave = nil,

    ---@type boolean
    switchableDefenceExposed = nil,

    ---@type number
    gateDefenceStrengthOilLevelModifier = nil,

    ---@type integer
    settDefenceStrengthNumDefaultAttacks = nil,

    ---@type integer
    siegeGearRequiredForCastleLevel = nil,

    ---@type integer
    noTowersOnlyForCastleLevel = nil,

    ---@type integer
    fortFortificationLevel = nil,

    ---@type boolean
    alternativeReligiousUnrest = nil,

    ---@type boolean
    revoltAdditionalArmies = nil,

    ---@type boolean
    revoltCrusadingArmies = nil,

    ---@type boolean
    agentsCanHide = nil,

    ---@type integer
    denounceChanceMin = nil,

    ---@type number
    inquisitorCrtChanceMin = nil,

    ---@type boolean
    inquisitorTargetLeaders = nil,

    ---@type boolean
    inquisitorTargetHeirs = nil,

    ---@type boolean
    spyRescaleChance = nil,

    ---@type boolean
    allowResourceForts = nil,

    ---@type boolean
    enableHotseatMessages = nil,

    ---@type boolean
    enableBananaRepublicCheat = nil,

    ---@type boolean
    enableUnitAccentOverrides = nil,

}

---characters as they exist on the strategy map - dead characters, wives, children, and off-map characters do not have these fields.
---@class character
character = { 

    ---use characterType enum
    ---@type integer
    characterType = nil,

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type characterRecord
    characterRecord = nil,

    ---@type factionStruct
    faction = nil,

    ---can check if the character died before the game updates he is dead like post battle event
    ---@type boolean
    markedForDeath = nil,

    ---@type boolean
    inEnemyZOC = nil,

    ---@type boolean
    inEnemyTerritory = nil,

    ---@type integer
    sedentaryTurns = nil,

    ---@type boolean
    isPlagued = nil,

    ---@type boolean
    hasEopOrders = nil,

    ---@type integer
    plaguedDuration = nil,

    ---@type unit
    bodyguards = nil,

    ---@type armyStruct
    army = nil,

    ---in the army but not leading it
    ---@type armyStruct
    visitingArmy = nil,

    ---@type integer
    actionType = nil,

    ---@type boolean
    unusedMovePoints = nil,

    ---@type boolean
    infiniteMovePoints = nil,

    ---@type integer
    regionID = nil,

    ---@type number
    movePointsCharacter = nil,

    ---@type number
    movePointsModifier = nil,

    ---@type number
    movePointsMaxCharacter = nil,

    ---@type number
    movePointsMaxArmy = nil,

    ---@type number
    movePointsArmy = nil,

    ---sets both army and character move points.
    ---@type number
    movePoints = nil,

    ---@type integer
    turnJoinedCrusade = nil,

    ---@type integer
    numTurnsIdle = nil,

    ---0 to 1
    ---@type number
    percentCharacterReligionInRegion = nil,

    ---@type number
    popConvertedThisTurn = nil,

    ---@type integer
    timeInRegion = nil,

    ---for auxiliary generals, not leading general
    ---@type integer
    timeWithArmy = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type fortStruct
    fort = nil,

    ---@type portStruct
    dockedPort = nil,

    ---@type portStruct
    blockedPort = nil,

    ---@type crusadeStruct
    crusade = nil,

    ---@type jihadStruct
    jihad = nil,

    ---@type integer
    currentTurn = nil,

    ---@type number
    distanceToCrusadeTarget = nil,

    ---@type integer
    disbandProgress = nil,

    ---@type integer
    isCrusadeDisbandActive = nil,

    ---see descr\_hero\_abilities.xml
    ---@type string
    ability = nil,

}

---Get the character type. Use characterType enum.
---@return integer typeId 
function character:getTypeID() end 

---Get the character type. Use characterType enum.
---@return string type 
function character:getTypeName() end 

---Set the character type. Use characterType enum.
---@param typeId integer 
function character:setTypeID(typeId) end 

---Issue regular move command, character must have movement points.
---@param xCoord integer 
---@param yCoord integer 
function character:moveToTile(xCoord, yCoord) end 

---Issue diplomacy command.
---@param targetChar character 
function character:diplomacyCharacter(targetChar) end 

---Issue assassination command.
---@param targetChar character 
function character:assassinate(targetChar) end 

---Issue marry command.
---@param targetChar character 
function character:marry(targetChar) end 

---Issue spyCharacter command.
---@param targetChar character 
function character:spyCharacter(targetChar) end 

---Issue denounce command.
---@param targetChar character 
function character:denounce(targetChar) end 

---Issue bribe command.
---@param targetChar character 
function character:bribe(targetChar) end 

---Issue acquire command.
---@param targetChar character 
function character:acquire(targetChar) end 

---Issue sabotage command.
---@param target building 
function character:sabotage(target) end 

---Switch character faction.
---@param newFac factionStruct 
---@param keepArmy boolean 
---@param keepUnit boolean 
function character:switchFaction(newFac, keepArmy, keepUnit) end 

---Issue diplomacy command.
---@param targetSettlement settlementStruct 
function character:diplomacySettlement(targetSettlement) end 

---Issue bribe command.
---@param targetSettlement settlementStruct 
function character:bribeSettlement(targetSettlement) end 

---Issue spy command.
---@param targetSettlement settlementStruct 
function character:spySettlement(targetSettlement) end 

---Issue sabotage command.
---@param targetSettlement settlementStruct 
function character:sabotageSettlement(targetSettlement) end 

---Issue diplomacy command.
---@param targetFort fortStruct 
function character:diplomacyFort(targetFort) end 

---Issue bribe command.
---@param targetFort fortStruct 
function character:bribeFort(targetFort) end 

---Issue spy command.
---@param targetFort fortStruct 
function character:spyFort(targetFort) end 

---Instantly teleport character to the coordinates, if occupied a random place in the same region is chosen.
---@param xCoord integer 
---@param yCoord integer 
function character:reposition(xCoord, yCoord) end 

---Instantly teleport character to the coordinates, if occupied the closest valid place to the coordinates is chosen.
---@param xCoord integer 
---@param yCoord integer 
---@return boolean hasTeleported 
function character:teleport(xCoord, yCoord) end 

---Delete this character
function character:kill() end 

---Create a fort at the character's coordinates
---@return fortStruct newFort 
function character:createFort() end 

---Set bodyguard. Do this only for characters without it, such as immediately after creating a character.
---@param unit unit 
function character:setBodyguardUnit(unit) end 

---Set a character's model to a new one.
---@param model string 
function character:setCharacterModel(model) end 

---Send a character off map (command will not fire if the general does not have a label, as you wouldn't be able to respawn him). It automatically acounts for the bug relating to sending characters off map that are leading a 1 unit army, by adding and killing a unit.
function character:sendOffMap() end 

---Get the movement extents for the character.
---@param searchType integer 
---@param turns integer 
---@return characterMovementExtents extents 
function character:getMovementExtents(searchType, turns) end 

---Get pathfinding information for this character (try to create and then assign to a variable and use it, not constantly call). But beware the info is out of data quickly if any movement happens on the strategy map.
---@param searchType integer 
---@param turns integer 
---@return characterMoveData moveData 
function character:createMoveData(searchType, turns) end 

---Join an ongoing crusade.
function character:joinCrusade() end 

---Abandon a joined crusade.
---@param triggerEvent boolean Fire general abandons crusade event
function character:leaveCrusade(triggerEvent) end 

---Join an ongoing jihad.
function character:joinJihad() end 

---Abandon a joined jihad.
---@param triggerEvent boolean Fire general abandons crusade event
function character:leaveJihad(triggerEvent) end 

---Check if character can move out of his position.
---@return boolean canMove 
function character:hasFreeTilesToMove() end 

---Checks if character is either named_character or general.
---@return boolean isGen 
function character:isGeneral() end 

---Basic characterRecord table. All named characters have these fields including dead characters, wives, children, and off-map characters.
---@class characterRecord
characterRecord = { 

    ---@type integer
    index = nil,

    ---@type character
    character = nil,

    ---Internal name.
    ---@type string
    shortName = nil,

    ---Internal name.
    ---@type string
    lastName = nil,

    ---Internal name including surname.
    ---@type string
    fullName = nil,

    ---Display name, resets upon reloading a save.
    ---@type string
    localizedDisplayName = nil,

    ---@type string
    label = nil,

    ---Wives (who have never been princesses) and children do not have anything for this field. Path to 'young' portrait used starting from 'mods' folder. Resets upon reloading a save. Use setPortrait() to set a new persistent portrait.
    ---@type string
    portrait = nil,

    ---Wives (who have never been princesses) and children do not have anything for this field. Path to 'old' portrait used starting from 'mods' folder. Resets upon reloading a save. Use setPortrait() to set a new persistent portrait.
    ---@type string
    portrait2 = nil,

    ---Wives (who have never been princesses) and children do not have anything for this field. Folder name in ui/custom_portraits folder. Use setPortrait() to set a new persistent portrait.
    ---@type string
    portrait_custom = nil,

    ---Battle model (needs battle_models.modeldb entry).
    ---@type string
    modelName = nil,

    ---5-leader,2 - heir, 0 - ordinary character, read only, do not set value
    ---@type integer
    status = nil,

    ---@type boolean
    isAlive = nil,

    ---@type boolean
    isFamily = nil,

    ---@type boolean
    isMale = nil,

    ---@type boolean
    wasLeader = nil,

    ---@type boolean
    isChild = nil,

    ---@type integer
    age = nil,

    ---@type integer
    traitCount = nil,

    ---For example with 4 turns per year, the yearOfBirth could be 1840.25
    ---@type number
    yearOfBirth = nil,

    ---@type integer
    seasonOfBirth = nil,

    ---@type number
    yearOfDeath = nil,

    ---@type integer
    seasonOfDeath = nil,

    ---@type integer
    numberOfChildren = nil,

    ---@type factionStruct
    faction = nil,

    ---@type integer
    originalFaction = nil,

    ---@type integer
    nameFaction = nil,

    ---@type integer
    deathType = nil,

    ---@type boolean
    wasMarriageAlliance = nil,

    ---@type boolean
    isFamilyHead = nil,

    ---@type integer
    kills = nil,

    ---@type characterRecord
    parent = nil,

    ---@type characterRecord
    spouse = nil,

    ---Maximum 4.
    ---@type table<integer, characterRecord>
    children = nil,

    ---@type integer
    ancNum = nil,

    ---@type integer
    level = nil,

    ---@type integer
    authority = nil,

    ---@type integer
    command = nil,

    ---positive = Chivalry, negative = Dread
    ---@type integer
    chivalryAndDread = nil,

    ---@type integer
    loyalty = nil,

    ---@type integer
    piety = nil,

    ---@type integer
    ambush = nil,

    ---@type integer
    artilleryCommand = nil,

    ---@type integer
    assassination = nil,

    ---@type integer
    attack = nil,

    ---@type integer
    battleSurgery = nil,

    ---@type integer
    bodyguardSize = nil,

    ---@type integer
    bodyguardValour = nil,

    ---@type integer
    boldness = nil,

    ---@type integer
    bribeResistance = nil,

    ---@type integer
    bribery = nil,

    ---@type integer
    cavalryCommand = nil,

    ---@type integer
    charm = nil,

    ---@type integer
    construction = nil,

    ---@type integer
    defence = nil,

    ---@type integer
    disposition = nil,

    ---@type integer
    electability = nil,

    ---@type integer
    eligibility = nil,

    ---@type integer
    farming = nil,

    ---@type integer
    fertility = nil,

    ---@type integer
    finance = nil,

    ---@type integer
    footInTheDoor = nil,

    ---@type integer
    generosity = nil,

    ---@type integer
    gunpowderCommand = nil,

    ---@type integer
    health = nil,

    ---@type integer
    heresyImmunity = nil,

    ---Note: Generals have base 5 hitpoints and can gain up to 5 more from traits/ancillaries. Hitpoint values can exceed 10 but effective hitpoints are capped at 10.
    ---@type integer
    hitpoints = nil,

    ---@type integer
    infantryCommand = nil,

    ---@type integer
    influence = nil,

    ---@type integer
    law = nil,

    ---@type integer
    lineOfSight = nil,

    ---@type integer
    localPopularity = nil,

    ---@type integer
    looting = nil,

    ---@type integer
    magic = nil,

    ---@type integer
    management = nil,

    ---@type integer
    mining = nil,

    ---@type integer
    movementPointsBonus = nil,

    ---@type integer
    navalCommand = nil,

    ---@type integer
    nightBattle = nil,

    ---@type integer
    personalSecurity = nil,

    ---@type integer
    publicSecurity = nil,

    ---@type integer
    purity = nil,

    ---@type integer
    sabotage = nil,

    ---@type integer
    siegeAttack = nil,

    ---@type integer
    siegeDefense = nil,

    ---@type integer
    siegeEngineering = nil,

    ---@type integer
    squalor = nil,

    ---@type integer
    subterfuge = nil,

    ---@type integer
    taxCollection = nil,

    ---@type integer
    trading = nil,

    ---@type integer
    trainingAgents = nil,

    ---@type integer
    trainingAnimalUnits = nil,

    ---@type integer
    trainingUnits = nil,

    ---@type integer
    troopMorale = nil,

    ---@type integer
    unorthodoxy = nil,

    ---@type integer
    unrest = nil,

    ---@type integer
    violence = nil,

    ---@type integer
    portraitIndex = nil,

    ---@type string
    savedDisplayName = nil,

    ---@type string
    savedDisplayLastName = nil,

    ---@type string
    savedDisplayEpithet = nil,

    ---Maximum 10. EVEN IF YOU SET RELIGION LIMIT.
    ---@type table<integer, integer>
    combatVsReligion = nil,

    ---Maximum 31.
    ---@type table<integer, integer>
    combatVsFaction = nil,

}

---Sets the named character as the faction heir.
---@param onlyHeir boolean True = this character will be the only heir, false = add another heir (faction can appear to have multiple heirs but only one will become leader).
function characterRecord:setAsHeir(onlyHeir) end 

---Checks if character is off map, read only, do not set this value.
---@return boolean offMap 
function characterRecord:isOffMap() end 

---Get the pointer to the character's traits container.
---@return traitContainer The character's traits.
function characterRecord:getTraits() end 

---Add a trait to the character. Case sensitive.
---@param traitName string Trait's internal name per export\_descr\_character\_traits.txt
---@param traitLevel integer Trait's level.
function characterRecord:addTrait(traitName, traitLevel) end 

---Remove a trait from the character. Case sensitive.
---@param traitName string Trait's internal name per export\_descr\_character\_traits.txt
function characterRecord:removeTrait(traitName) end 

---Get the pointer to the ancillary using it's index. You can iterate over a character's ancillaries for example by going from index 0 to ancNum - 1.
---@param index integer 
---@return ancillary ancillary 
function characterRecord:getAncillary(index) end 

---Add an ancillary to the named character using the name per export\_descr\_ancillaries.txt.
---@param ancillaryName string 
function characterRecord:addAncillary(ancillaryName) end 

---Remove an ancillary from the named character using it's pointer. Use getAncillary function to get the specific ancillary.
---@param ancillary ancillary 
function characterRecord:removeAncillary(ancillary) end 

---Get the model set with eop.
---@return string modelName empty if no model set.
function characterRecord:getEopSetModel() end 

---Give an unused label based on shortName + _eop_number.
---@return string newLabel 
function characterRecord:giveValidLabel() end 

---Check if character is a faction leader.
---@return boolean isLeader 
function characterRecord:isLeader() end 

---Check if character is a faction heir.
---@return boolean isHeir 
function characterRecord:isHeir() end 

---Check if the character has a certain ancillary.
---@param ancName string 
---@return boolean hasAnc 
function characterRecord:hasAncillary(ancName) end 

---Check if the character has a certain ancillary type.
---@param ancType string 
---@return boolean hasAnc 
function characterRecord:hasAncType(ancType) end 

---Get a character trait.
---@param index integer 
---@return traitStruct trait 
function characterRecord:getTrait(index) end 

---Get the level of a trait the character has (or 0 if the character does not have the trait). Case sensitive.
---@param traitName string 
---@return integer level 
function characterRecord:getTraitLevel(traitName) end 

---Add trait points to a trait, will upgrade/downgrade the level if it passes the thresholds.  Case sensitive.
---@param traitName string 
---@param points integer 
function characterRecord:addTraitPoints(traitName, points) end 

---Give character an ancillary, checks excluded cultures.
---@param ancillaryName string 
---@param noDuplicate boolean Only add if character doesn't already have this ancillary.
function characterRecord:acquireAncillary(ancillaryName, noDuplicate) end 

---Give a random name.
---@param nameFactionId integer 
function characterRecord:giveRandomName(nameFactionId) end 

---Set a characters portrait. Use a relative path from the mod folder! This is persistent and the recommended method for setting a portrait, including custom ones.
---@param portraitPath string 
function characterRecord:setPortrait(portraitPath) end 

---Select a random portrait from a culture for a character.
---@param cultureID integer 
---@param religionID integer (Only for cultures that are set up with religion variations! Use -1 to disable.)
function characterRecord:giveRandomPortrait(cultureID, religionID) end 

---Create a new child for the character. You need to select the father for this.
---@param name string random_name for random
---@param lastName string 
---@param age integer 
---@param isMale boolean 
---@param isAlive boolean 
---@return characterRecord child 
function characterRecord:birthChild(name, lastName, age, isMale, isAlive) end 

---Create and marry a wife.
---@param name string random_name for random
---@param age integer 
---@return characterRecord wife 
function characterRecord:marryWife(name, age) end 

---Basic ancillary table
---@class ancillary
ancillary = { 

    ---@type integer
    index = nil,

    ---@type string
    localizedName = nil,

    ---@type string
    description = nil,

    ---@type string
    effectsDescription = nil,

    ---(internal)
    ---@type string
    name = nil,

    ---@type integer
    effectsNum = nil,

    ---@type boolean
    isUnique = nil,

    ---@type boolean
    transferable = nil,

    ---@type string
    type = nil,

    ---@type string
    imagePath = nil,

}

---Get an ancillary effect.
---@param index integer 
---@return traitEffect effect 
function ancillary:getEffect(index) end 

---Is culture exluded?
---@param cultureId integer 
---@return boolean isExcluded 
function ancillary:isCultureExcluded(cultureId) end 

---Basic capturedFactionInfo table.
---@class capturedFactionInfo
capturedFactionInfo = { 

    ---@type integer
    targetFactionID = nil,

    ---@type integer
    factionID = nil,

    ---@type characterRecord
    namedChar = nil,

    ---@type characterRecord
    targetCharacter = nil,

    ---@type integer
    capturedCharactersNum = nil,

    ---@type integer
    capturedUnitsNum = nil,

    ---@type integer
    ransomValue = nil,

    ---@type boolean
    heirCaptured = nil,

    ---@type boolean
    leaderCaptured = nil,

}

---Get a captured unit by it's index.
---@param index integer 
---@return capturedUnit capUnit 
function capturedFactionInfo:getCapturedUnit(index) end 

---Get a captured character by it's index.
---@param index integer 
---@return capturedCharacter capChar 
function capturedFactionInfo:getCapturedCharacter(index) end 

---Basic capturedUnit table.
---@class capturedUnit
capturedUnit = { 

    ---@type unit
    unit = nil,

    ---@type integer
    capturedSoldiers = nil,

    ---@type integer
    capturedValue = nil,

}

---Basic capturedCharacter table.
---@class capturedCharacter
capturedCharacter = { 

    ---@type characterRecord
    namedChar = nil,

    ---@type integer
    capturedValue = nil,

}

---Basic traits table
---@class traitContainer
traitContainer = { 

    ---@type integer
    level = nil,

    ---@type string
    name = nil,

    ---@type traitContainer
    nextTrait = nil,

    ---@type traitContainer
    prevTrait = nil,

    ---@type traitStruct
    traitInfo = nil,

}

---Basic trait table
---@class traitStruct
traitStruct = { 

    ---@type traitEntry
    traitEntry = nil,

    ---@type traitLevel
    levelEntry = nil,

    ---@type integer
    traitPoints = nil,

}

---Basic traitEntry table
---@class traitEntry
traitEntry = { 

    ---@type integer
    index = nil,

    ---@type string
    name = nil,

    ---Maximum: 10, first real level seems to be at index 1 (so 2 in lua), use function instead
    ---@type table<integer, traitLevel>
    levels = nil,

    ---will be one over the actual count
    ---@type integer
    levelCount = nil,

    ---Maximum: 20
    ---@type table<integer, traitEntry>
    antiTraits = nil,

    ---@type integer
    antiTraitCount = nil,

    ---@type integer
    noGoingBackLevel = nil,

    ---@type boolean
    hidden = nil,

}

---Get trait level, dont need to account for the first level being at index 1.
---@param index integer 
---@return traitLevel lvl 
function traitEntry:getLevel(index) end 

---Is character type valid?
---@param characterType integer 
---@return boolean isValid 
function traitEntry:isCharacterTypeValid(characterType) end 

---Is culture excluded?
---@param cultureId integer 
---@return boolean isExcluded 
function traitEntry:isCultureExcluded(cultureId) end 

---Basic traitLevel table
---@class traitLevel
traitLevel = { 

    ---@type integer
    level = nil,

    ---@type integer
    threshold = nil,

    ---@type integer
    effectsCount = nil,

    ---@type string
    name = nil,

    ---@type string
    description = nil,

    ---@type string
    effectsDescription = nil,

    ---@type string
    epithetDescription = nil,

    ---@type string
    gainDescription = nil,

    ---@type string
    loseDescription = nil,

}

---Get trait effect.
---@param index integer 
---@return traitEffect effect 
function traitLevel:getTraitEffect(index) end 

---Basic traitEffect table
---@class traitEffect
traitEffect = { 

    ---@type integer
    id = nil,

    ---@type integer
    value = nil,

}

---Basic edbEntry table.
---@class edbEntry
edbEntry = { 

    ---@type integer
    buildingID = nil,

    ---@type string
    localizedName = nil,

    ---@type string
    name = nil,

    ---@type integer
    classification = nil,

    ---@type integer
    isCoreBuilding = nil,

    ---@type integer
    isPort = nil,

    ---@type integer
    isWallBuilding = nil,

    ---@type integer
    isTemple = nil,

    ---@type integer
    religionID = nil,

    ---@type integer
    isHinterland = nil,

    ---@type integer
    isFarm = nil,

    ---@type integer
    buildingLevelCount = nil,

}

---Get a building level.
---@param index integer 
---@return buildingLevel level 
function edbEntry:getBuildingLevel(index) end 

---Basic buildingLevel table.
---@class buildingLevel
buildingLevel = { 

    ---@type string
    name = nil,

    ---@type string
    genericBuildingPic = nil,

    ---@type string
    genericBuildingPicConstructed = nil,

    ---@type string
    genericBuildingPicConstruction = nil,

    ---@type integer
    buildCost = nil,

    ---@type integer
    buildTime = nil,

    ---@type integer
    capabilityNum = nil,

    ---@type integer
    recruitPoolNum = nil,

    ---@type integer
    factionCapabilityNum = nil,

    ---@type integer
    settlementMinLvl = nil,

    ---@type boolean
    availableCastle = nil,

    ---@type boolean
    availableCity = nil,

}

---Set picture of building.
---@param cultureID integer of the culture to set the pic for. Only cultures 0-6 are valid.
---@param path string Path to the picture.
function buildingLevel:setBuildingPic(cultureID, path) end 

---Get picture of building.
---@param cultureID integer of the culture to set the pic for. Only cultures 0-6 are valid.
---@return string path Path to the picture.
function buildingLevel:getBuildingPic(cultureID) end 

---Set constructed picture of building.
---@param cultureID integer of the culture to set the pic for. Only cultures 0-6 are valid.
---@param path string Path to the picture.
function buildingLevel:setBuildingPicConstructed(cultureID, path) end 

---Get constructed picture of building.
---@param cultureID integer of the culture to set the pic for. Only cultures 0-6 are valid.
---@return string path Path to the picture.
function buildingLevel:getBuildingPicConstructed(cultureID) end 

---Set construction picture of building.
---@param cultureID integer of the culture to set the pic for. Only cultures 0-6 are valid.
---@param path string Path to the picture.
function buildingLevel:setBuildingPicConstruction(cultureID, path) end 

---Get construction picture of building.
---@param cultureID integer of the culture to set the pic for. Only cultures 0-6 are valid.
---@param path string Path to the picture.
function buildingLevel:getBuildingPicConstruction(cultureID, path) end 

---Set the name of the building level.
---@param factionID integer of the faction to set the pic for.
---@param name string New name.
function buildingLevel:setLocalizedName(factionID, name) end 

---Get the name of the building level.
---@param factionID integer 
---@return string descr 
function buildingLevel:getLocalizedName(factionID) end 

---Set the description of the building level.
---@param factionID integer 
---@param descr string 
function buildingLevel:setLocalizedDescr(factionID, descr) end 

---Get the description of the building level.
---@param factionID integer 
---@return string descr 
function buildingLevel:getLocalizedDescr(factionID) end 

---Set the description of the building level.
---@param factionID integer 
---@param descr string 
function buildingLevel:setLocalizedDescrShort(factionID, descr) end 

---Get the description of the building level.
---@param factionID integer 
---@return string descr 
function buildingLevel:getLocalizedDescrShort(factionID) end 

---Get a capability.
---@param index integer 
---@return capability cap 
function buildingLevel:getCapability(index) end 

---Get a faction capability.
---@param index integer 
---@return capability cap 
function buildingLevel:getFactionCapability(index) end 

---Get a recruit pool.
---@param index integer 
---@return recruitPool pool 
function buildingLevel:getRecruitPool(index) end 

---Add a capability.
---@param capability integer use capabilities enum
---@param value integer 
---@param bonus boolean 
---@param condition string 
function buildingLevel:addCapability(capability, value, bonus, condition) end 

---Add a faction capability.
---@param capability integer use capabilities enum
---@param value integer 
---@param bonus boolean 
---@param condition string 
function buildingLevel:addFactionCapability(capability, value, bonus, condition) end 

---Add a recruit pool.
---@param eduIndex integer 
---@param initialSize number 
---@param gainPerTurn number 
---@param maxSize number 
---@param exp integer 
---@param condition string 
function buildingLevel:addRecruitPool(eduIndex, initialSize, gainPerTurn, maxSize, exp, condition) end 

---Remove a capability.
---@param index integer 
function buildingLevel:removeCapability(index) end 

---Remove a faction capability.
---@param index integer 
function buildingLevel:removeFactionCapability(index) end 

---Remove a recruit pool.
---@param index integer 
function buildingLevel:removeRecruitPool(index) end 

---Basic capability table.
---@class capability
capability = { 

    ---@type integer
    capabilityType = nil,

    ---@type integer
    capabilityLvl = nil,

    ---@type integer
    bonus = nil,

    ---@type integer
    capabilityID = nil,

}

---Basic recruitPool table.
---@class recruitPool
recruitPool = { 

    ---@type integer
    capabilityType = nil,

    ---@type integer
    experience = nil,

    ---@type integer
    unitID = nil,

    ---@type integer
    agentAmount = nil,

    ---@type integer
    agentLimit = nil,

    ---@type integer
    agentType = nil,

    ---@type number
    initialSize = nil,

    ---@type number
    gainPerTurn = nil,

    ---@type number
    maxSize = nil,

}

---Basic EDB table.
---@class EDB
EDB = { 

    ---@type integer
    hiddenResourceCount = nil,

    ---@type edbEntry
    port = nil,

    ---@type edbEntry
    castlePort = nil,

    ---@type edbEntry
    coreCityBuilding = nil,

    ---@type edbEntry
    coreCastleBuilding = nil,

}

---Create new EOP Building entry
---@param edbEntry edbEntry Old entry.
---@param newIndex integer New index of new entry. Use index > 127!
---@return edbEntry eopentry. 
function EDB.addEopBuildEntry(edbEntry, newIndex) end 

---Get a building edb entry by name.
---@param buildingname string 
---@return edbEntry entry 
function EDB.getBuildingByName(buildingname) end 

---Get a building edb entry by index (EOP buildings too).
---@param index integer 
---@return edbEntry entry 
function EDB.getBuildingByID(index) end 

---Get number of vanilla buildings.
---@return integer num 
function EDB.getBuildingNum() end 

---Get a guild by index.
---@param index integer 
---@return guild guild 
function EDB.getGuild(index) end 

---Get number of guilds.
---@return integer num 
function EDB.getGuildNum() end 

---Get a guild by name.
---@param name string 
---@return guild guild 
function EDB.getGuildByName(name) end 

---Basic M2TWEOPDU table. Contains descriptions of M2TWEOP unit types.
---@class M2TWEOPDU
M2TWEOPDU = { 

}

---Create new M2TWEOPDU entry from a file describing it.
---@param filepath string path to file with unit type description(like in export\_descr\_unit.txt, but only with one record and without comments)
---@param eopEntryIndex integer Entry index, which will be assigned to a new record in DU (recommend starting from 1000, so that there is no confusion with records from EDU).
---@return eduEntry retEntry Usually you shouldn't use this value.
function M2TWEOPDU.addEopEduEntryFromFile(filepath, eopEntryIndex) end 

---Create new M2TWEOPDU entry.
---@param baseEntryIndex integer Entry index number, which will be taken as the base for this DU record.
---@param eopEntryIndex integer Entry index, which will be assigned to a new record in DU (recommend starting from 1000, so that there is no confusion with records from EDU).
---@return eduEntry retEntry Usually you shouldn't use this value.
function M2TWEOPDU.addEopEduEntryFromEDUID(baseEntryIndex, eopEntryIndex) end 

---Get eduEntry of a M2TWEOPDU entry. Needed to change many parameters of the entry.
---@param eopEntryIndex integer Entry index in M2TWEOPDU.
---@return eduEntry retEntry 
function M2TWEOPDU.getEopEduEntryByID(eopEntryIndex) end 

---Get eduEntry by index. Needed to change many parameters of the entry.
---@param EntryIndex integer Entry index (Values lower then 500 look for edu entry, values over 500 look for EOP edu entry).
---@return eduEntry retEntry 
function M2TWEOPDU.getEduEntry(EntryIndex) end 

---Get number of units in vanilla EDU.
---@return integer entryNum 
function M2TWEOPDU.getEduEntryNum() end 

---Get number of units in EOP EDU.
---@return integer entryNum 
function M2TWEOPDU.getEopEntryNum() end 

---Get eduEntry by EDU type name. Needed to change many parameters of the entry. Works for EOP units too.
---@param type string Unit type as in export_descr_unit.
---@return eduEntry retEntry 
function M2TWEOPDU.getEduEntryByType(type) end 

---Get EDU index by EDU type name. Needed to change many parameters of the entry. Works for EOP units too.
---@param type string Unit type as in export_descr_unit.
---@return integer eduindex 
function M2TWEOPDU.getEduIndexByType(type) end 

---Set unit info card for a M2TWEOPDU entry. Requirements for the location and parameters of the image are unchanged in relation to the game.
---@param eopEntryIndex integer Entry index in M2TWEOPDU.
---@param newSoldierModel string 
function M2TWEOPDU.setEntrySoldierModel(eopEntryIndex, newSoldierModel) end 

---This is data that comes with game events. You need to check the event documentation to see what data is available under "Exports". The rest of the fields not stated inside "Exports" will return nil!
---@class eventTrigger
eventTrigger = { 

    ---@type unit
    attackingUnit = nil,

    ---@type unit
    defendingUnit = nil,

    ---@type character
    stratCharacter = nil,

    ---- Note it is characterRecord, not character
    ---@type characterRecord
    character = nil,

    ---- Note it is characterRecord, not character
    ---@type characterRecord
    targetCharacter = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type settlementStruct
    targetSettlement = nil,

    ---@type fortStruct
    fort = nil,

    ---@type factionStruct
    faction = nil,

    ---@type factionStruct
    targetFaction = nil,

    ---@type armyStruct
    army = nil,

    ---@type integer
    regionID = nil,

    ---@type integer
    targetRegionID = nil,

    ---@type unit
    playerUnit = nil,

    ---@type unit
    enemyUnit = nil,

    ---@type buildingBattle
    battleBuilding = nil,

    ---@type buildingInQueue
    priorBuild = nil,

    ---@type string
    resourceDescription = nil,

    ---@type eduEntry
    eduEntry = nil,

    ---@type integer
    characterType = nil,

    ---@type integer
    targetCharacterType = nil,

    ---@type string
    disasterType = nil,

    ---@type string
    missionSuccessLevel = nil,

    ---@type integer
    missionProbability = nil,

    ---@type missionDetailsStruct
    missionDetails = nil,

    ---@type integer
    eventID = nil,

    ---@type integer
    guildID = nil,

    ---@type string
    eventCounter = nil,

    ---@type coordPair
    coords = nil,

    ---@type integer
    religion = nil,

    ---@type integer
    targetReligion = nil,

    ---@type number
    amount = nil,

    ---@type crusadeStruct
    crusade = nil,

    ---@type capturedFactionInfo
    captureInfo = nil,

    ---@type string
    ransomType = nil,

    ---@type unit
    unit = nil,

}

---
---@class missionDetailsStruct
missionDetailsStruct = { 

    ---@type string
    missionName = nil,

    ---@type string
    paybackName = nil,

}

---Events functions list.
---Just list, use it without EventsFunctionsList.!!!
---@class EventsFunctionsList
EventsFunctionsList = { 

}

---Called at a character's turn start.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterTurnStart(eventData) end 

---A captured character has been successfully ransomed back from the enemy.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCapturedCharacterRansomed(eventData) end 

---A captured character has been released by the enemy.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCapturedCharacterReleased(eventData) end 

---A character father died of natural causes.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onFatherDiesNatural(eventData) end 

---When a battle is about to start but one of the armies withdraws.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onPreBattleWithdrawal(eventData) end 

---When a battle has finished.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onPostBattle(eventData) end 

---A General has hired some mercenaries.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onHireMercenaries(eventData) end 

---A General has captured a residence such as a fort or watchtower.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onGeneralCaptureResidence(eventData) end 

---A faction has been destroyed.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onLeaderDestroyedFaction(eventData) end 

---An adoption has been proposed.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onOfferedForAdoption(eventData) end 

---A lesser general adoption has been proposed (man of the hour event).
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onLesserGeneralOfferedForAdoption(eventData) end 

---A marriage offer has been proposed.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onOfferedForMarriage(eventData) end 

---A brother has been adopted.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onBrotherAdopted(eventData) end 

---A child is born to the faction leader.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onBirth(eventData) end 

---A character has come of age.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterComesOfAge(eventData) end 

---A character has married.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterMarries(eventData) end 

---A character has married a princess.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterMarriesPrincess(eventData) end 

---A marriage alliance is possible.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onMarriageAlliancePossible(eventData) end 

---A marriage alliance has been offered.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onMarriageAllianceOffered(eventData) end 

---A priest has gone mad.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onPriestBecomesHeretic(eventData) end 

---A character is adjacent to a heretic.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterNearHeretic(eventData) end 

---A character is adjacent to a witch.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterNearWitch(eventData) end 

---A character has been promoted to a cardinal.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCardinalPromoted(eventData) end 

---A character has become a father.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterBecomesAFather(eventData) end 

---A General and his army has devastated an enemy's fertile land.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onGeneralDevastatesTile(eventData) end 

---A spying mission has failed and the spy is executed by the target.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onExecutesASpyOnAMission(eventData) end 

---An assassination mission has failed and the assassin is executed by the target.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onExecutesAnAssassinOnAMission(eventData) end 

---Someone has had an attempt on their life.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onSufferAssassinationAttempt(eventData) end 

---Someone has had an attempt on their assets.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onSufferAcquisitionAttempt(eventData) end 

---Someone has had an attempt on their bachelorhood.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onSufferMarriageAttempt(eventData) end 

---Someone has had a denouncement attempt.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onSufferDenouncementAttempt(eventData) end 

---A Faction leader has ordered a sabotage mission.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onLeaderOrderedSabotage(eventData) end 

---Someone has been bribed.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onAcceptBribe(eventData) end 

---Someone has refused a bribe.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onRefuseBribe(eventData) end 

---Insurgence has been provoked.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onInsurrection(eventData) end 

---A Faction leader has ordered a diplomacy mission.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onLeaderOrderedDiplomacy(eventData) end 

---A new admiral has been created for a new ship.
---Exports: stratCharacter, character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onNewAdmiralCreated(eventData) end 

---A building has been destroyed.
---Exports: character, faction, regionID, characterType, religion, settlement
---@param eventData eventTrigger 
function onGovernorBuildingDestroyed(eventData) end 

---Games have been thrown.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onGovernorThrowGames(eventData) end 

---Races have been thrown.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onGovernorThrowRaces(eventData) end 

---The player has selected a character.
---Exports: character, targetSettlement, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterSelected(eventData) end 

---The player has selected an enemy character.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onEnemyCharacterSelected(eventData) end 

---The player has selected a position beyond the character's extents.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onMultiTurnMove(eventData) end 

---The player has opened the panel for the selected character.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterPanelOpen(eventData) end 

---A mission has been completed.
---Exports: character, faction, regionID, characterType, missionDetails, religion
---@param eventData eventTrigger 
function onLeaderMissionSuccess(eventData) end 

---A mission has failed.
---Exports: character, faction, regionID, characterType, missionDetails, religion
---@param eventData eventTrigger 
function onLeaderMissionFailed(eventData) end 

---A General has been sent on Crusade/Jihad.
---Exports: character, targetSettlement, faction, targetFaction, regionID, targetRegionID, characterType, religion, targetReligion, crusade
---@param eventData eventTrigger 
function onGeneralJoinCrusade(eventData) end 

---A General has left a Crusade/Jihad.
---Exports: character, targetSettlement, faction, targetFaction, regionID, targetRegionID, characterType, religion, targetReligion, crusade
---@param eventData eventTrigger 
function onGeneralAbandonCrusade(eventData) end 

---A General has arrived in the Crusade/Jihad target region.
---Exports: character, targetSettlement, faction, targetFaction, army, regionID, targetRegionID, characterType, religion, targetReligion, crusade
---@param eventData eventTrigger 
function onGeneralArrivesCrusadeTargetRegion(eventData) end 

---A General has taken the Crusade/Jihad target settlement.
---Exports: character, targetSettlement, faction, targetFaction, regionID, targetRegionID, characterType, religion, targetReligion, crusade
---@param eventData eventTrigger 
function onGeneralTakesCrusadeTarget(eventData) end 

---A Character has finished its turn.
---Exports: character, settlement, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterTurnEnd(eventData) end 

---A Character has finished its turn in a settlement.
---Exports: character, settlement, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCharacterTurnEndInSettlement(eventData) end 

---The character has been made the faction leader.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onBecomesFactionLeader(eventData) end 

---The character is no longer faction leader.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCeasedFactionLeader(eventData) end 

---The character has been made a faction heir.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onBecomesFactionHeir(eventData) end 

---The character is no longer faction heir.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onCeasedFactionHeir(eventData) end 

---A character has been injured by a disaster.
---Exports: character, faction, regionID, disasterType, characterType, religion
---disasterTypes: earthquake, flood, horde, storm, volcano, dustbowl, locusts, famine, plague, riot, fire
---@param eventData eventTrigger 
function onCharacterDamagedByDisaster(eventData) end 

---A General has captured a settlement.
---Exports: character, settlement, targetSettlement, faction, targetFaction, regionID, characterType, religion
---@param eventData eventTrigger 
function onGeneralCaptureSettlement(eventData) end 

---An assault has taken place. NOTE: settlement and fort are not in eventData! They are separate arguments!.
---Exports: character, faction, targetFaction, regionID, targetRegionID, characterType, religion, targetReligion
---@param eventData eventTrigger 
---@param settlement settlementStruct|nil 
---@param fort fortStruct|nil 
function onGeneralAssaultsResidence(eventData, settlement, fort) end 

---An assault has taken place.
---Exports: character, targetCharacter, faction, targetFaction, regionID, characterType, targetCharacterType, religion, targetReligion
---@param eventData eventTrigger 
function onGeneralAssaultsGeneral(eventData) end 

---A general on crusade/jihad has been attacked by other character (it includes crusading generals attacked in a residence or on navy and generals attacked by spotted and killed assassin).
---Exports: character, targetCharacter, faction, targetFaction, regionID, characterType, targetCharacterType, religion, targetReligion
---@param eventData eventTrigger 
function onCharacterAttacksCrusadingGeneral(eventData) end 

---A General of a captor faction has made a ransom decision.
---Exports: character, faction, targetFaction, regionID, characterType, religion, targetReligion, captureInfo, ransomType
---ransomType: ransom, execute, release, cannot_pay_ransom
---@param eventData eventTrigger 
function onGeneralPrisonersRansomedCaptor(eventData) end 

---A General of a captive faction has made a ransom decision.
---Exports: character, faction, targetFaction, regionID, characterType, religion, targetReligion, captureInfo, ransomType
---@param eventData eventTrigger 
function onGeneralPrisonersRansomedCaptive(eventData) end 

---A captor faction has made a ransom decision.
---Exports: character, faction, targetFaction, regionID, characterType, religion, targetReligion, captureInfo, ransomType
---@param eventData eventTrigger 
function onFactionLeaderPrisonersRansomedCaptor(eventData) end 

---A captive faction has made a ransom decision.
---Exports: character, faction, targetFaction, regionID, characterType, religion, targetReligion, captureInfo, ransomType
---@param eventData eventTrigger 
function onFactionLeaderPrisonersRansomedCaptive(eventData) end 

---A spy mission has completed. May also export fort or settlement if target was a garrison residence.
---Exports: character, settlement, fort, faction, targetFaction, regionID, characterType, missionSuccessLevel, missionProbability, religion, targetReligion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onSpyMission(eventData) end 

---An assassination mission has completed.
---Exports: character, faction, regionID, characterType, missionSuccessLevel, missionProbability, religion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onAssassinationMission(eventData) end 

---An acquisition mission has completed.
---Exports: character, faction, regionID, characterType, missionSuccessLevel, missionProbability, religion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onAcquisitionMission(eventData) end 

---A marriage mission has completed.
---Exports: character, faction, regionID, characterType, missionSuccessLevel, missionProbability, religion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onMarriageMission(eventData) end 

---A denouncement mission has completed.
---Exports: character, faction, regionID, characterType, missionSuccessLevel, missionProbability, religion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onDenouncementMission(eventData) end 

---A sabotage mission has completed.
---Exports: character, faction, regionID, characterType, missionSuccessLevel, missionProbability, religion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onSabotageMission(eventData) end 

---A bribery mission has completed.
---Exports: character, faction, targetFaction, regionID, characterType, missionSuccessLevel, religion, targetReligion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onBriberyMission(eventData) end 

---A diplomacy mission has completed.
---Exports: character, faction, targetFaction, regionID, characterType, missionSuccessLevel, religion, targetReligion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onDiplomacyMission(eventData) end 

---A Faction leader has ordered a spying mission.
---Exports: character, settlement, fort, faction, targetFaction, regionID, characterType, missionSuccessLevel, religion, targetReligion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onLeaderOrderedSpyingMission(eventData) end 

---A Faction leader has ordered an assassination mission.
---Exports: character, targetCharacter, faction, regionID, characterType, missionSuccessLevel, religion
---missionSuccessLevel: not_successful, slightly_successful, partly_successful, highly_successful
---@param eventData eventTrigger 
function onLeaderOrderedAssassination(eventData) end 

---A Faction leader has ordered a bribery mission.
---Exports: character, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onLeaderOrderedBribery(eventData) end 

---A settlement is being processed for the start of its faction's turn.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onSettlementTurnStart(eventData) end 

---A settlement is no longer garrisoned.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onUngarrisonedSettlement(eventData) end 

---A settlement has been upgraded.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onSettlementUpgraded(eventData) end 

---A settlement has been converted.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onSettlementConverted(eventData) end 

---Siege equipment has been completed by one of the besieging armies.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onSiegeEquipmentCompleted(eventData) end 

---A Settlement is being processed for the end of its faction's turn.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onSettlementTurnEnd(eventData) end 

---The player has selected a settlement.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onSettlementSelected(eventData) end 

---The player has opened the panel for the selected settlement.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onSettlementPanelOpen(eventData) end 

---The player has opened a recruitment panel.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onRecruitmentPanelOpen(eventData) end 

---The player has opened a construction panel.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onConstructionPanelOpen(eventData) end 

---The player has opened a trade panel.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onTradePanelOpen(eventData) end 

---The player has requested advice on the settlement scroll.
---Exports: settlement, faction, regionID, resourceDescription, religion
---@param eventData eventTrigger 
function onSettlementScrollAdviceRequested(eventData) end 

---A guild has been created/upgraded.
---Exports: settlement, faction, regionID, resourceDescription, guildId, religion
---@param eventData eventTrigger 
function onGuildUpgraded(eventData) end 

---A guild has been destroyed.
---Exports: settlement, faction, regionID, guildId, religion
---@param eventData eventTrigger 
function onGuildDestroyed(eventData) end 

---A settlement has been captured and occupied.
---Exports: character, faction, targetFaction, regionID, characterType, religion, targetReligion
---@param eventData eventTrigger 
function onOccupySettlement(eventData) end 

---A settlement has been captured and sacked.
---Exports: character, faction, targetFaction, regionID, characterType, religion, targetReligion
---@param eventData eventTrigger 
function onSackSettlement(eventData) end 

---A settlement has been captured and some of its population has been decimated.
---Exports: character, faction, targetFaction, regionID, characterType, religion, targetReligion
---@param eventData eventTrigger 
function onExterminatePopulation(eventData) end 

---A settlement has rioted.
---Exports: settlement, faction, targetFaction, regionID, religion, targetReligion
---@param eventData eventTrigger 
function onCityRiots(eventData) end 

---A settlement has been given to another faction.
---Exports: settlement, faction, targetFaction, regionID, religion, targetReligion
---@param eventData eventTrigger 
function onGiveSettlement(eventData) end 

---A settlement has rebelled.
---Exports: settlement, faction, targetFaction, regionID, religion, targetReligion
---@param eventData eventTrigger 
function onCityRebels(eventData) end 

---A settlement has been razed.
---Exports: settlement, faction, targetFaction, regionID, religion, targetReligion
---@param eventData eventTrigger 
function onCitySacked(eventData) end 

---A settlement has rioted.
---Exports: character, settlement, faction, targetFaction, regionID, characterType, religion, targetReligion
---@param eventData eventTrigger 
function onGovernorCityRiots(eventData) end 

---A settlement has rebelled.
---Exports: character, settlement, faction, targetFaction, regionID, characterType, religion, targetReligion
---@param eventData eventTrigger 
function onGovernorCityRebels(eventData) end 

---The player has abandoned a show me scipt.
---@param eventData eventTrigger 
function onAbandonShowMe(eventData) end 

---A strat map game has been reloaded.
---@param eventData eventTrigger 
function onGameReloaded(eventData) end 

---The plaza is being captured.
---@param eventData eventTrigger 
function onBattleWinningPlaza(eventData) end 

---The plaza capture has been stopped.
---@param eventData eventTrigger 
function onBattleStopsWinningPlaza(eventData) end 

---The enemy will have captured the plaza in 30s.
---@param eventData eventTrigger 
function onBattleDominatingPlaza(eventData) end 

---A siege engine is now unmanned.
---@param eventData eventTrigger 
function onBattngineUnmanned(eventData) end 

---Half of the player's army has been destroyed.
---@param eventData eventTrigger 
function onBattlePlayerArmyHalfDestroyed(eventData) end 

---Half of the enemy's army has been destroyed.
---@param eventData eventTrigger 
function onBattnemyArmyHalfDestroyed(eventData) end 

---The battle has finished.
---@param eventData eventTrigger 
function onBattleFinished(eventData) end 

---Half of an army has been destroyed.
---@param eventData eventTrigger 
function onBattleArmyHalfDestroyed(eventData) end 

---The escape key has been pressed. This trigger will only fire if the command StealEscKey has been used.
---@param eventData eventTrigger 
function onEscPressed(eventData) end 

---The player has been issued with advice by a script.
---@param eventData eventTrigger 
function onScriptedAdvice(eventData) end 

---The player has requested advice on the naval prebattle scroll.
---@param eventData eventTrigger 
function onNavalPreBattleScrollAdviceRequested(eventData) end 

---The player has requested advice on the prebattle scroll.
---@param eventData eventTrigger 
function onPreBattleScrollAdviceRequested(eventData) end 

---The player has opened the college of cardinals panel.
---@param eventData eventTrigger 
function onCollegeOfCardinalsPanelOpen(eventData) end 

---The player has opened the diplomatic standing panel.
---@param eventData eventTrigger 
function onDiplomaticStandingPanelOpen(eventData) end 

---An idle unit is under missile fire.
---@param eventData eventTrigger 
function onBattlePlayerUnderAttackIdle(eventData) end 

---A team has gained the advantage in combat.
---@param eventData eventTrigger 
function onBattleWinningCombat(eventData) end 

---The whole army is tired.
---@param eventData eventTrigger 
function onBattleArmyTired(eventData) end 

---A spy has successfully opened the gates.
---@param eventData eventTrigger 
function onBattleSpySuccess(eventData) end 

---A different team is now the strongest.
---@param eventData eventTrigger 
function onBattleTideofBattle(eventData) end 

---A unit has gone berserk.
---Exports: unit
---@param eventData eventTrigger 
function onBattleUnitGoesBerserk(eventData) end 

---A siege engine has been destroyed.
---Exports: unit
---@param eventData eventTrigger 
function onBattleSiegeEngineDestroyed(eventData) end 

---A siege engine has docked with a wall.
---Exports: unit
---@param eventData eventTrigger 
function onBattleSiegeEngineDocksWall(eventData) end 

---An engine has started attacking a gate.
---Exports: unit
---@param eventData eventTrigger 
function onBattleGatesAttackedByEngine(eventData) end 

---An engine has destroyed a gate.
---Exports: unit
---@param eventData eventTrigger 
function onBattleGatesDestroyedByEngine(eventData) end 

---A siege engine has knocked down a wall.
---Exports: unit
---@param eventData eventTrigger 
function onBattleWallsBreachedByEngine(eventData) end 

---A wall has been captured.
---Exports: unit
---@param eventData eventTrigger 
function onBattleWallsCaptured(eventData) end 

---A unit has routed.
---Exports: unit
---@param eventData eventTrigger 
function onBattleUnitRouts(eventData) end 

---A unit has been disbanded.
---Exports: faction, playerUnit, eduEntry, religion
---@param eventData eventTrigger 
function onUnitDisbanded(eventData) end 

---A unit has been trained.
---Exports: settlement, faction, playerUnit, eduEntry, religion
---@param eventData eventTrigger 
function onUnitTrained(eventData) end 

---A unit has been trained.
---Exports: character, settlement, faction, regionID, playerUnit, eduEntry, characterType, religion
---@param eventData eventTrigger 
function onGovernorUnitTrained(eventData) end 

---A building has been completed.
---Exports: character, settlement, faction, regionID, priorBuild, characterType, religion
---@param eventData eventTrigger 
function onGovernorBuildingCompleted(eventData) end 

---An agent has been trained.
---Exports: character, settlement, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onAgentCreated(eventData) end 

---An agent has been trained.
---Exports: character, settlement, faction, regionID, characterType, religion
---@param eventData eventTrigger 
function onGovernorAgentCreated(eventData) end 

---A building has been destroyed.
---Exports: settlement, faction, regionID, resourceDescription, religion
---@param eventData eventTrigger 
function onBuildingDestroyed(eventData) end 

---A building has been added to the construction queue.
---Exports: settlement, faction, regionID, resourceDescription, religion
---@param eventData eventTrigger 
function onAddedToBuildingQueue(eventData) end 

---A building has been completed.
---Exports: settlement, faction, priorBuild, religion
---@param eventData eventTrigger 
function onBuildingCompleted(eventData) end 

---The player has requested building advice.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onRequestBuildingAdvice(eventData) end 

---The player has requested training advice.
---Exports: settlement, faction, regionID, religion
---@param eventData eventTrigger 
function onRequestTrainingAdvice(eventData) end 

---A unit has been added to the training queue.
---Exports: settlement, faction, regionID, resourceDescription, religion
---@param eventData eventTrigger 
function onAddedToTrainingQueue(eventData) end 

---An army has been entirely routed.
---Exports: army
---@param eventData eventTrigger 
function onBattleArmyRouted(eventData) end 

---A reinforcing army has arrived on the battlefield.
---Exports: army
---@param eventData eventTrigger 
function onBattleReinforcementsArrive(eventData) end 

---The player has requested mercenaries advice.
---Exports: army
---@param eventData eventTrigger 
function onRequestMercenariesAdvice(eventData) end 

---The player has clicked on a button.
---Exports: resourceDescription
---@param eventData eventTrigger 
function onButtonPressed(eventData) end 

---The player triggered a keyboard shortcut.
---Exports: resourceDescription
---@param eventData eventTrigger 
function onShortcutTriggered(eventData) end 

---A special UI Element is visible.
---Exports: resourceDescription
---@param eventData eventTrigger 
function onUIElementVisible(eventData) end 

---The player opened a scroll.
---Exports: resourceDescription
---@param eventData string 
function onScrollOpened(eventData) end 

---The player closed a scroll.
---Exports: resourceDescription
---@param eventData eventTrigger 
function onScrollClosed(eventData) end 

---The player has requested advice on a scroll.
---Exports: resourceDescription
---@param eventData eventTrigger 
function onScrollAdviceRequested(eventData) end 

---The player has suppressed a piece of advice.
---Exports: resourceDescription
---@param eventData eventTrigger 
function onAdviceSupressed(eventData) end 

---A general has been routed.
---Exports: stratCharacter, character
---@param eventData eventTrigger 
function onBattleGeneralRouted(eventData) end 

---A general has been killed.
---Exports: stratCharacter
---@param eventData eventTrigger 
function onBattleGeneralKilled(eventData) end 

---A Crusade/Jihad has been called.
---Exports: targetSettlement, targetFaction, targetRegionID, targetReligion, crusade
---@param eventData eventTrigger 
function onCrusadeCalled(eventData) end 

---The Pope has accepted the player's crusade target.
---Exports: targetSettlement, targetFaction, targetRegionID, targetReligion, crusade
---@param eventData eventTrigger 
function onPopeAcceptsCrusadeTarget(eventData) end 

---The Pope has rejected the player's crusade target.
---Exports: targetSettlement, targetFaction, targetRegionID, targetReligion, crusade
---@param eventData eventTrigger 
function onPopeRejectsCrusadeTarget(eventData) end 

---A Crusade/Jihad has ended.
---Exports: targetSettlement, targetRegionID, crusade
---@param eventData eventTrigger 
function onCrusadeEnds(eventData) end 

---Called before the faction's turn starts.
---Exports: faction, religion
---@param eventData eventTrigger 
function onPreFactionTurnStart(eventData) end 

---Called at a faction's turn start.
---Exports: faction, religion
---@param eventData eventTrigger 
function onFactionTurnStart(eventData) end 

---Called after faction changes to a new capital.
---Exports: faction, religion
---@param eventData eventTrigger 
function onFactionNewCapital(eventData) end 

---Called at a faction's turn end.
---Exports: faction, religion
---@param eventData eventTrigger 
function onFactionTurnEnd(eventData) end 

---A Faction has voted for the new pope.
---Exports: faction, religion
---@param eventData eventTrigger 
function onVotedForPope(eventData) end 

---A Faction has been excommunicated.
---Exports: faction, religion
---@param eventData eventTrigger 
function onFactionExcommunicated(eventData) end 

---A Faction has formed a horde.
---Exports: faction, religion
---@param eventData eventTrigger 
function onHordeFormed(eventData) end 

---A cardinal has been removed from the game.
---Exports: faction, religion
---@param eventData eventTrigger 
function onCardinalRemoved(eventData) end 

---An inquisitor has been dispatched to a region.
---Exports: faction, religion
---@param eventData eventTrigger 
function onInquisitorAppointed(eventData) end 

---An assassination mission against the pope has failed and the assassin is executed.
---Exports: faction, religion
---@param eventData eventTrigger 
function onAssassinCaughtAttackingPope(eventData) end 

---The player has opened his finances panel.
---Exports: faction, religion
---@param eventData eventTrigger 
function onFinancesPanelOpen(eventData) end 

---The player has opened the faction summary panel.
---Exports: faction, religion
---@param eventData eventTrigger 
function onFactionSummaryPanelOpen(eventData) end 

---The player has opened the family tree panel.
---Exports: faction, religion
---@param eventData eventTrigger 
function onFamilyTreePanelOpen(eventData) end 

---The player has opened the diplomatic standing panel.
---Exports: faction, religion
---@param eventData eventTrigger 
function onDiplomacyPanelOpen(eventData) end 

---The player has attacked an army or settlement. The decision panel is now open.
---Exports: faction, religion
---@param eventData eventTrigger 
function onPreBattlePanelOpen(eventData) end 

---A message has arrived for the player.
---Exports: faction, eventID, religion
---@param eventData eventTrigger 
function onIncomingMessage(eventData) end 

---The player has opened a message.
---Exports: faction, eventID, religion
---@param eventData eventTrigger 
function onMessageOpen(eventData) end 

---The player has closed a message.
---Exports: eventID
---@param eventData eventTrigger 
function onMessageClosed(eventData) end 

---The player has declined automated settlement management.
---Exports: faction, religion
---@param eventData eventTrigger 
function onDeclineAutomatedSettlementManagement(eventData) end 

---The battle AI has begun processing.
---Exports: faction, religion
---@param eventData eventTrigger 
function onBattleAiCommenced(eventData) end 

---The delay phase has begun.
---Exports: faction, religion
---@param eventData eventTrigger 
function onBattleDelayPhaseCommenced(eventData) end 

---The deployment phase has begun.
---Exports: faction, religion
---@param eventData eventTrigger 
function onBattleDeploymentPhaseCommenced(eventData) end 

---The conflict phase has begun.
---Exports: faction, religion
---@param eventData eventTrigger 
function onBattleConflictPhaseCommenced(eventData) end 

---Called after a faction declares a war.
---Exports: faction, targetFaction, religion, targetReligion
---@param eventData eventTrigger 
function onFactionWarDeclared(eventData) end 

---Called after a faction declares an alliance.
---Exports: faction, targetFaction, religion, targetReligion
---@param eventData eventTrigger 
function onFactionAllianceDeclared(eventData) end 

---A marriage has occured between two factions. gets fired for both factions involved.
---Exports: faction, targetFaction, religion, targetReligion
---@param eventData eventTrigger 
function onInterFactionMarriage(eventData) end 

---Called after a faction makes a trade agreement.
---Exports: faction, targetFaction, religion, targetReligion
---@param eventData eventTrigger 
function onFactionTradeAgreementMade(eventData) end 

---A new pope has been elected.
---Exports: faction, targetFaction, religion, targetReligion
---@param eventData eventTrigger 
function onPopeElected(eventData) end 

---Called after a faction breaks an alliance.
---Exports: faction, targetFaction, religion, targetReligion
---@param eventData eventTrigger 
function onFactionBreakAlliance(eventData) end 

---A faction to faction attitude update has occurred (once every round).
---Exports: faction, targetFaction, religion
---@param eventData eventTrigger 
function onUpdateAttitude(eventData) end 

---A demeanour response has occured in diplomacy talks.
---Exports: faction, targetFaction, religion, targetReligion, amount
---@param eventData eventTrigger 
function onDemeanour(eventData) end 

---Called after a faction gives money to another faction.
---Exports: faction, targetFaction, religion, targetReligion, amount
---@param eventData eventTrigger 
function onGiveMoney(eventData) end 

---A player unit has attacked one of the enemies units.
---Exports: attackingUnit, defendingUnit, playerUnit, enemyUnit
---@param eventData eventTrigger 
function onBattlePlayerUnitAttacksEnemyUnit(eventData) end 

---An enemy unit has attacked one of the players units.
---Exports: attackingUnit, defendingUnit, playerUnit, enemyUnit
---@param eventData eventTrigger 
function onBattleEnemyUnitAttacksPlayerUnit(eventData) end 

---One of the player's units has gone berserk.
---Exports: playerUnit
---@param eventData eventTrigger 
function onBattlePlayerUnitGoesBerserk(eventData) end 

---One of the player's units has routed.
---Exports: playerUnit
---@param eventData eventTrigger 
function onBattlePlayerUnitRouts(eventData) end 

---A siege engine belonging to the player has been destroyed.
---Exports: playerUnit
---@param eventData eventTrigger 
function onBattlePlayerSiegeEngineDestroyed(eventData) end 

---A player's engine has started attacking a gate.
---Exports: playerUnit
---@param eventData eventTrigger 
function onBattleGatesAttackedByPlayerEngine(eventData) end 

---One of the enemy's units has gone berserk.
---Exports: enemyUnit
---@param eventData eventTrigger 
function onBattleEnemyUnitGoesBerserk(eventData) end 

---One of the enemy's units has routed.
---Exports: enemyUnit
---@param eventData eventTrigger 
function onBattnemyUnitRouts(eventData) end 

---A siege engine belonging to the enemy has been destroyed.
---Exports: enemyUnit
---@param eventData eventTrigger 
function onBattnemySiegeEngineDestroyed(eventData) end 

---An enemy's engine has started attacking a gate.
---Exports: enemyUnit
---@param eventData eventTrigger 
function onBattleGatesAttackedByEnemyEngine(eventData) end 

---When a particular disaster has just happened.
---Exports: resourceDescription
---@param eventData eventTrigger 
function onDisaster(eventData) end 

---An event counter has changed it's value.
---Exports: eventCounter
---@param eventData eventTrigger 
function onEventCounter(eventData) end 

---The last unit has been removed from a fort, agents do not count.
---Exports: fort, faction, regionID, religion
---@param eventData eventTrigger 
function onUngarrisonedFort(eventData) end 

---An object of the target faction has been seen by the faction.
---Exports: faction, targetFaction, regionID, coords, religion
---@param eventData eventTrigger 
function onObjSeen(eventData) end 

---The tile has been seen by the faction.
---Exports: faction, regionID, coords, religion
---@param eventData eventTrigger 
function onTileSeen(eventData) end 

---A faction to faction transgression has occurred.
---Exports: faction, targetFaction, resourceDescription, religion, targetReligion
---transgressions: TC_THREATEN_WAR, TC_DECLARED_WAR, TC_MINOR_ASSASSINATION_ATTEMPT, TC_BROKE_TREATY_TERMS, TC_BROKE_ALLIANCE, TC_INVASION
---@param eventData eventTrigger 
function onTransgression(eventData) end 

---A faction to faction forgiveness has occurred.
---Exports: faction, targetFaction, resourceDescription, religion
---forgiveness: FC_MILITARY_ASSISTANCE, FC_OBVIOUS_BRIBE
---@param eventData eventTrigger 
function onForgiveness(eventData) end 

---An army has taken a crusade or jihad target settlement.
---Exports: targetSettlement, faction, targetFaction, army, regionID, targetRegionID, coords, religion, targetReligion, crusade
---@param eventData eventTrigger 
function onArmyTakesCrusadeTarget(eventData) end 

---Units have deserted a crusade or jihad.
---Exports: targetSettlement, faction, targetFaction, targetRegionID, religion, targetReligion, crusade
---@param eventData eventTrigger 
function onUnitsDesertCrusade(eventData) end 

---Called every time an image is rendered for display
---@param pDevice LPDIRECT3DDEVICE9 
function draw(pDevice) end 

---Called when ImGui backend reload fonts
function onLoadingFonts() end 

---Called when a new campaign is started from the menu (when you click the start campaign button, nothing loaded yet).
function onNewGameStart() end 

---Called after the game reads the EDU at startup (add units here). Previously called onReadGameDbsAtStart.
function onEduParsed() end 

---Called after the game has loaded to the main menu.
function onGameInit() end 

---Called after a new campaign's data has been loaded first time. (M2TW.stratMap and M2TW.campaign)
function onNewGameLoaded() end 

---Called after the campaignStruct gets unloaded (exit to menu, load save etc).
function onUnloadCampaign() end 

---Called on ai initialized on turn start.
---@param aiFaction aiFaction 
function onAiTurn(aiFaction) end 

---Called just after LTGD reads xml every turn.
---@param ltgd aiLongTermGoalDirector 
function onCalculateLTGD(ltgd) end 

---Called just before the personality production values are propogated to the production controllers.
---@param personality aiPersonality 
function onSetProductionControllers(personality) end 

---Called on clicking the stratmap.
---@param x integer 
---@param y integer 
function onClickAtTile(x, y) end 

---Called when clicking on a character.
---@param clickedCharacter character 
function onCharacterClicked(clickedCharacter) end 

---Called on campaign tick.
function onCampaignTick() end 

---Called on battle tick.
function onBattleTick() end 

---Called after loading the campaign map, including cas models and textures. Best used for model related stuff. This fires every time including post-battle and save loading.
function onCampaignMapLoaded() end 

---Called when a unit is removed from the unit queue.
---@param item unitInQueue 
function onRemoveFromUnitQueue(item) end 

---Called on plugin load (at game start).
function onPluginLoad() end 

---Called on creating a new save file.
function onCreateSaveFile() end 

---Called on loading a save file.
function onLoadSaveFile() end 

---Called at the start of a new turn.
---@param turnNumber integer 
function onChangeTurnNum(turnNumber) end 

---Called on select worldpkgdesc for battlemap. See https://wiki.twcenter.net/index.php?title=.worldpkgdesc_-_M2TW. M2TWEOP will ignore the return value if its group does not match the required group!
---@param selectedRecordName string 
---@param selectedRecordGroup string 
---@return string newSelectedRecordName 
function onSelectWorldpkgdesc(selectedRecordName, selectedRecordGroup) end 

---Called on specified fortificationlevel in a siege of a settlement.
---@param siegedSettlement settlementStruct 
---@return integer overridedFortificationlevel 
---@return boolean isCastle override settlement type (siege equipment is slightly different between cities and castles of the same level)
function onFortificationLevelS(siegedSettlement) end 

---Called when the game calculates the value of a unit. For example, in battle, when it says 'Victory seems certain' when units are engaging each other it uses this, it uses this to decide which units to recruit, to evaluate army strength for attack decisions, for auto resolve balance and results, it is just the value that decides how strong it thinks a unit is. The long term goal director also uses this for the values you have in campaign_ai_db like military balance and free strength balance.
---@param entry eduEntry 
---@param value number 
---@return number newValue 
function onCalculateUnitValue(entry, value) end 

---Called on the completion of the siege (in any way, with any outcome).
---@param xCoord integer x coordinate of siege(settlement or fort)
---@param yCoord integer y coordinate of siege(settlement or fort)
function onEndSiege(xCoord, yCoord) end 

---Called on the starting of the siege (in any way, with any outcome).
---@param xCoord integer x coordinate of siege(settlement or fort)
---@param yCoord integer y coordinate of siege(settlement or fort)
function onStartSiege(xCoord, yCoord) end 

---Basic factionStruct table
---@class factionStruct
factionStruct = { 

    ---@type integer
    factionID = nil,

    ---@type integer
    cultureID = nil,

    ---@type integer
    aiPersonalityType = nil,

    ---@type integer
    aiPersonalityName = nil,

    ---@type aiFaction
    aiFaction = nil,

    ---@type string
    ai_label = nil,

    ---@type string
    name = nil,

    ---@type string
    localizedName = nil,

    ---@type settlementStruct
    capital = nil,

    ---@type characterRecord
    leader = nil,

    ---@type characterRecord
    heir = nil,

    ---0=AI, 1=player
    ---@type integer
    isPlayerControlled = nil,

    ---@type integer
    neighbourFactionsBitmap = nil,

    ---@type integer
    religion = nil,

    ---@type integer
    isUndiscovered = nil,

    ---@type integer
    missionCount = nil,

    ---@type integer
    freezeFactionAI = nil,

    ---@type integer
    treasuryTurnStart = nil,

    ---@type integer
    incomeDoubled = nil,

    ---@type integer
    battlesWon = nil,

    ---@type integer
    battlesLost = nil,

    ---@type integer
    settlementsCaptured = nil,

    ---@type integer
    settlementsLost = nil,

    ---@type integer
    unitsRecruited = nil,

    ---@type integer
    spottedCharactersCount = nil,

    ---@type integer
    unitsLost = nil,

    ---@type integer
    lastOpponentId = nil,

    ---@type integer
    otherFactionCount = nil,

    ---@type integer
    money = nil,

    ---@type boolean
    hasSeaAccess = nil,

    ---@type boolean
    autoManageAll = nil,

    ---@type boolean
    autoManageRecruitment = nil,

    ---@type boolean
    autoManageBuildings = nil,

    ---@type boolean
    autoManageTaxes = nil,

    ---@type boolean
    isExcommunicated = nil,

    ---@type boolean
    isHorde = nil,

    ---@type number
    spendingLimit = nil,

    ---@type integer
    kingsPurse = nil,

    ---@type integer
    regionsOwnedStart = nil,

    ---@type factionRecord
    facStrat = nil,

    ---@type factionRecord
    factionRecord = nil,

    ---includes literally all characters without distinction (so also wives, children, dead and those sent off map)
    ---@type integer
    characterRecordNum = nil,

    ---includes all the characters present on the strat map
    ---@type integer
    numOfCharacters = nil,

    ---@type integer
    armiesNum = nil,

    ---@type integer
    deadStatus = nil,

    ---@type integer
    revoltReason = nil,

    ---@type integer
    settlementsNum = nil,

    ---@type integer
    fortsNum = nil,

    ---@type integer
    portsNum = nil,

    ---@type integer
    watchtowersNum = nil,

    ---@type integer
    neighbourRegionsNum = nil,

}

---Get a character record using it's index.
---@param number integer 
---@return characterRecord retCharacter 
function factionStruct:getCharacterRecord(number) end 

---Get a character using it's index.
---@param number integer 
---@return character retCharacter 
function factionStruct:getCharacter(number) end 

---Get a spotted character using it's index.
---@param number integer 
---@return character retCharacter 
function factionStruct:getSpottedCharacter(number) end 

---Get an army using it's index.
---@param number integer 
---@return armyStruct army 
function factionStruct:getArmy(number) end 

---Get a settlement using it's index.
---@param number integer 
---@return settlementStruct settlement 
function factionStruct:getSettlement(number) end 

---Get a fort using it's index.
---@param number integer 
---@return fortStruct fort 
function factionStruct:getFort(number) end 

---Get a port using it's index.
---@param number integer 
---@return portStruct port 
function factionStruct:getPort(number) end 

---Get a watchtower using it's index.
---@param number integer 
---@return watchtowerStruct watchtower 
function factionStruct:getWatchtower(number) end 

---Delete a specific fort.
---@param fort fortStruct 
function factionStruct:deleteFort(fort) end 

---Create a fort at the specified coordinates.
---@param X integer 
---@param Y integer 
---@param cultureID integer? optional
---@return fortStruct fort 
function factionStruct:createFortXY(X, Y, cultureID) end 

---Create a watchtower at the specified coordinates.
---@param X integer 
---@param Y integer 
---@return watchtowerStruct watchTower 
function factionStruct:createWatchtower(X, Y) end 

---Check if a faction has military access to another faction.
---@param targetFaction factionStruct 
---@return boolean hasMilitaryAccess 
function factionStruct:hasMilitaryAccess(targetFaction) end 

---Set if a faction has military access to another faction.
---@param targetFaction factionStruct 
---@param hasMilitaryAccess boolean 
function factionStruct:setMilitaryAccess(targetFaction, hasMilitaryAccess) end 

---Get the faction standing between 2 factions (a faction with itself returns global standing).
---@param targetFaction factionStruct 
---@return number factionStanding 
function factionStruct:getFactionStanding(targetFaction) end 

---Set the faction standing between 2 factions (a faction with itself sets global standing).
---@param targetFaction factionStruct 
---@param factionStanding number 
function factionStruct:setFactionStanding(targetFaction, factionStanding) end 

---Get the faction ranking scores.
---@param turnNumber integer 
---@return factionRanking factionRanking 
function factionStruct:getFactionRanking(turnNumber) end 

---Get the faction ecomomy table, specified number of turns ago (max 10).
---@param turnsAgo integer 
---@return factionEconomy factionEconomy 
function factionStruct:getFactionEconomy(turnsAgo) end 

---Check if 2 factions are neighbours.
---@param targetFaction factionStruct 
---@return boolean isNeighbour 
function factionStruct:isNeighbourFaction(targetFaction) end 

---Get a region ID of a neighbouring region by index.
---@param index integer 
---@return integer nRegionID 
function factionStruct:getNeighbourRegionID(index) end 

---Get stats versus a specific other faction.
---@param targetFactionID integer 
---@return battleFactionCounter battleStats 
function factionStruct:getBattleVsFactionStats(targetFactionID) end 

---Get various statistics the long term goal director uses.
---@return aiFactionValues aiFactionValues 
function factionStruct:getAiFactionValues() end 

---Get various statistics the long term goal director uses versus a target faction.
---@param targetFaction factionStruct 
---@return interFactionLTGD interFactionLTGD 
function factionStruct:getInterFactionLTGD(targetFaction) end 

---Set the faction characters of a specific type draw their names from.
---@param characterTypeIndex integer 
---@param factionID integer 
function factionStruct:setCharacterNameFaction(characterTypeIndex, factionID) end 

---Get faction tile visibility.
---@param x integer 
---@param y integer 
---@return integer visibility use tileVisibility enum
function factionStruct:getTileVisibility(x, y) end 

---Set faction tile visibility.
---@param x integer 
---@param y integer 
---@param visibility integer use tileVisibility enum
function factionStruct:setTileVisibility(x, y, visibility) end 

---Reveal a tile.
---@param x integer 
---@param y integer 
function factionStruct:revealTile(x, y) end 

---Hide revealed tile.
---@param x integer 
---@param y integer 
function factionStruct:hideRevealedTile(x, y) end 

---Get map information.
---@param fromFaction factionStruct 
function factionStruct:getMapInfo(fromFaction) end 

---Get the first character it finds holding an ancillary if it exists in the faction.
---@param ancName string 
---@return characterRecord charWithAnc 
function factionStruct:ancillaryExists(ancName) end 

---Add a settlement.
---@param xCoord integer 
---@param yCoord integer 
---@param name string 
---@param level integer 
---@param castle boolean 
---@return settlementStruct newSett 
function factionStruct:addSettlement(xCoord, yCoord, name, level, castle) end 

---Set the faction's color.
---@param R integer 
---@param G integer 
---@param B integer 
function factionStruct:setColor(R, G, B) end 

---Set the faction's secondary color.
---@param R integer 
---@param G integer 
---@param B integer 
function factionStruct:setSecondaryColor(R, G, B) end 

---Create a new character at the specified coordinates. If you are not spawning an agent it is preferred to use spawnArmy instead.
---@param type string Character type, for example "named character".
---@param age integer The character's age
---@param name string The short name of the character.
---@param name2 string The full name of the character.
---@param subFaction integer Set to 31 to disable.
---@param portrait_custom string cannot be nil Name of the folder inside 'data/ui/custom_portraits folder. Can not be nil!
---@param xCoord integer X coordinate of the new character
---@param yCoord integer Y coordinate of the new character
---@return character newCharacter Returns a character class, not a named character class!
function factionStruct:createCharacter(type, age, name, name2, subFaction, portrait_custom, xCoord, yCoord) end 

---Create a new army at the specified coordinates. Works similarly to the script command spawn_army. You can respawn off-map characters using it. You can not re-use labels!
---@param name string The short name of the character. Use random_name to pick a random name.
---@param name2 string The full name of the character.
---@param type integer characterType.named_character or characterType.general or characterType.admiral.
---@param label string label of the character, has to be unique!. Can be nil.
---@param portrait string Name of the folder inside 'data/ui/custom_portraits folder.
---@param x integer X coordinate of the new character
---@param y integer Y coordinate of the new character
---@param age integer The character's age
---@param family boolean should character be auto adopted?
---@param subFaction integer Set to 31 to disable.
---@param unitIndex integer Index of the unit in the unit list. Can be EOP or normal.
---@param exp integer 
---@param wpn integer 
---@param armour integer 
---@param soldiers integer? optional
---@return armyStruct newArmy 
function factionStruct:spawnArmy(name, name2, type, label, portrait, x, y, age, family, subFaction, unitIndex, exp, wpn, armour, soldiers) end 

---Split an army. If there is an army at target coords they merge. They embark/disembark. They enter and leave settlements.
---@param units table 
---@param targetX integer 
---@param targetY integer 
function factionStruct:splitArmy(units, targetX, targetY) end 

---Check if a region neighbours this faction.
---@param regionID integer 
---@return boolean result 
function factionStruct:isNeighbourRegion(regionID) end 

---Count amount of alive characters of a specified type inside this faction.
---@param charType integer 
---@return integer count 
function factionStruct:getCharacterCountOfType(charType) end 

---Check if the faction can see a certain character (not in ambush stance or has been spotted).
---@param candidate character 
---@return boolean canSee 
function factionStruct:canSeeCharacter(candidate) end 

---Get a character by script label.
---@param label string 
---@return characterRecord charRecord 
function factionStruct:getCharacterByLabel(label) end 

---Change faction banner to another faction's.
---@param facName string 
function factionStruct:setFactionBanner(facName) end 

---Set a new faction leader.
---@param newLeader characterRecord 
---@param onlyLeader boolean 
function factionStruct:setLeader(newLeader, onlyLeader) end 

---Set new faction capital.
---@param newCapital settlementStruct 
function factionStruct:setCapital(newCapital) end 

---Basic battleFactionCounter table
---@class battleFactionCounter
battleFactionCounter = { 

    ---@type integer
    battlesWon = nil,

    ---@type integer
    battlesLost = nil,

    ---0 - lose, 1 - draw, 2 - win
    ---@type integer
    lastResult = nil,

}

---Basic holdRegionsWinCondition table
---@class holdRegionsWinCondition
holdRegionsWinCondition = { 

    ---@type integer
    regionsToHoldCount = nil,

    ---@type integer
    numberOfRegions = nil,

}

---Get the name of the region that has to be held to win the campaign.
---@param index integer 
---@return string regionName 
function holdRegionsWinCondition:getRegionToHoldName(index) end 

---Get the number of turns the region has to be held to win the campaign.
---@param index integer 
---@return integer turnsToHold 
function holdRegionsWinCondition:getRegionToHoldLength(index) end 

---Basic factionEconomy table
---@class factionEconomy
factionEconomy = { 

    ---@type integer
    farmingIncome = nil,

    ---@type integer
    taxesIncome = nil,

    ---@type integer
    miningIncome = nil,

    ---@type integer
    tradeIncome = nil,

    ---@type integer
    merchantIncome = nil,

    ---@type integer
    constructionIncome = nil,

    ---@type integer
    lootingIncome = nil,

    ---@type integer
    missionIncome = nil,

    ---@type integer
    diplomacyIncome = nil,

    ---@type integer
    tributesIncome = nil,

    ---@type integer
    adminIncome = nil,

    ---@type integer
    kingsPurseIncome = nil,

    ---@type integer
    wagesExpense = nil,

    ---@type integer
    upkeepExpense = nil,

    ---@type integer
    constructionExpenseBuildings = nil,

    ---@type integer
    constructionExpenseField = nil,

    ---@type integer
    recruitmentExpenseBuildings = nil,

    ---@type integer
    recruitmentExpenseMercs = nil,

    ---@type integer
    corruptionExpense = nil,

    ---@type integer
    diplomacyExpense = nil,

    ---@type integer
    tributesExpense = nil,

    ---@type integer
    disasterExpense = nil,

    ---@type integer
    entertainmentExpense = nil,

    ---@type integer
    devastationExpense = nil,

}

---Basic factionRanking table
---@class factionRanking
factionRanking = { 

    ---@type number
    totalRankingScore = nil,

    ---@type number
    militaryRankingScore = nil,

    ---@type number
    productionRankingScore = nil,

    ---@type number
    territoryRankingScore = nil,

    ---@type number
    financialRankingScore = nil,

    ---@type number
    populationRankingScore = nil,

}

---Basic aiFaction table
---@class aiFaction
aiFaction = { 

    ---@type factionStruct
    faction = nil,

    ---@type integer
    factionID = nil,

    ---@type aiLongTermGoalDirector
    LTGD = nil,

    ---@type aiPersonality
    aiPersonality = nil,

}

---Basic aiLongTermGoalDirector table
---@class aiLongTermGoalDirector
aiLongTermGoalDirector = { 

    ---@type factionStruct
    faction = nil,

    ---@type aiFaction
    aiFaction = nil,

    ---@type integer
    trustedAllyEnemiesBitfield = nil,

    ---@type integer
    freeStrengthEnemy = nil,

    ---@type integer
    freeStrengthEnemyBalance = nil,

    ---@type integer
    consideringNavalInvasion = nil,

    ---@type integer
    navalTargetRegionID = nil,

    ---@type integer
    stagingRegionID = nil,

    ---@type integer
    longTermPolicy = nil,

    ---@type integer
    longTermTroopStatus = nil,

}

---Get long term goal director values versus a specific other faction.
---@param targetFactionID integer 
---@return decisionValuesLTGD longTermGoalValues 
function aiLongTermGoalDirector:getLongTermGoalValues(targetFactionID) end 

---Check if another faction is an enemy of one the faction's trusted allies.
---@param targetFaction factionStruct 
---@return boolean isAllyEnemy 
function aiLongTermGoalDirector:isTrustedAllyEnemy(targetFaction) end 

---Check if another faction is a trusted ally.
---@param targetFactionID integer 
---@return boolean isAlly 
function aiLongTermGoalDirector:isTrustedAlly(targetFactionID) end 

---Check if a regions borders only trusted territory.
---@param regionID integer 
---@return boolean result 
function aiLongTermGoalDirector:regionsBordersOnlyTrusted(regionID) end 

---Count of settlements inside and bordering the region we currently have an invasion type for.
---@param regionID integer 
---@return integer result 
function aiLongTermGoalDirector:getInvasionTargetNum(regionID) end 

---Sum of settlements inside and bordering the region's invasion priorities.
---@param regionID integer 
---@return integer result 
function aiLongTermGoalDirector:getInvasionTargetPriority(regionID) end 

---Reset decision values.
function aiLongTermGoalDirector:reset() end 

---Basic decisionValuesLTGD table
---@class decisionValuesLTGD
decisionValuesLTGD = { 

    ---@type integer
    defendType = nil,

    ---@type integer
    defendPriority = nil,

    ---@type integer
    invasionType = nil,

    ---@type integer
    invadePriority = nil,

    ---@type boolean
    atWar = nil,

    ---@type boolean
    wantPeace = nil,

    ---@type boolean
    wantAlly = nil,

    ---@type boolean
    forceInvade = nil,

    ---@type boolean
    wantBeProtect = nil,

    ---@type boolean
    wantOfferProtect = nil,

    ---@type boolean
    allianceAgainst = nil,

    ---@type integer
    ptsDesire = nil,

    ---@type integer
    ptsAlliance = nil,

    ---@type integer
    pointsInvasion = nil,

    ---@type integer
    pointsDefense = nil,

    ---@type boolean
    canForceInvade = nil,

}

---Basic aiFactionValues table
---@class aiFactionValues
aiFactionValues = { 

    ---@type integer
    totalPopulation = nil,

    ---@type integer
    tileCount = nil,

    ---@type integer
    averagePopulation = nil,

    ---@type integer
    productionValue = nil,

    ---@type integer
    nonAlliedBorderLength = nil,

    ---@type integer
    alliedBorderLength = nil,

    ---@type integer
    fleetCount = nil,

    ---@type integer
    navalPowerPerFleet = nil,

    ---@type integer
    navalStrength = nil,

    ---@type integer
    armyCount = nil,

    ---@type integer
    strengthPerArmy = nil,

    ---@type integer
    totalStrength = nil,

    ---@type integer
    freeStrength = nil,

    ---@type integer
    enemyNum = nil,

    ---@type integer
    immediateEnemyStrength = nil,

    ---@type integer
    protectorateOf = nil,

}

---Basic interFactionLTGD table
---@class interFactionLTGD
interFactionLTGD = { 

    ---@type integer
    borderTiles = nil,

    ---@type integer
    frontLineBalance = nil,

    ---@type integer
    hasAllianceAgainst = nil,

    ---@type integer
    isStrongestNeighbour = nil,

    ---@type integer
    isWeakestNeighbour = nil,

}

---Basic aiPersonality table
---@class aiPersonality
aiPersonality = { 

    ---@type aiFaction
    aiFaction = nil,

    ---@type integer
    aiProductionControllersNum = nil,

    ---@type integer
    aiPersonalityType = nil,

    ---@type integer
    aiPersonalityName = nil,

    ---@type integer
    balancedPolicyNum = nil,

    ---@type integer
    financialPolicyNum = nil,

    ---@type integer
    militaryPolicyNum = nil,

    ---@type integer
    growthPolicyNum = nil,

    ---@type integer
    culturalPolicyNum = nil,

}

---Set bias value of the ai personality for a capability.
---@param type integer use building capabilities enum
---@param value integer 
function aiPersonality:setConstructionValue(type, value) end 

---Set bias value of the ai personality for a capability.
---@param type integer use characterTypes
---@param value integer 
function aiPersonality:setConstructionAgentValue(type, value) end 

---Set bias value of the ai personality for a capability.
---@param type integer use unitCategoryClass enum
---@param value integer 
function aiPersonality:setConstructionUnitValue(type, value) end 

---Set bias value of the ai personality for a recruitment class.
---@param type integer use unitCategoryClass enum
---@param value integer 
function aiPersonality:setRecruitmentValue(type, value) end 

---Set bias value of the ai personality for an agent type.
---@param type integer use characterTypes
---@param value integer 
function aiPersonality:setAgentValue(type, value) end 

---Get bias value of the ai personality for a capability.
---@param type integer use building capabilities enum
---@return integer value 
function aiPersonality:getConstructionValue(type) end 

---Get bias value of the ai personality for a capability.
---@param type integer use characterTypes
---@return integer value 
function aiPersonality:getConstructionAgentValue(type) end 

---Get bias value of the ai personality for a capability.
---@param type integer use unitCategoryClass enum
---@return integer value 
function aiPersonality:getConstructionUnitValue(type) end 

---Get bias value of the ai personality for a recruitment class.
---@param type integer use unitCategoryClass enum
---@return integer value 
function aiPersonality:getRecruitmentValue(type) end 

---Get bias value of the ai personality for an agent type.
---@param type integer use characterTypes
---@return integer value 
function aiPersonality:getAgentValue(type) end 

---Get a production controller by index.
---@param index integer 
---@return aiProductionController controller 
function aiPersonality:getProductionController(index) end 

---Basic factionRecord table
---@class factionRecord
factionRecord = { 

    ---Warning: resets on reload.
    ---@type integer
    primaryColorRed = nil,

    ---Warning: resets on reload.
    ---@type integer
    primaryColorGreen = nil,

    ---Warning: resets on reload.
    ---@type integer
    primaryColorBlue = nil,

    ---Warning: resets on reload.
    ---@type integer
    secondaryColorRed = nil,

    ---Warning: resets on reload.
    ---@type integer
    secondaryColorGreen = nil,

    ---Warning: resets on reload.
    ---@type integer
    secondaryColorBlue = nil,

    ---Usage unknown.
    ---@type integer
    triumphValue = nil,

    ---@type integer
    religionID = nil,

    ---@type string
    name = nil,

    ---Warning: resets on reload.
    ---@type integer
    standardIndex = nil,

    ---Warning: resets on reload.
    ---@type integer
    logoIndex = nil,

    ---Warning: resets on reload.
    ---@type integer
    smallLogoIndex = nil,

    ---@type integer
    customBattleAvailability = nil,

    ---@type integer
    periodsUnavailableInCustomBattle = nil,

    ---shouldnt do anything in med 2, but could potentially use flag to store some other info about this faction
    ---@type boolean
    canSap = nil,

    ---@type integer
    prefersNavalInvasions = nil,

    ---@type boolean
    canHavePrincess = nil,

    ---@type boolean
    canHorde = nil,

    ---@type boolean
    hasFamilyTree = nil,

    ---@type boolean
    teutonic = nil,

    ---@type boolean
    disbandToPools = nil,

    ---@type boolean
    canBuildSiegeTowers = nil,

    ---@type boolean
    canTransmitPlague = nil,

    ---@type integer
    shadowedByID = nil,

    ---@type integer
    shadowingID = nil,

    ---@type integer
    spawnsOnRevoltID = nil,

    ---@type integer
    spawnsOnRevoltOwnerID = nil,

    ---@type boolean
    spawnsOnEvent = nil,

    ---@type boolean
    roman = nil,

    ---@type boolean
    barbarian = nil,

    ---@type boolean
    eastern = nil,

    ---@type boolean
    slave = nil,

    ---@type integer
    hordeMinUnits = nil,

    ---@type integer
    hordeMaxUnits = nil,

    ---@type integer
    reductionPerHorde = nil,

    ---@type integer
    hordeUnitPerSettlementPop = nil,

    ---@type integer
    hordeMinNamedCharacters = nil,

    ---@type integer
    hordeMaxPercentArmyStack = nil,

    ---@type integer
    cultureID = nil,

}

---Set the strat model a character uses for a character type at a specific level. You can only set levels up to the amount defined in the vanilla descr_character entry. If using eop models only set after loading those (after campaign load).
---@param model string 
---@param characterType integer 
---@param level integer 
function factionRecord:setFactionStratModel(model, characterType, level) end 

---Set a faction's default battle model
---@param model string 
---@param characterType integer 
function factionRecord:setFactionBattleModel(model, characterType) end 

---Get localized name.
---@return string model 
function factionRecord:getLocalizedName() end 

---Basic fortStruct table
---@class fortStruct
fortStruct = { 

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type character
    governor = nil,

    ---@type armyStruct
    army = nil,

    ---@type factionStruct
    ownerFaction = nil,

    ---@type integer
    siegeNum = nil,

    ---@type integer
    maxHoldoutTurns = nil,

    ---@type integer
    siegeDuration = nil,

    ---@type integer
    preSiegePopulation = nil,

    ---@type integer
    factionTradedFrom = nil,

    ---@type integer
    plagueDuration = nil,

    ---@type integer
    salliedOut = nil,

    ---@type integer
    readyToSurrender = nil,

    ---@type crusadeStruct
    takenByCrusade = nil,

    ---@type integer
    plagued = nil,

    ---@type integer
    subFactionID = nil,

    ---@type integer
    regionID = nil,

    ---@type rebelFaction
    rebelEntry = nil,

    ---@type integer
    creatorFactionID = nil,

    ---@type integer
    creatorCultureID = nil,

    ---@type integer
    gatesAreOpened = nil,

    ---@type integer
    fortFortificationLevel = nil,

    ---@type integer
    characterCount = nil,

    ---@type changeOwner
    changeOwner = nil,

}

---Get a specific siege by it's index
---@param siegeIdx integer 
---@return siegeStruct siege 
function fortStruct:getSiege(siegeIdx) end 

---Get a specific character by index.
---@param index integer 
---@return character foundChar 
function fortStruct:getCharacter(index) end 

---Change fort ownership.
---@param newFaction factionStruct 
---@param convertGarrison boolean 
function fortStruct:changeOwner(newFaction, convertGarrison) end 

---Check if fort is allied to faction.
---@param otherFac factionStruct 
---@return boolean isAlly 
function fortStruct:isAllyToFaction(otherFac) end 

---Check if fort is at war with faction.
---@param otherFac factionStruct 
---@return boolean isEnemy 
function fortStruct:isEnemyToFaction(otherFac) end 

---Basic options1 table
---@class options1
options1 = { 

    ---@type integer
    widescreen = nil,

    ---@type integer
    antiAliasMode = nil,

    ---@type integer
    subtitles = nil,

    ---@type integer
    english = nil,

    ---@type integer
    noBattleTimeLimit = nil,

    ---@type integer
    useNewCursorActions = nil,

    ---@type integer
    campaignNumTimesPlay = nil,

    ---@type integer
    uiWinConditions = nil,

    ---@type integer
    isScenario = nil,

    ---@type integer
    isHotseatEnabled = nil,

    ---@type integer
    hotseatAutosave = nil,

    ---@type integer
    email = nil,

    ---@type integer
    saveConfig = nil,

    ---@type integer
    closeAfterSave = nil,

    ---@type integer
    validateData = nil,

    ---@type integer
    campaignMapSpeedUp = nil,

    ---@type integer
    skipAiFactions = nil,

    ---@type integer
    labelCharacters = nil,

    ---@type integer
    noBackGroundFmv = nil,

    ---@type integer
    disableArrowMarkers = nil,

    ---@type integer
    arcadeBattles = nil,

    ---@type integer
    disableEvents = nil,

    ---@type integer
    isPrologue = nil,

    ---@type integer
    updateAiCamera = nil,

    ---@type integer
    hideCampaign = nil,

    ---@type integer
    unlimitedMenOnBattlefield = nil,

    ---@type integer
    tgaReserveSpace = nil,

    ---@type integer
    keysetUsed = nil,

    ---@type integer
    muteAdvisor = nil,

    ---@type integer
    advancedStatsAlways = nil,

    ---@type integer
    microManageAllSettlements = nil,

    ---@type integer
    blindAdvisor = nil,

    ---@type integer
    terrainQuality = nil,

    ---@type integer
    vegetationQuality = nil,

    ---@type integer
    useQuickChat = nil,

    ---@type integer
    graphicsAdaptor = nil,

    ---@type integer
    showDemeanour = nil,

    ---@type integer
    radar = nil,

    ---@type integer
    unitCards = nil,

    ---@type integer
    sa_cards = nil,

    ---@type integer
    buttons = nil,

    ---@type integer
    tutorialBattlePlayed = nil,

    ---@type integer
    disableVnVs = nil,

    ---@type integer
    allUsers = nil,

    ---@type boolean
    isPlayingDlc = nil,

}

---Basic options2 table
---@class options2
options2 = { 

    ---@type integer
    campaignResolutionX = nil,

    ---@type integer
    campaignResolutionY = nil,

    ---@type integer
    battleResolutionX = nil,

    ---@type integer
    battleResolutionY = nil,

    ---@type integer
    vSync = nil,

    ---@type integer
    uiIconBarCheck = nil,

    ---@type integer
    uiRadarCheck = nil,

    ---@type integer
    useMorale = nil,

    ---@type integer
    uiAmmoCheck = nil,

    ---@type integer
    useFatigue = nil,

    ---@type integer
    uiSupplyCheck = nil,

    ---this does not toggle fow just remembers if it was on or off
    ---@type integer
    toggleFowState = nil,

    ---@type integer
    cameraRestrict = nil,

    ---@type integer
    eventCutscenes = nil,

    ---@type integer
    defaultCameraInBattle = nil,

    ---@type integer
    splashes = nil,

    ---@type integer
    stencilShadows = nil,

    ---@type integer
    audioEnable = nil,

    ---@type integer
    speechEnable = nil,

    ---@type integer
    firstTimePlay = nil,

    ---@type integer
    toggleAutoSave = nil,

    ---@type integer
    showBanners = nil,

    ---@type integer
    passwords = nil,

    ---@type integer
    hotseatTurns = nil,

    ---@type integer
    hotseatScroll = nil,

    ---@type integer
    allowValidationFeatures = nil,

    ---@type integer
    campaignSpeed = nil,

    ---@type integer
    labelSettlements = nil,

    ---@type integer
    disablePapalElections = nil,

    ---@type integer
    autoresolveAllBattles = nil,

    ---@type integer
    savePrefs = nil,

    ---@type integer
    disableConsole = nil,

    ---@type integer
    validateDiplomacy = nil,

    ---@type integer
    unitDetail = nil,

    ---@type integer
    buildingDetail = nil,

    ---if limited
    ---@type integer
    maxSoldiersOnBattlefield = nil,

    ---@type integer
    unitSize = nil,

    ---@type integer
    cameraRotateSpeed = nil,

    ---@type integer
    cameraMoveSpeed = nil,

    ---@type number
    cameraSmoothing = nil,

    ---@type integer
    masterVolume = nil,

    ---@type integer
    musicVolume = nil,

    ---@type integer
    speechVolume = nil,

    ---@type integer
    sfxVolume = nil,

    ---@type integer
    subFactionAccents = nil,

    ---@type integer
    tgaWidth = nil,

    ---@type number
    tgaAspect = nil,

    ---@type integer
    tgaInputScale = nil,

    ---@type integer
    scrollMinZoom = nil,

    ---@type integer
    scrollMaxZoom = nil,

    ---@type integer
    advisorVerbosity = nil,

    ---@type integer
    effectQuality = nil,

    ---@type integer
    EnableCameraCampaignSmoothing = nil,

    ---@type integer
    chatMsgDuration = nil,

    ---@type integer
    saveGameSpyPassword = nil,

    ---@type integer
    addDateToLogs = nil,

    ---@type integer
    playerFactionID = nil,

    ---@type integer
    campaignDifficulty = nil,

    ---@type integer
    battleDifficulty = nil,

    ---@type integer
    showToolTips = nil,

    ---@type integer
    isNormalHud = nil,

    ---@type integer
    showPackageLitter = nil,

    ---@type number
    unitSizeMultiplierLow = nil,

    ---@type number
    unitSizeMultiplierMedium = nil,

    ---@type number
    unitSizeMultiplierLarge = nil,

}

---Check if a faction was selected on faction select screen.
---@param factionID integer 
---@return boolean selected 
function options2:isHotseatPlayer(factionID) end 

---Select a faction on faction select screen.
---@param factionID integer 
---@param set boolean 
function options2:setHotseatPlayer(factionID, set) end 

---Basic gameSTDUI table
---@class gameSTDUI
gameSTDUI = { 

}

---Get a game UI element, element must be opened.
---@param elementName string 
---@return uiElementStruct element 
function gameSTDUI.getUiElement(elementName) end 

---Basic uiElementStruct table
---@class uiElementStruct
uiElementStruct = { 

    ---@type string
    elementName = nil,

    ---@type integer
    xSize = nil,

    ---@type integer
    ySize = nil,

    ---@type integer
    xPos = nil,

    ---@type integer
    yPos = nil,

    ---@type integer
    subElementsNum = nil,

}

---Get a subelement of an UI element using the index.
---@param index integer Starts from 0.
---@return uiElementStruct subelement 
function uiElementStruct:getSubElement(index) end 

---execute standard game UI element, use only for buttons
function uiElementStruct:execute() end 

---Basic settlementTextStrings table.
---@class settlementTextStrings
settlementTextStrings = { 

    ---@type uiString
    incomeString = nil,

    ---@type uiString
    incomeValue = nil,

    ---@type uiString
    publicOrderString = nil,

    ---@type uiString
    publicOrderValue = nil,

    ---@type uiString
    populationString = nil,

    ---@type uiString
    populationValue = nil,

    ---@type uiString
    populationGrowthString = nil,

    ---@type uiString
    populationGrowthValue = nil,

}

---Basic uiString table.
---@class uiString
uiString = { 

    ---(0-255)
    ---@type integer
    thickness = nil,

    ---(0-255)
    ---@type integer
    blue = nil,

    ---(0-255)
    ---@type integer
    green = nil,

    ---(0-255)
    ---@type integer
    red = nil,

}

---Basic settlementInfoScroll table.
---@class settlementInfoScroll
settlementInfoScroll = { 

    ---@type settlementStruct
    settlement = nil,

}

---Get settlement text color info.
---@return settlementTextStrings getUIStrings 
function settlementInfoScroll:getUIStrings() end 

---Basic uiCardManager table
---@class uiCardManager
uiCardManager = { 

    ---@type integer
    selectedUnitCardsCount = nil,

    ---@type integer
    unitCardsCount = nil,

    ---@type settlementStruct
    selectedSettlement = nil,

    ---@type character
    selectedCharacter = nil,

    ---@type fortStruct
    selectedFort = nil,

}

---Get selected unit card by index.
---@param index integer 
---@return unit selectedUnit 
function uiCardManager:getSelectedUnitCard(index) end 

---Get unit card by index (battle or strat).
---@param index integer 
---@return unit unit 
function uiCardManager:getUnitCard(index) end 

---Get building info scroll.
---@return buildingInfoScroll scroll 
function uiCardManager.getBuildingInfoScroll() end 

---Get unit info scroll.
---@return unitInfoScroll scroll 
function uiCardManager.getUnitInfoScroll() end 

---Get family tree from scroll. Make sure scroll is open!
---@return uiFamilyTree familyTree 
function uiCardManager.getFamilyTree() end 

---Basic unitInfoScroll table
---@class unitInfoScroll
unitInfoScroll = { 

    ---If the scroll is about existing unit
    ---@type unit
    unit = nil,

    ---@type eduEntry
    eduEntry = nil,

    ---@type unitInQueue
    recruitmentItem = nil,

    ---@type mercPoolUnit
    mercenary = nil,

}

---Basic buildingInfoScroll table
---@class buildingInfoScroll
buildingInfoScroll = { 

    ---@type settlementStruct
    settlement = nil,

    ---@type building
    building = nil,

    ---@type edbEntry
    edbEntry = nil,

    ---@type buildingLevel
    level = nil,

}

---Basic uiFamilyLeaf table
---@class uiFamilyLeaf
uiFamilyLeaf = { 

    ---@type characterRecord
    record = nil,

    ---@type integer
    generation = nil,

    ---@type uiFamilyLeaf
    parent = nil,

    ---@type uiFamilyLeaf
    spouse = nil,

    ---@type integer
    numChildren = nil,

}

---Get a child.
---@param index integer 
---@return uiFamilyLeaf child 
function uiFamilyLeaf:getChild(index) end 

---Basic uiFamilyTree table
---@class uiFamilyTree
uiFamilyTree = { 

    ---@type uiFamilyLeaf
    familyRoot = nil,

    ---@type integer
    generations = nil,

    ---@type uiFamilyLeaf
    hoveredLeaf = nil,

    ---@type uiFamilyLeaf
    selectedLeaf = nil,

    ---@type boolean
    canSelectAll = nil,

}

---
---@class mapImageStruct
mapImageStruct = { 

    ---@type number
    blurStrength = nil,

    ---@type boolean
    useBlur = nil,

    ---Can be slow on large or frequently updated images! needs use blur also true.
    ---@type boolean
    adaptiveBlur = nil,

}

---Create a new image you want to determine region colors.
---@return mapImageStruct mapImage 
function mapImageStruct.makeMapImage() end 

---Export image with current tiles set and black background.
---@param name string 
function mapImageStruct:exportImage(name) end 

---Reset image state.
function mapImageStruct:clearMapImage() end 

---Create a new map texture. Use an uncompressed(!) dds image that is some multiple of your map_regions size. The background must line up with map_regions for whatever scale you chose for it to display correctly.
---@param path string full path to texture
---@return integer x size of the image
---@return integer y size of the image
---@return integer id of the image
function mapImageStruct:loadMapTexture(path) end 

---Fill a region with a color.
---@param id integer region ID
---@param r integer red
---@param g integer green
---@param b integer blue
---@param a integer alpha
function mapImageStruct:fillRegionColor(id, r, g, b, a) end 

---Add a color to already filled region.
---@param id integer region ID
---@param r integer red
---@param g integer green
---@param b integer blue
---@param a integer alpha
function mapImageStruct:addRegionColor(id, r, g, b, a) end 

---Fill a tile with a color.
---@param x integer x coordinate
---@param y integer y coordinate
---@param r integer red
---@param g integer green
---@param b integer blue
---@param a integer alpha
---@return mapImageStruct mapImage 
function mapImageStruct:fillTileColor(x, y, r, g, b, a) end 

---Add a color to an already set tile.
---@param x integer x coordinate
---@param y integer y coordinate
---@param r integer red
---@param g integer green
---@param b integer blue
---@param a integer alpha
---@return mapImageStruct mapImage 
function mapImageStruct:addTileColor(x, y, r, g, b, a) end 

---Basic eopRebelFaction table
---@class eopRebelFaction
eopRebelFaction = { 

    ---@type string
    name = nil,

    ---@type rebelFaction
    rebelEntry = nil,

    ---@type integer
    bannerRed = nil,

    ---@type integer
    bannerGreen = nil,

    ---@type integer
    bannerBlue = nil,

    ---@type boolean
    bannerSet = nil,

}

---Set the rebel faction's symbol.
---@param bannerName string as added with M2TWEOP.addBanner
function eopRebelFaction:setBannerSymbol(bannerName) end 

---Add a character model for this rebel faction's captains.
---@param modelName string 
function eopRebelFaction:addCharacterModel(modelName) end 

---Basic rebelFaction table
---@class rebelFaction
rebelFaction = { 

    ---@type integer
    index = nil,

    ---@type string
    name = nil,

    ---@type integer
    category = nil,

    ---@type integer
    chance = nil,

    ---@type integer
    totalUnitCount = nil,

}

---Get a rebel unit category.
---@param index integer Maximum 5.
---@return rebelCategory cat 
function rebelFaction:getCategory(index) end 

---Basic rebelCategory table
---@class rebelCategory
rebelCategory = { 

    ---@type integer
    unitCount = nil,

}

---Get a rebel unit.
---@param index integer 
---@return rebelUnit un 
function rebelCategory:getUnit(index) end 

---Basic rebelUnit table
---@class rebelUnit
rebelUnit = { 

    ---@type string
    unitName = nil,

    ---@type integer
    category = nil,

    ---@type integer
    soldierCount = nil,

    ---@type integer
    armour = nil,

    ---@type integer
    weapon = nil,

}

---Basic settlementStruct table
---@class settlementStruct
settlementStruct = { 

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type character
    governor = nil,

    ---@type character
    lastGovernor = nil,

    ---@type character
    portAdmiral = nil,

    ---@type armyStruct
    army = nil,

    ---@type portStruct
    port = nil,

    ---internal name of settlement
    ---@type string
    name = nil,

    ---@type string
    localizedName = nil,

    ---@type factionStruct
    ownerFaction = nil,

    ---@type integer
    creatorFactionID = nil,

    ---@type integer
    regionID = nil,

    ---@type integer
    level = nil,

    ---@type boolean
    salliedOut = nil,

    ---@type integer
    previousOwner = nil,

    ---@type boolean
    readyToSurrender = nil,

    ---@type integer
    lastHordeFaction = nil,

    ---@type integer
    moneySpentConstruction = nil,

    ---@type integer
    moneySpentTraining = nil,

    ---@type integer
    moneySpentRecruitment = nil,

    ---@type integer
    timeSinceLastRebellion = nil,

    ---@type crusadeStruct
    takenByCrusade = nil,

    ---@type integer
    isCastle = nil,

    ---@type integer
    plagueDuration = nil,

    ---@type boolean
    scriptRebel = nil,

    ---@type integer
    factionTradedFrom = nil,

    ---@type integer
    maxHoldoutTurns = nil,

    ---@type integer
    siegeCasualties = nil,

    ---@type integer
    siegeDuration = nil,

    ---@type integer
    subFactionID = nil,

    ---@type integer
    yearFounded = nil,

    ---@type boolean
    isCapital = nil,

    ---@type boolean
    isMinorSettlement = nil,

    ---@type boolean
    isTradeBlocked = nil,

    ---@type integer
    harvestSuccess = nil,

    ---@type integer
    baseFertility = nil,

    ---@type integer
    loyaltyLastTurn = nil,

    ---@type integer
    rebelFactionChance = nil,

    ---@type boolean
    plagued = nil,

    ---@type integer
    plagueDeaths = nil,

    ---start at 10 for settlements owned at game start without specification in descr_strat
    ---@type integer
    turnsOwned = nil,

    ---@type integer
    populationSiegeStart = nil,

    ---@type integer
    settlementTaxLevel = nil,

    ---@type integer
    recruitmentPoolCount = nil,

    ---@type integer
    recruitmentCapabilityNum = nil,

    ---@type integer
    freezeRecruitmentPool = nil,

    ---@type integer
    spiesInRecruitmentQueue = nil,

    ---@type integer
    assassinsInRecruitmentQueue = nil,

    ---@type integer
    diplomatsInRecruitmentQueue = nil,

    ---@type integer
    admiralsInRecruitmentQueue = nil,

    ---@type integer
    merchantsInRecruitmentQueue = nil,

    ---@type integer
    priestsInRecruitmentQueue = nil,

    ---@type integer
    foundingConversionRate = nil,

    ---@type integer
    ownerConversionRate = nil,

    ---@type aiProductionController
    aiProductionController = nil,

    ---@type integer
    unitInQueueCount = nil,

    ---@type integer
    turmoil = nil,

    ---@type rebelFaction
    rebelEntry = nil,

    ---@type integer
    governorDuration = nil,

    ---@type integer
    isProvokedRebellion = nil,

    ---@type integer
    publicHealth = nil,

    ---@type integer
    populationSize = nil,

    ---@type boolean
    gatesAreOpened = nil,

    ---@type integer
    characterCount = nil,

    ---@type table
    savedData = nil,

    ---@type integer
    buildingsNum = nil,

    ---@type buildingsQueue
    buildingsQueue = nil,

    ---@type integer
    resourcesNum = nil,

    ---@type settlementStats
    settlementStats = nil,

    ---@type settlementStats
    settlementStatsLastTurn = nil,

    ---@type integer
    siegesNum = nil,

}

---Change owner faction of settlement. All agents, armies etc. leave the settlement.
---@param newOwner factionStruct Faction to change ownership to.
---@param convertGarrison boolean 
function settlementStruct:changeOwner(newOwner, convertGarrison) end 

---Get the settlement's specific regligion's value
---@param religionID integer In order of descr\_religions.txt, starting from 0
---@return number religionValue from 0 to 1
function settlementStruct:getReligion(religionID) end 

---Set the settlement's specific religion's value, make sure the sum of all religion values does not exceed 1.0!
---@param religionID integer in order of descr\_religions.txt, starting from 0
---@param religionValue number from 0 to 1
function settlementStruct:setReligion(religionID, religionValue) end 

---Get a settlement's standing points with a specific guild by ID
---@param guild_id integer 
function settlementStruct:getGuildStanding(guild_id) end 

---Set the settlement's standing points with specific guild.
---@param guild_id integer 
---@param standing integer 
function settlementStruct:setGuildStanding(guild_id, standing) end 

---Get a specific building by it's index.
---@param number integer 
---@return building build 
function settlementStruct:getBuilding(number) end 

---Create a building in the settlement.
---@param buildingLevelName string 
---@return building build 
function settlementStruct:createBuilding(buildingLevelName) end 

---Destroy a building of a specified type in the settlement.
---@param typeName string Type of building.
---@param isReturnMoney boolean Should money be returned to the faction like with a manual desctruction.
function settlementStruct:destroyBuilding(typeName, isReturnMoney) end 

---Get a specific resource by it's index.
---@param number integer 
---@return tradeResource resource 
function settlementStruct:getResource(number) end 

---Get a specific siege by it's index
---@param siegeIdx integer 
---@return siegeStruct siege 
function settlementStruct:getSiege(siegeIdx) end 

---Get a specific character by index.
---@param index integer 
---@return character foundChar 
function settlementStruct:getCharacter(index) end 

---Get a capability by capability type.
---@param capabilityType integer 
---@return settlementCapability capability 
function settlementStruct:getSettlementCapability(capabilityType) end 

---Get an agent capability by agent type (only recruitable agents) 0 = spy, 1 = assassin, 2 = diplomat, 3 = princess, 4 = merchant, 5 = priest.
---@param agentType integer 
---@return settlementCapability capability 
function settlementStruct:getAgentCapability(agentType) end 

---Get an agent limit capability by agent type (only recruitable agents) 0 = spy, 1 = assassin, 2 = diplomat, 3 = princess, 4 = merchant, 5 = priest.
---@param agentType integer 
---@return settlementCapability capability 
function settlementStruct:getAgentLimitCapability(agentType) end 

---Get a recruitment capability by index (max 64!).
---@param index integer 
---@return recruitmentCapability capability 
function settlementStruct:getRecruitmentCapability(index) end 

---Get a recruitment pool by index.
---@param index integer 
---@return settlementRecruitmentPool pool 
function settlementStruct:getSettlementRecruitmentPool(index) end 

---Upgrade a settlement to the next level.
function settlementStruct:upgrade() end 

---Check if settlement has a building line.
---@param buildingName string 
---@return building foundBuilding 
function settlementStruct:buildingPresent(buildingName) end 

---Check if settlement has a minimum building level.
---@param buildingLevelName string 
---@param exact boolean 
---@return boolean result 
function settlementStruct:buildingPresentMinLevel(buildingLevelName, exact) end 

---Get available construction items.
---@return constructionOptions options 
function settlementStruct:getConstructionOptions() end 

---Get available recruitment items.
---@return recruitmentOptions options 
function settlementStruct:getRecruitmentOptions() end 

---Get unit in queue.
---@param index integer 
---@return unitInQueue unit 
function settlementStruct:getUnitInQueue(index) end 

---Create an army in a settlement (don't need a character). Used to add units to an empty settlement.
---@return armyStruct army 
function settlementStruct:createArmyInSettlement() end 

---Check if the settlement can construct a building level.
---@param entry edbEntry 
---@param level integer 
---@return boolean canConstuct 
function settlementStruct:canConstructBuilding(entry, level) end 

---Get fortitication level of the settlement.
---@return integer lvl 
function settlementStruct:getFortificationLevel() end 

---Basic settlementStats table
---@class settlementStats
settlementStats = { 

    ---- Get only
    ---@type integer
    PopGrowthBaseFarm = nil,

    ---@type integer
    population = nil,

    ---- Get only
    ---@type integer
    PopGrowthFarms = nil,

    ---- Get only
    ---@type integer
    PopGrowthHealth = nil,

    ---- Get only
    ---@type integer
    PopGrowthBuildings = nil,

    ---- Get only
    ---@type integer
    PopGrowthTaxBonus = nil,

    ---- Get only
    ---@type integer
    PopGrowthEntertainment = nil,

    ---- Get only
    ---@type integer
    PopGrowthTrade = nil,

    ---- Get only
    ---@type integer
    PopGrowthGovernorInfluence = nil,

    ---- Get only
    ---@type integer
    PopGrowthSqualor = nil,

    ---- Get only
    ---@type integer
    PopGrowthPlague = nil,

    ---- Get only
    ---@type integer
    PopGrowthTaxPenalty = nil,

    ---- Get only
    ---@type integer
    PublicOrderGarrison = nil,

    ---- Get only
    ---@type integer
    PublicOrderLaw = nil,

    ---- Get only
    ---@type integer
    PublicOrderBuildingsEntertainment = nil,

    ---- Get only
    ---@type integer
    PublicOrderGovernorInfluence = nil,

    ---- Get only
    ---@type integer
    PublicOrderTaxBonus = nil,

    ---- Get only
    ---@type integer
    PublicOrderTriumph = nil,

    ---- Get only
    ---@type integer
    PublicOrderPopulationBoom = nil,

    ---- Get only
    ---@type integer
    PublicOrderEntertainment = nil,

    ---- Get only
    ---@type integer
    PublicOrderHealth = nil,

    ---- Get only
    ---@type integer
    PublicOrderReligiousOrder = nil,

    ---- Get only
    ---@type integer
    PublicOrderFear = nil,

    ---- Get only
    ---@type integer
    PublicOrderGlory = nil,

    ---- Get only
    ---@type integer
    PublicOrderSqualor = nil,

    ---- Get only
    ---@type integer
    PublicOrderDistanceToCapital = nil,

    ---- Get only
    ---@type integer
    PublicOrderNoGovernance = nil,

    ---- Get only
    ---@type integer
    PublicOrderTaxPenalty = nil,

    ---- Get only
    ---@type integer
    PublicOrderUnrest = nil,

    ---- Get only
    ---@type integer
    PublicOrderBesieged = nil,

    ---- Get only
    ---@type integer
    PublicOrderBlockaded = nil,

    ---- Get only
    ---@type integer
    PublicOrderCulturalUnrest = nil,

    ---- Get only
    ---@type integer
    PublicOrderExcommunication = nil,

    ---- Get only
    ---@type integer
    PublicOrder = nil,

    ---- Get only
    ---@type integer
    FarmsIncome = nil,

    ---- Get only
    ---@type integer
    TaxesIncome = nil,

    ---- Get only
    ---@type integer
    MiningIncome = nil,

    ---- Get only
    ---@type integer
    TradeIncome = nil,

    ---- Get only
    ---@type integer
    DiplomaticIncome = nil,

    ---- Get only
    ---@type integer
    DemolitionIncome = nil,

    ---- Get only
    ---@type integer
    LootingIncome = nil,

    ---- Get only
    ---@type integer
    BuildingsIncome = nil,

    ---- Get only
    ---@type integer
    AdminIncome = nil,

    ---- Get only
    ---@type integer
    ConstructionExpense = nil,

    ---- Get only
    ---@type integer
    RecruitmentExpense = nil,

    ---- Get only
    ---@type integer
    DiplomaticExpense = nil,

    ---- Get only
    ---@type integer
    CorruptionExpense = nil,

    ---- Get only
    ---@type integer
    EntertainmentExpense = nil,

    ---- Get only
    ---@type integer
    DevastationExpense = nil,

    ---- Get only
    ---@type integer
    TotalIncomeWithoutAdmin = nil,

    ---@type integer
    majorityReligionID = nil,

}

---Basic settlementCapability table
---@class settlementCapability
settlementCapability = { 

    ---@type integer
    value = nil,

    ---@type integer
    bonus = nil,

}

---Basic recruitmentCapability table
---@class recruitmentCapability
recruitmentCapability = { 

    ---@type integer
    eduIndex = nil,

    ---@type integer
    xp = nil,

    ---@type number
    initialSize = nil,

    ---@type number
    replenishRate = nil,

    ---@type number
    maxSize = nil,

}

---Basic settlementRecruitmentPool table
---@class settlementRecruitmentPool
settlementRecruitmentPool = { 

    ---@type integer
    eduIndex = nil,

    ---@type number
    availablePool = nil,

}

---Basic buildingsQueue table
---@class buildingsQueue
buildingsQueue = { 

    ---maximum is 6
    ---@type integer
    numBuildingsInQueue = nil,

}

---Get building in queue by position
---@param position integer 
---@return buildingInQueue buildingInQueue 
function buildingsQueue:getBuildingInQueue(position) end 

---Basic constructionOptions table
---@class constructionOptions
constructionOptions = { 

    ---@type integer
    buildingNum = nil,

    ---@type integer
    totalCost = nil,

    ---@type integer
    totalTime = nil,

}

---Get an available construction item.
---@param index integer 
---@return buildingInQueue building 
function constructionOptions:getConstructionOption(index) end 

---Basic buildingInQueue table
---@class buildingInQueue
buildingInQueue = { 

    ---Is nil if building doesn't exist yet.
    ---@type building
    building = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type integer
    currentLevel = nil,

    ---@type edbEntry
    edbEntry = nil,

    ---0 = upgrade, 1 = normal, 4 = convert settlement
    ---@type integer
    constructionType = nil,

    ---@type integer
    previousLevel = nil,

    ---@type integer
    buildCost = nil,

    ---@type integer
    buildTurnsPassed = nil,

    ---@type integer
    buildTurnsRemaining = nil,

    ---@type integer
    percentBuilt = nil,

}

---Get name of building in queue type (chain)
---@return string buildingType (building chain name)
function buildingInQueue:getQueueBuildingType() end 

---Get name of building in queue level
---@return string buildingName 
function buildingInQueue:getQueueBuildingName() end 

---Add a building to the construction queue.
---@return boolean success 
function buildingInQueue:addBuildingToQueue() end 

---Basic recruitmentOptions table
---@class recruitmentOptions
recruitmentOptions = { 

    ---@type integer
    unitNum = nil,

    ---@type integer
    totalCost = nil,

    ---@type integer
    totalTime = nil,

}

---Get an available recruitment item.
---@param index integer 
---@return unitInQueue item 
function recruitmentOptions:getRecruitmentOption(index) end 

---Basic unitInQueue table
---@class unitInQueue
unitInQueue = { 

    ---0 = normal, 1 = ship, 2 = agent, 3 = retraining 4 = retraining ship
    ---@type integer
    recruitType = nil,

    ---@type integer
    experience = nil,

    ---@type integer
    armourUpg = nil,

    ---@type integer
    weaponUpg = nil,

    ---@type eduEntry
    eduEntry = nil,

    ---@type unit
    retrainingUnit = nil,

    ---@type integer
    agentType = nil,

    ---@type integer
    soldierCount = nil,

    ---@type integer
    cost = nil,

    ---@type integer
    recruitTime = nil,

    ---@type integer
    turnsTrained = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type integer
    turnNumber = nil,

    ---@type integer
    isMercenary = nil,

}

---Add a unit to the recruitment queue.
---@return boolean success 
function unitInQueue:addUnitToQueue() end 

---Basic building table
---@class building
building = { 

    ---@type integer
    level = nil,

    ---@type integer
    hp = nil,

    ---@type integer
    factionID = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type edbEntry
    edbEntry = nil,

}

---Get the name of the building type (the building chain in export\_descr\_buildings.txt).
---@return string buildingType (building chain name)
function building:getType() end 

---Get name of building level (as per export\_descr\_buildings.txt).
---@return string buildingName 
function building:getName() end 

---Basic aiProductionController table
---@class aiProductionController
aiProductionController = { 

    ---@type aiFaction
    aiFaction = nil,

    ---@type integer
    regionID = nil,

    ---@type settlementStruct
    settlement = nil,

    ---@type integer
    autoManagePolicy = nil,

    ---@type boolean
    isAutoManaged = nil,

    ---@type boolean
    isAutoManagedRecruitment = nil,

    ---@type boolean
    isAutoManagedConstruction = nil,

    ---@type boolean
    isAutoManagedTaxes = nil,

    ---@type integer
    spyBias = nil,

    ---@type integer
    assassinBias = nil,

    ---@type integer
    diplomatBias = nil,

    ---@type integer
    admiralBias = nil,

    ---@type integer
    priestBias = nil,

    ---@type integer
    merchantBias = nil,

}

---Set bias value of the ai personality for a capability.
---@param type integer use building capabilities enum
---@param value integer 
function aiProductionController:setConstructionValue(type, value) end 

---Set bias value of the ai personality for a recruitment class.
---@param type integer use unitCategoryClass enum
---@param value integer 
function aiProductionController:setRecruitmentValue(type, value) end 

---Set bias value of the ai personality.
---@param type integer use productionBias enum
---@param value integer 
function aiProductionController:setExtraBias(type, value) end 

---Get bias value of the ai personality.
---@param type integer use productionBias enum
---@return integer value 
function aiProductionController:getExtraBias(type) end 

---Get bias value of the ai personality for a capability.
---@param type integer use building capabilities enum
---@return integer value 
function aiProductionController:getConstructionValue(type) end 

---Get bias value of the ai personality for a recruitment class.
---@param type integer use unitCategoryClass enum
---@return integer value 
function aiProductionController:getRecruitmentValue(type) end 

---Basic guild table
---@class guild
guild = { 

    ---@type string
    name = nil,

    ---@type integer
    id = nil,

    ---@type edbEntry
    entry = nil,

    ---@type integer
    level1 = nil,

    ---@type integer
    level2 = nil,

    ---@type integer
    level3 = nil,

}

---Basic strat map table.
---@class stratMap
stratMap = { 

    ---@type boolean
    isLoaded = nil,

    ---@type integer
    mapWidth = nil,

    ---@type integer
    mapHeight = nil,

    ---@type integer
    regionsNum = nil,

    ---@type integer
    volcanoesNum = nil,

    ---@type integer
    landConnectionsNum = nil,

    ---@type integer
    landMassNum = nil,

}

---Get a specific region by index.
---@param index integer 
---@return regionStruct region 
function stratMap.getRegion(index) end 

---Get a specific tile by it's coordinates.
---@param x integer 
---@param y integer 
---@return tileStruct tile 
function stratMap.getTile(x, y) end 

---Get a volcano's coordinates.
---@param index integer 
---@return coordPair tile 
function stratMap:getVolcanoCoords(index) end 

---Get a land connection's coordinates (the green arrows on the map that allow you to cross bodies of water).
---@param index integer 
---@return coordPair tile 
function stratMap:getLandConnection(index) end 

---Get a landmass (collection of regions reachable by land, like a continent or island).
---@param index integer 
---@return landMass landMass 
function stratMap:getLandMass(index) end 

---Get a settlement by its internal name. This is the intended way to get a settlement quickly by it's name.
---@param name string 
---@return settlementStruct settlement 
function stratMap:getSettlement(name) end 

---Get a region by its internal name.
---@param name string 
---@return regionStruct region 
function stratMap:getRegionByName(name) end 

---Slowly move the camera to the specified tile.
---@param xCoord integer 
---@param yCoord integer 
function stratMap.moveCamera(xCoord, yCoord) end 

---Quickly move the camera to the specified tile.
---@param xCoord integer 
---@param yCoord integer 
function stratMap.jumpCamera(xCoord, yCoord) end 

---Set the zoom level of the camera.
---@param distance number 
function stratMap.zoomCamera(distance) end 

---Start drawing .cas campaign strategy model with a unique ID in some coords. Can be used at any time.
---@param modelId integer Unique ID
---@param x integer 
---@param y integer 
---@param sizeMultiplier integer 1 is value with what it draw as same size as game objects
function stratMap.startDrawModelAt(modelId, x, y, sizeMultiplier) end 

---Stop drawing .cas campaign strategy model with a unique ID. Can be used at any time.
---@param modelId integer Unique ID
function stratMap.stopDrawModel(modelId) end 

---Replace a custom tile. Change the custom battlefield on the specified coordinates. Note: You must have at least one entry in custom_tiles_db.txt for this to work.
---@param label string Identifier.
---@param xCoord integer X coordinate of tile.
---@param yCoord integer Y coordinate of tile.
---@param filename string Just the name, not full path (.wfc)
---@param weather string Weather on the battle map.
---@param dayTime string Time of day.
function stratMap.replaceTile(label, xCoord, yCoord, filename, weather, dayTime) end 

---Set movement extents color.
---@param r integer Red
---@param g integer Green
---@param b integer Blue
---@param a integer Alpha
---@param border integer borderAlpha
function stratMap.setOwnExtentsColor(r, g, b, a, border) end 

---Set enemy movement extents color.
---@param r integer Red
---@param g integer Green
---@param b integer Blue
---@param a integer Alpha
---@param border integer borderAlpha
function stratMap.setEnemyExtentsColor(r, g, b, a, border) end 

---Set Zone of Control color.
---@param r integer Red
---@param g integer Green
---@param b integer Blue
---@param a integer Alpha
function stratMap.setZocColor(r, g, b, a) end 

---Find a valid tile near a location (or on location if its valid).
---@param x integer 
---@param y integer 
---@param characterType integer use characterType enum
---@return integer newX 
---@return integer newY 
function stratMap.findValidTileNearTile(x, y, characterType) end 

---Check if the position is contained within the strat map.
---@param x integer 
---@param y integer 
---@return boolean inBounds 
function stratMap:isInBounds(x, y) end 

---Get the shortest between 2 positions.
---@param fromX integer 
---@param fromY integer 
---@param destX integer 
---@param destY integer 
---@return stratMovePath movePath 
function stratMap.getMovePath(fromX, fromY, destX, destY) end 

---Regenerate frontier tiles.
function stratMap.rebuildFrontiers() end 

---It is used as follows if region capital owner is different to minor settlement owner:
---newValue = value * (modifierBase + (allianceOffset or NeutralOffset) + tradeRightsOffset)
---if they belong to same faction it is just value * modifierOwnFaction
---Affected income values are: trade, farms and mining
---Affected growth values are: farms, baseFarm and trade
---@class minorSettlementBalance
minorSettlementBalance = { 

    ---Default: 0.0
    ---@type number
    incomeModifierBase = nil,

    ---Default: 0.25
    ---@type number
    growthModifierBase = nil,

    ---Default: 0.30
    ---@type number
    incomeModifierAllianceOffset = nil,

    ---Default: 0.40
    ---@type number
    growthModifierAllianceOffset = nil,

    ---Default: 0.15
    ---@type number
    incomeModifierNeutralOffset = nil,

    ---Default: 0.20
    ---@type number
    growthModifierNeutralOffset = nil,

    ---Default: 0.30
    ---@type number
    incomeModifierTradeRightsOffset = nil,

    ---Default: 0.15
    ---@type number
    growthModifierTradeRightsOffset = nil,

    ---Default: 0.75
    ---@type number
    incomeModifierOwnFaction = nil,

    ---Default: 0.75
    ---@type number
    growthModifierOwnFaction = nil,

}

---Basic coordPair table.
---@class coordPair
coordPair = { 

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

}

---Basic landMass table.
---@class landMass
landMass = { 

    ---@type integer
    index = nil,

    ---@type integer
    regionsNum = nil,

}

---Get a region ID by index.
---@param index integer 
---@return integer regionID 
function landMass:getRegionID(index) end 

---Basic roadStruct table.
---@class roadStruct
roadStruct = { 

    ---@type integer
    coordsNum = nil,

    ---@type integer
    regionIdStart = nil,

    ---@type integer
    regionIdEnd = nil,

    ---@type integer
    id = nil,

    ---@type boolean
    onlyHalf = nil,

    -----only counts from 1 side (importer)
    ---@type integer
    tradeValue = nil,

}

---Get a road coord by index.
---@param index integer 
---@return coordPair coords 
function roadStruct:getCoord(index) end 

---Basic tile table.
---@class tileStruct
tileStruct = { 

    ---@type roadStruct
    road = nil,

    ---(1 = land, 0 = sea)
    ---@type integer
    isLand = nil,

    ---@type integer
    groundType = nil,

    ---@type integer
    regionID = nil,

    ---@type integer
    choke = nil,

    ---@type integer
    xCoord = nil,

    ---@type integer
    yCoord = nil,

    ---@type integer
    factionID = nil,

    ---@type integer
    heatValue = nil,

    ---@type integer
    height = nil,

    ---@type integer
    climate = nil,

    ---@type boolean
    hasRiver = nil,

    ---@type boolean
    hasRiverSource = nil,

    ---@type boolean
    hasCliff = nil,

    ---@type tradeResource|nil
    resource = nil,

    ---@type character|nil
    character = nil,

    ---@type settlementStruct|nil
    settlement = nil,

    ---@type fortStruct|nil
    fort = nil,

    ---@type portStruct|nil
    port = nil,

    ---@type watchtowerStruct|nil
    watchtower = nil,

    ---@type boolean
    hasCrossing = nil,

    ---@type boolean
    hasVolcano = nil,

    ---@type boolean
    hasSeaCrossing = nil,

    ---@type boolean
    hasRoad = nil,

    ---@type integer
    roadLevel = nil,

    ---@type integer
    earthquakeLevel = nil,

    ---@type integer
    floodLevel = nil,

    ---@type integer
    stormLevel = nil,

    ---@type integer
    volcanoLevel = nil,

    ---@type boolean
    isScorched = nil,

    ---@type boolean
    isTradeRoute = nil,

    ---@type integer
    devastationLevel = nil,

    ---@type boolean
    isDeforested = nil,

    ---@type boolean
    isBorder = nil,

    ---@type boolean
    isLandCoast = nil,

    ---@type boolean
    isSeaCoast = nil,

    ---@type boolean
    hasSettlement = nil,

    ---@type boolean
    hasFort = nil,

    ---@type boolean
    hasDock = nil,

    ---@type boolean
    hasPort = nil,

    ---@type boolean
    hasWatchtower = nil,

    ---@type boolean
    hasNavy = nil,

    ---@type boolean
    hasArmy = nil,

    ---@type boolean
    isDevastated = nil,

    ---@type boolean
    isImpassible = nil,

    ---@type number
    mpModifier = nil,

}

---Check if a faction has an army near a tile.
---@param factionID integer 
---@return boolean hasArmyNearTile 
function tileStruct:factionHasArmyNearTile(factionID) end 

---Check if a faction has a character on a tile.
---@param factionID integer 
---@return boolean hasCharacterOnTile 
function tileStruct:factionHasCharacterOnTile(factionID) end 

---Get amount of characters on a tile.
---@return integer characterCount 
function tileStruct:getTileCharacterCount() end 

---Get a character on a tile.
---@param index integer 
---@return character char 
function tileStruct:getTileCharacterAtIndex(index) end 

---Basic regionStruct table.
---@class regionStruct
regionStruct = { 

    ---@type string
    regionName = nil,

    ---@type string
    localizedName = nil,

    ---@type string
    settlementName = nil,

    ---@type string
    legioName = nil,

    ---@type integer
    regionID = nil,

    ---as set in descr_strat
    ---@type integer
    roadLevel = nil,

    ---as set in descr_strat
    ---@type integer
    farmingLevel = nil,

    ---@type integer
    famineThreat = nil,

    ---@type integer
    harvestSuccess = nil,

    ---@type integer
    armyCount = nil,

    ---@type integer
    settlementCount = nil,

    ---@type integer
    watchtowerCount = nil,

    ---@type integer
    resourceCount = nil,

    ---@type integer
    fortCount = nil,

    ---@type integer
    colorRed = nil,

    ---@type integer
    colorGreen = nil,

    ---@type integer
    colorBlue = nil,

    ---@type boolean
    isSea = nil,

    ---@type boolean
    peninsular = nil,

    ---@type landMass
    landMass = nil,

    ---@type roadStruct
    roadToPort = nil,

    ---@type integer
    seaConnectedRegionsCount = nil,

    ---@type integer
    loyaltyFactionID = nil,

    ---@type integer
    seaImportRegionsCount = nil,

    ---@type integer
    tilesBorderingEdgeOfMapCount = nil,

    ---@type integer
    devastatedTilesCount = nil,

    ---@type settlementStruct
    regionCapital = nil,

    ---@type integer
    tileCount = nil,

    ---@type integer
    fertileTilesCount = nil,

    ---@type integer
    neighbourRegionsNum = nil,

    ---@type integer
    resourceTypesBitMap = nil,

    ---@type integer
    regionCapitalX = nil,

    ---@type integer
    regionCapitalY = nil,

    ---@type integer
    portEntranceXCoord = nil,

    ---@type integer
    portEntranceYCoord = nil,

    ---@type factionStruct
    faction = nil,

    ---@type mercPool
    mercPool = nil,

    ---@type string
    rebelType = nil,

    ---@type string
    localizedRebelsName = nil,

    ---@type integer
    triumphValue = nil,

    ---@type integer
    totalTradeValue = nil,

    ---@type integer
    landingPointsCount = nil,

    ---@type integer
    patrolPointsCount = nil,

}

---Get an army by it's index.
---@param index integer 
---@return armyStruct army 
function regionStruct:getArmy(index) end 

---Get a fort by it's index.
---@param index integer 
---@return fortStruct fort 
function regionStruct:getFort(index) end 

---Get a settlement by it's index (iterating).
---@param index integer 
---@return settlementStruct sett 
function regionStruct:getSettlement(index) end 

---Get a watchtower by it's index.
---@param index integer 
---@return watchtowerStruct watchtower 
function regionStruct:getWatchtower(index) end 

---Get a resource by it's index.
---@param index integer 
---@return tradeResource resource 
function regionStruct:getResource(index) end 

---Get a neighbour region by it's index.
---@param index integer 
---@return neighbourRegion nRegion 
function regionStruct:getNeighbour(index) end 

---Check if a region has a hidden resource.
---@param name string 
---@return boolean hr 
function regionStruct:getHiddenResource(name) end 

---Set a region's hidden resource (reset on game restart).
---@param name string 
---@param enable boolean 
function regionStruct:setHiddenResource(name, enable) end 

---Get a region that is reachable from this region.
---@param index integer 
---@return seaConnectedRegion connectedRegion 
function regionStruct:getSeaConnectedRegion(index) end 

---Get a region this region is importing trade goods from.
---@param index integer 
---@return seaConnectedRegion seaImportRegion 
function regionStruct:getSeaImportRegion(index) end 

---Get a region sea edge (point where it borders both sea and another land region).
---@param index integer 
---@return tileStruct edge 
function regionStruct:getRegionSeaEdge(index) end 

---Get a devastated tile.
---@param index integer 
---@return tileStruct tile 
function regionStruct:getDevastatedTile(index) end 

---Get a tile that borders the edge of the map.
---@param index integer 
---@return tileStruct edge 
function regionStruct:getTileBorderingEdgeOfMap(index) end 

---Get a tile by index.
---@param index integer 
---@return tileStruct tile 
function regionStruct:getTile(index) end 

---Get a landing point by index.
---@param index integer 
---@return landingPoint point 
function regionStruct:getLandingPoint(index) end 

---Get a fertile tile by index.
---@param index integer 
---@return tileStruct tile 
function regionStruct:getFertileTile(index) end 

---Get religion amount from a set number of turns ago.
---@param religionID integer 
---@param turnsAgo integer (max 19)
---@return number religionAmount 
function regionStruct:getReligionHistory(religionID, turnsAgo) end 

---Check if region has a resource type.
---@param resourceID integer 
---@return boolean hasResource 
function regionStruct:hasResourceType(resourceID) end 

---Get total value of all resources in the region.
---@return integer value 
function regionStruct:getResourcesValue() end 

---Check if the region contains a settlement owned by the specified faction.
---@param factionID integer 
---@return boolean result 
function regionStruct:hasFaction(factionID) end 

---Get number of settlements in the region that are hostile to specified faction.
---@param factionID integer 
---@return integer num 
function regionStruct:getEnemySettsToFaction(factionID) end 

---Get number of settlements in the region that are neutral to specified faction.
---@param factionID integer 
---@return integer num 
function regionStruct:getNeutralSettsToFaction(factionID) end 

---Get the strength total of all armies in this region that are hostile to a specific faction.
---@param factionID integer 
---@return integer totalStrength 
function regionStruct:getHostileArmiesStrength(factionID) end 

---Basic landingPoint table.
---@class landingPoint
landingPoint = { 

    ---@type tileStruct
    landTile = nil,

    ---From water to land
    ---@type number
    moveCost = nil,

    ---@type tileStruct
    seaTile = nil,

}

---Basic neighbourRegion table.
---@class neighbourRegion
neighbourRegion = { 

    ---@type integer
    regionID = nil,

    ---@type regionStruct
    region = nil,

    ---@type integer
    tradeValue = nil,

    ---@type boolean
    isBlocked = nil,

    ---from settlement to settlement
    ---@type number
    moveCost = nil,

    ---@type integer
    borderTilesCount = nil,

    ---@type integer
    frontierTilesCount = nil,

    ---@type integer
    ambushTilesCount = nil,

    ---@type integer
    deepFrontierTilesCount = nil,

    ---@type integer
    borderCrossingCount = nil,

    ---@type roadStruct
    connectingRoad = nil,

}

---Get a border tile by index.
---@param index integer 
---@return tileStruct tile 
function neighbourRegion:getBorderTile(index) end 

---Get a frontier tile by index.
---@param index integer 
---@return tileStruct tile 
function neighbourRegion:getFrontierTile(index) end 

---Get an ambush tile by index.
---@param index integer 
---@return tileStruct tile 
function neighbourRegion:getAmbushTile(index) end 

---Get a deep frontier tile by index.
---@param index integer 
---@return tileStruct tile 
function neighbourRegion:getDeepFrontierTile(index) end 

---Get a border tile that is passable to other region.
---@param index integer 
---@return tileStruct tile 
function neighbourRegion:getBorderCrossing(index) end 

---Basic seaConnectedRegion table.
---@class seaConnectedRegion
seaConnectedRegion = { 

    ---@type integer
    regionID = nil,

    ---@type integer
    seaExportValue = nil,

    ---@type integer
    seaImportValue = nil,

    ---@type integer
    tilesReachableCount = nil,

    ---@type integer
    seaTradeLanePathCount = nil,

}

---Get a reachable tile by index.
---@param index integer 
---@return landingTile tile 
function seaConnectedRegion:getReachableTile(index) end 

---Get trade lane coords by index.
---@param index integer 
---@return coordPair coords 
function seaConnectedRegion:getTradeLaneCoord(index) end 

---Basic landingTile table.
---@class landingTile
landingTile = { 

    ---@type tileStruct
    tile = nil,

    ---Move points required to reach this tile
    ---@type number
    moveCost = nil,

}

---Basic stratMovePath table.
---@class stratMovePath
stratMovePath = { 

    ---@type number
    totalCost = nil,

    ---@type integer
    totalTiles = nil,

}

---Get move path coords by index.
---@param index integer 
---@return coordPair coords 
function stratMovePath:getPathCoords(index) end 

---Unit table
---@class unit
unit = { 

    ---@type eduEntry
    eduEntry = nil,

    ---@type number
    movePoints = nil,

    ---0 means inactive, 1 means active, 2 means labelled unit (for Battle)
    ---@type integer
    aiActiveSet = nil,

    ---soldiers count. You can change it on stratmap and soldiers updated. Use @{setParams} if you need change several parameters at once.
    ---@type integer
    soldierCountStratMap = nil,

    ---soldiers expierence. You can change it on stratmap and soldiers updated. Use @{setParams} if you need change several parameters at once.
    ---@type integer
    exp = nil,

    ---soldiers armour. You can change it on stratmap and soldiers updated. Use @{setParams} if you need change several parameters at once.
    ---@type integer
    armourLVL = nil,

    ---soldiers weapon. You can change it on stratmap and soldiers updated. Use @{setParams} if you need change several parameters at once.
    ---@type integer
    weaponLVL = nil,

    ---Read only
    ---@type integer
    soldierCountStratMapMax = nil,

    ---Read only
    ---@type integer
    soldierCountBattleMap = nil,

    ---use moraleStatus enum
    ---@type integer
    moraleLevel = nil,

    ---@type integer
    isCloseFormation = nil,

    ---@type integer
    ID = nil,

    ---@type integer
    flankRightState = nil,

    ---@type integer
    flankLeftState = nil,

    ---@type integer
    flankRearState = nil,

    ---@type integer
    soldiersFled = nil,

    ---@type boolean
    isInfighting = nil,

    ---@type boolean
    inPlayableArea = nil,

    ---@type boolean
    isHidden = nil,

    ---@type boolean
    canBeSeen = nil,

    ---@type boolean
    hasBeenSeen = nil,

    ---@type boolean
    inFormation = nil,

    ---@type boolean
    isMercenary = nil,

    ---@type boolean
    stakesUsed = nil,

    ---@type boolean
    specialAbilityActive = nil,

    ---@type boolean
    holyInspired = nil,

    ---@type boolean
    dead = nil,

    ---@type boolean
    unableToFire = nil,

    ---@type unit
    flankRightThreat = nil,

    ---@type unit
    flankLeftThreat = nil,

    ---@type unit
    flankRearThreat = nil,

    ---@type unitAiGroupData
    aiGroupData = nil,

    ---@type integer
    nearbyFriendlyUnitsNum = nil,

    ---@type integer
    nearbyEnemyUnitsNum = nil,

    ---@type settlementStruct
    retrainingSettlement = nil,

    ---@type unitGroup
    unitGroup = nil,

    ---(battle)
    ---@type integer
    fatigue = nil,

    ---(battle)
    ---@type number
    angle = nil,

    ---(battle)
    ---@type integer
    maxAmmo = nil,

    ---(battle)
    ---@type integer
    currentAmmo = nil,

    ---(battle)
    ---@type number
    battlePosZ = nil,

    ---(battle)
    ---@type number
    battlePosX = nil,

    ---(battle)
    ---@type number
    battlePosY = nil,

    ---@type character
    character = nil,

    ---@type unitPositionData
    unitPositionData = nil,

    ---@type armyStruct
    army = nil,

    ---(only infantry and artillery units!)
    ---@type integer
    siegeEngineNum = nil,

    ---@type string
    alias = nil,

    --->0 means crusading, <0 means disbaning, 0 means no crusade
    ---@type integer
    crusadeState = nil,

    ---@type crusadeStruct
    crusade = nil,

    ---@type integer
    supplies = nil,

    ---@type unitStats
    unitStats = nil,

}

---Kill this unit
function unit:kill() end 

---Set unit basic parameters
---@param exp integer Experience. Maximum: 9
---@param armor integer Armour level.
---@param weapon integer Weapon Upgrade. Maximum: 1
function unit:setParams(exp, armor, weapon) end 

---Check if unit has edu attribute.
---@param attributeName string 
function unit:hasAttribute(attributeName) end 

---Check if unit has guard mode, skirmish or fire at will on.
---@param property integer use enum: unitBattleProperties.guardMode, unitBattleProperties.skirmish, unitBattleProperties.fireAtWill
---@return boolean hasProperty 
function unit:hasBattleProperty(property) end 

---Set a unit battle property (guard mode, skirmish or fire at will).
---@param property integer use enum: unitBattleProperties.guardMode, unitBattleProperties.skirmish, unitBattleProperties.fireAtWill
---@param value boolean 
function unit:setBattleProperty(property, value) end 

---Get unit action status in battle ( idling, hiding, ready, reforming, moving, withdrawing, missiles\_firing, missiles\_reloading, charging, fighting, pursuing, routing, fighting\_backs\_to\_the\_walls, running\_amok, rallying, dead, leaving\_battle, entering\_battle, left\_battle, go\_berserk, taunting, bracing, infighting).
---@return string actionStatus 
function unit:getActionStatus() end 

---Get unit action status in battle (use enum, faster than string).
---@return integer actionStatus 
function unit:getActionStatusInt() end 

---Is unit set to run?
---@return boolean movingFastSet 
function unit:isMovingFastSet() end 

---Toggle unit running.
---@param movingFastSet boolean 
function unit:setMovingFastSet(movingFastSet) end 

---Is unit on walls?
---@return boolean isOnWalls 
function unit:isOnWalls() end 

---Is unit engaged in melee?
---@return boolean isEngaged 
function unit:isEngaged() end 

---Is unit under fire?
---@return boolean isUnderFire 
function unit:isUnderFire() end 

---Get unit mount class.
---@return integer mountClass 
function unit:getMountClass() end 

---Get unit formation type.
---@return integer formationType 
function unit:getFormation() end 

---Orders the unit to move to the specified position.
---@param xCoord number 
---@param yCoord number 
---@param run boolean 
function unit:moveToPosition(xCoord, yCoord, run) end 

---Immediately positions the unit at the given location.
---@param xCoord number 
---@param yCoord number 
---@param angle integer 
---@param width integer 
function unit:immediatePlace(xCoord, yCoord, angle, width) end 

---Searches an arc in front of the unit, and attacks the closest enemy found.
---@param angle integer 
---@param run boolean 
function unit:attackClosestUnit(angle, run) end 

---Orders the unit to attack another unit.
---@param targetUnit unit 
---@param run boolean 
function unit:attackUnit(targetUnit, run) end 

---Deploys stakes.
function unit:deployStakes() end 

---Changes the unit's formation.
---@param formationType integer use formationType enum
function unit:changeFormation(formationType) end 

---Orders the unit to stop it's orders.
function unit:halt() end 

---Orders the unit to move to the specified position with a specified rotation and orientation.
---@param xCoord number 
---@param yCoord number 
---@param widthInMen integer 
---@param angle integer 
---@param run boolean 
function unit:moveToOrientation(xCoord, yCoord, widthInMen, angle, run) end 

---Orders the unit to move to the specified position.
---@param xCoord number 
---@param yCoord number 
---@param run boolean 
function unit:moveRelative(xCoord, yCoord, run) end 

---Orders the attacker to move into missile range of the target.
---@param targetUnit unit 
---@param run boolean 
function unit:moveToMissileRange(targetUnit, run) end 

---Turn to an absolute angle or by an angle relative to it's current rotation.
---@param angle integer 
---@param isRelative boolean 
function unit:turn(angle, isRelative) end 

---Makes the unit taunt.
function unit:taunt() end 

---Makes the unit perform their special ability.
---@param heroOnly boolean 
function unit:useSpecialAbility(heroOnly) end 

---Get Siege engine.
---@param index integer 
---@return siegeEngineStruct engine 
function unit:getSiegeEngine(index) end 

---Order a unit with appropriate siege equipment to attack an appropriate building (including docking towers/ladders to walls).
---@param building buildingBattle 
function unit:attackBuilding(building) end 

---Order an infantry unit to collect an engine (ram/ladder/tower).
---@param engine siegeEngineStruct 
function unit:collectEngine(engine) end 

---Get Nearby friendly unit.
---@param index integer 
---@return unit nearUnit 
function unit:getNearbyFriendlyUnit(index) end 

---Get Nearby Enemy unit.
---@param index integer 
---@return unit nearUnit 
function unit:getNearbyEnemyUnit(index) end 

---Set ai active set to on or off depending on if the unit is player controlled.
function unit:releaseUnit() end 

---Check if action status is firing or reloading.
---@return boolean isFiring 
function unit:isFiring() end 

---Check if action status is idle or hiding or taunting or celebrating or ready.
---@return boolean isIdle 
function unit:isIdle() end 

---
---@class unitAiGroupData
unitAiGroupData = { 

    ---@type unitGroup
    group = nil,

    ---@type battleObjective
    battleObjective = nil,

    ---@type boolean
    inMelee = nil,

    ---@type boolean
    isAvailable = nil,

}

---
---@class unitPositionData
unitPositionData = { 

    ---@type integer
    engagedUnitsNum = nil,

    ---@type unit
    unit = nil,

    ---(amount of walls
    ---@type integer
    isOnWallsCount = nil,

    ---(amount of towers)
    ---@type integer
    isInTowerCount = nil,

    ---(amount of gatehouses)
    ---@type integer
    isInGateHouseCount = nil,

    ---@type boolean
    isHalted = nil,

    ---@type boolean
    hasTargets = nil,

    ---use enum: combatStatus
    ---@type integer
    combatStatus = nil,

    ---dont set
    ---@type number
    lastTargetCoordX = nil,

    ---dont set
    ---@type number
    lastTargetCoordY = nil,

    ---@type integer
    towersUnderFireFromCount = nil,

    ---@type integer
    unitsUnderFireFromCount = nil,

}

---Get unit that is firing at this unit.
---@param index integer 
---@return unit unit 
function unitPositionData:getUnitUnderFireFrom(index) end 

---Get unit that is fighting this unit in melee.
---@param index integer 
---@return unit unit 
function unitPositionData:getEngagedUnit(index) end 

---Get the unit this unit is currently targeting.
---@return unit unit 
function unitPositionData:getTargetUnit() end 

---Get unit's current action type (use enum).
---@return integer actionType 
function unitPositionData:getActionType() end 

---Basic siegeEngineStruct table
---@class siegeEngineStruct
siegeEngineStruct = { 

    ---@type number
    xCoord = nil,

    ---@type number
    zCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type number
    mass = nil,

    ---@type integer
    angle = nil,

    ---@type integer
    health = nil,

    ---Unique ID not class!
    ---@type integer
    engineID = nil,

    ---@type unit
    currentUnit = nil,

    ---@type unit
    lastUnit = nil,

    ---@type integer
    fireLevel = nil,

    ---@type integer
    isBurning = nil,

    ---@type unitStats
    stats = nil,

}

---Get the type of the engine (use the enum).
---@return integer type 
function siegeEngineStruct:getType() end 

---Basic unitGroup table
---@class unitGroup
unitGroup = { 

    ---@type integer
    unitsInFormationNum = nil,

    ---@type integer
    unitsNotInFormationNum = nil,

    ---@type integer
    unitNumTotal = nil,

    ---@type number
    xCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type integer
    angle = nil,

    ---1 = defend, 2 = attack
    ---@type integer
    automationType = nil,

    ---if automated defend (1)
    ---@type number
    defendXCoord = nil,

    ---if automated defend (1)
    ---@type number
    defendYCoord = nil,

    ---if automated defend (1)
    ---@type number
    defendRadius = nil,

    ---if automated attack (2)
    ---@type unit
    targetUnit = nil,

    ---1 = defend, 2 = attack (setting this passes info from new fields to active fields)
    ---@type integer
    newAutomationType = nil,

    ---if automated defend (1)
    ---@type number
    newDefendXCoord = nil,

    ---if automated defend (1)
    ---@type number
    newDefendYCoord = nil,

    ---if automated defend (1)
    ---@type number
    newDefendRadius = nil,

    ---if automated attack (2)
    ---@type unit
    newTargetUnit = nil,

}

---Add a unit to the group (won't add if unit already in group).
---@param unit unit 
function unitGroup:addUnit(unit) end 

---Remove a unit from a group.
---@param unit unit 
function unitGroup:removeUnit(unit) end 

---Undefine a unit group.
function unitGroup:undefine() end 

---Toggle group automation.
---@param automate boolean 
function unitGroup:automate(automate) end 

---Automate group attack.
---@param targetUnit unit 
function unitGroup:automateAttack(targetUnit) end 

---Automate group defense.
---@param xCoord number 
---@param yCoord number 
---@param radius number 
function unitGroup:automateDefense(xCoord, yCoord, radius) end 

---Get a unit in the group's formation (not given individual commands). Once you give a unit a command once it seems they will always be in the other array.
---@param index integer 
---@return unit unit 
function unitGroup:getUnitInFormation(index) end 

---Get a unit not in the group's formation (not given individual commands). Once you give a unit a command once it seems they will always be in the other array.
---@param index integer 
---@return unit unit 
function unitGroup:getUnitNotInFormation(index) end 

---Place a group at a location.
---@param xCoord number 
---@param yCoord number 
---@param angle number 
function unitGroup:place(xCoord, yCoord, angle) end 

---Change the group's units formations.
---@param formationType integer use enum
function unitGroup:changeUnitFormation(formationType) end 

---Move to put an enemy group inside your missile range.
---@param targetGroup unitGroup 
---@param run boolean 
function unitGroup:moveToMissileRangeOfGroup(targetGroup, run) end 

---Move to put an enemy unit inside your missile range.
---@param targetUnit unit 
---@param run boolean 
function unitGroup:moveToMissileRangeOfUnit(targetUnit, run) end 

---Attack another group.
---@param targetGroup unitGroup 
---@param run boolean 
function unitGroup:attackGroup(targetGroup, run) end 

---Halt the group's orders.
function unitGroup:halt() end 

---Move to the specified location in formation.
---@param xCoord number 
---@param yCoord number 
---@param run boolean 
function unitGroup:moveFormed(xCoord, yCoord, run) end 

---Move to the specified location not in formation.
---@param xCoord number 
---@param yCoord number 
---@param run boolean 
function unitGroup:moveUnformed(xCoord, yCoord, run) end 

---Move to the specified location in formation.
---@param xCoord number 
---@param yCoord number 
---@param run boolean 
function unitGroup:moveRelativeFormed(xCoord, yCoord, run) end 

---Move to the specified location not in formation.
---@param xCoord number 
---@param yCoord number 
---@param run boolean 
function unitGroup:moveRelativeUnformed(xCoord, yCoord, run) end 

---Turn the group either relative or absolute.
---@param angle integer 
---@param isRelative boolean 
function unitGroup:turn(angle, isRelative) end 

---
---@class projectileStruct
projectileStruct = { 

    ---@type string
    name = nil,

    ---@type number
    accuracy = nil,

    ---@type number
    accuracyVsBuildings = nil,

    ---@type number
    accuracyVsTowers = nil,

    ---@type integer
    damage = nil,

    ---@type integer
    damageToTroops = nil,

    ---@type integer
    isBodyPiercing = nil,

    ---@type integer
    fiery = nil,

    ---@type integer
    affectedByRain = nil,

}

---
---@class mountStruct
mountStruct = { 

    ---@type string
    name = nil,

    ---@type string
    modelName = nil,

    ---@type integer
    mountClass = nil,

    ---@type number
    radius = nil,

    ---@type number
    xRadius = nil,

    ---@type number
    yRadius = nil,

    ---@type number
    yOffset = nil,

    ---@type number
    height = nil,

    ---@type number
    mass = nil,

    ---@type number
    elephantDeadRadius = nil,

    ---@type number
    elephantTuskRadius = nil,

    ---@type number
    elephantTuskZ = nil,

    ---@type number
    elephantRootNodeHeight = nil,

    ---@type integer
    elephantNumberOfRiders = nil,

    ---@type number
    riderOffSetX = nil,

    ---@type number
    riderOffSetY = nil,

    ---@type number
    riderOffsetZ = nil,

    ---@type number
    rootNodeHeight = nil,

}

---Get elephant rider offset.
---@param index integer 
---@return vector3 offsets 
function mountStruct:getElephantRiderOffset(index) end 

---
---@class vector3
vector3 = { 

    ---@type number
    xCoord = nil,

    ---@type number
    yCoord = nil,

    ---@type number
    zCoord = nil,

}

---Basic eduEntry table
---@class eduEntry
eduEntry = { 

    ---- Get only
    ---@type string
    eduType = nil,

    ---- Get only
    ---@type string
    soldier = nil,

    ---- Get only
    ---@type string
    unitCardTga = nil,

    ---- Get only
    ---@type string
    infoCardTga = nil,

    ---@type string
    infoPicDir = nil,

    ---@type string
    cardPicDir = nil,

    ---@type string
    localizedName = nil,

    ---@type string
    localizedDescription = nil,

    ---@type string
    localizedDescriptionShort = nil,

    ---- Get only
    ---@type integer
    index = nil,

    ---- Get only
    ---@type integer
    unitCreatedCounter = nil,

    ---- Get only
    ---@type integer
    category = nil,

    ---- Get only
    ---@type integer
    class = nil,

    ---- Get only
    ---@type integer
    categoryClassCombo = nil,

    ---times 4
    ---@type integer
    recruitPriorityOffset = nil,

    ---@type number
    crusadingUpkeepModifier = nil,

    ---@type number
    aiUnitValuePerSoldier = nil,

    ---@type number
    aiUnitValue = nil,

    ---@type integer
    soldierCount = nil,

    ---@type number
    mass = nil,

    ---@type number
    width = nil,

    ---@type number
    height = nil,

    ---@type boolean
    legio = nil,

    ---@type boolean
    hideForest = nil,

    ---@type boolean
    hideImprovedForest = nil,

    ---@type boolean
    hideLongGrass = nil,

    ---@type boolean
    hideAnywhere = nil,

    ---@type boolean
    powerCharge = nil,

    ---@type boolean
    seaFaring = nil,

    ---@type boolean
    command = nil,

    ---@type boolean
    heavyUnit = nil,

    ---@type boolean
    hardy = nil,

    ---@type boolean
    veryHardy = nil,

    ---@type boolean
    slave = nil,

    ---@type boolean
    frightenFoot = nil,

    ---@type boolean
    frightenMounted = nil,

    ---@type boolean
    freeUpkeepUnit = nil,

    ---@type boolean
    gunpowderUnit = nil,

    ---@type boolean
    gunpowderArtillery = nil,

    ---@type boolean
    fireByRank = nil,

    ---@type boolean
    startNotSkirmishing = nil,

    ---@type boolean
    mercenaryUnit = nil,

    ---@type boolean
    noCustom = nil,

    ---@type boolean
    isPeasant = nil,

    ---@type boolean
    generalUnit = nil,

    ---@type boolean
    generalUnitUpgrade = nil,

    ---@type boolean
    cantabrianCircle = nil,

    ---@type boolean
    druid = nil,

    ---@type boolean
    screechingWomen = nil,

    ---@type boolean
    warCry = nil,

    ---@type boolean
    stakes = nil,

    ---@type boolean
    canSkirmish = nil,

    ---@type number
    moveSpeedMod = nil,

    ---@type number
    unitSpacingFrontToBackClose = nil,

    ---@type number
    unitSpacingSideToSideClose = nil,

    ---@type number
    unitSpacingFrontToBackLoose = nil,

    ---@type number
    unitSpacingSideToSideLoose = nil,

    ---@type integer
    statHealth = nil,

    ---@type integer
    statHealthAnimal = nil,

    ---@type integer
    statHeat = nil,

    ---@type integer
    statScrub = nil,

    ---@type integer
    statSand = nil,

    ---@type integer
    statForest = nil,

    ---@type integer
    statSnow = nil,

    ---@type integer
    recruitTime = nil,

    ---@type integer
    recruitCost = nil,

    ---@type integer
    upkeepCost = nil,

    ---@type integer
    weaponCost = nil,

    ---@type integer
    armourCost = nil,

    ---@type integer
    customBattleCost = nil,

    ---@type integer
    customBattleIncrease = nil,

    ---@type integer
    customBattleLimit = nil,

    ---@type integer
    training = nil,

    ---@type integer
    discipline = nil,

    ---@type integer
    canPhalanx = nil,

    ---@type integer
    morale = nil,

    ---@type integer
    moraleLocked = nil,

    ---@type integer
    statFood1 = nil,

    ---@type integer
    statFood2 = nil,

    ---@type attackStats
    primaryStats = nil,

    ---@type attackStats
    secondaryStats = nil,

    ---@type attackStats
    tertiaryStats = nil,

    ---@type attackStats
    engineStats = nil,

    ---@type attackStats
    mountStats = nil,

    ---@type attackStats
    animalStats = nil,

    ---@type defenseStats
    primaryDefenseStats = nil,

    ---@type defenseStats
    secondaryDefenseStats = nil,

    ---@type defenseStats
    mountDefenseStats = nil,

    ---@type defenseStats
    animalDefenseStats = nil,

    ---@type mountStruct
    mount = nil,

    ---@type string
    primaryAnim = nil,

    ---@type string
    secondaryAnim = nil,

}

---Check if a faction has ownership of this entry.
---@param factionID integer 
---@return boolean hasOwnership 
function eduEntry:hasOwnership(factionID) end 

---Set if a faction has ownership of this entry.
---@param factionID integer 
---@param setOwnership boolean 
function eduEntry:setOwnership(factionID, setOwnership) end 

---Check if the entry has an attribute.
---@param attributeName string 
---@return boolean hasAttribute 
function eduEntry:hasAttribute(attributeName) end 

---Get number of armour levels.
---@return integer levelNum 
function eduEntry:getArmourLevelNum() end 

---Get number of armour models.
---@return integer levelNum 
function eduEntry:getArmourModelNum() end 

---Get armour level at index.
---@param index integer 
---@return integer level 
function eduEntry:getArmourLevel(index) end 

---Get armour model at index.
---@param index integer 
---@return string model 
function eduEntry:getArmourModel(index) end 

---Set armour level at index.
---@param index integer 
---@param level integer 
function eduEntry:setArmourLevel(index, level) end 

---Set armour model at index.
---@param index integer 
---@param model string 
function eduEntry:setArmourModel(index, model) end 

---
---@class attackStats
attackStats = { 

    ---@type boolean
    isValid = nil,

    ---@type boolean
    isMissile = nil,

    ---@type boolean
    isSpear = nil,

    ---@type boolean
    isLightSpear = nil,

    ---@type boolean
    isPrec = nil,

    ---@type boolean
    isAP = nil,

    ---@type boolean
    isBP = nil,

    ---@type boolean
    isArea = nil,

    ---@type boolean
    isFire = nil,

    ---@type boolean
    isBodyLaunching = nil,

    ---@type boolean
    isThrown = nil,

    ---@type boolean
    isShortPike = nil,

    ---@type boolean
    isLongPike = nil,

    ---@type boolean
    isSpearBonus12 = nil,

    ---@type boolean
    isSpearBonus10 = nil,

    ---@type boolean
    isSpearBonus8 = nil,

    ---@type boolean
    isSpearBonus6 = nil,

    ---@type boolean
    isSpearBonus4 = nil,

    ---@type integer
    attack = nil,

    ---@type integer
    charge = nil,

    ---@type integer
    ammo = nil,

    ---@type integer
    range = nil,

    ---@type number
    rangeSquared = nil,

    ---@type projectileStruct
    projectile = nil,

    ---@type integer
    weaponType = nil,

    ---@type integer
    techType = nil,

    ---@type integer
    damageType = nil,

    ---@type integer
    soundType = nil,

    ---@type integer
    minAttackDelayPri = nil,

    ---@type string
    weaponFX = nil,

}

---
---@class defenseStats
defenseStats = { 

    ---@type boolean
    isValid = nil,

    ---@type integer
    armour = nil,

    ---@type integer
    defense = nil,

    ---@type integer
    shield = nil,

    ---@type integer
    armourMaterial = nil,

}

---
---@class unitStats
unitStats = { 

    ---@type attackStats
    attackStats = nil,

    ---@type defenseStats
    defenseStats = nil,

    ---@type integer
    attackInBattle = nil,

    ---@type integer
    armourInBattle = nil,

    ---@type integer
    formationDefBonus = nil,

    ---@type integer
    formationAttBonus = nil,

    ---@type integer
    generalsBonus = nil,

    ---@type integer
    chargeBonus = nil,

    ---@type integer
    chargeDecay = nil,

}

