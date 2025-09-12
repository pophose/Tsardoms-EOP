--Royal_Titles.lua

local Context = require('GameContext')

local royal_Titles = {
    kantakouzenos = {
        count = "Kephalikevon",
        countHeir = "Patrikios",
        county = "Polity",
        duke = "Archon",
        dukeHeir = "Synarchontas",
        duchy = "Archontia",
        king = "Despot",
        kingHeir = "Kaesaras",
        kingdom = "Despotate",
        emperor = "Basileus",
        emperorHeir = "Symbasileus",
        Empire = "Empire",
    },
    byzantium = {
        count = "Kephalikevon",
        countHeir = "Patrikios",
        county = "Polity",
        duke = "Archon",
        dukeHeir = "Synarchontas",
        duchy = "Archontia",
        king = "Despot",
        kingHeir = "Kaesaras",
        kingdom = "Despotate",
        emperor = "Basileus",
        emperorHeir = "Symbasileus",
        empire = "Empire",
    },
    aydin = {
        count = "Aga",
        countHeir = "Aga oglu",
        county = "Agalik",
        duke = "Bey",
        dukeHeir = "Beyzade",
        duchy = "Beylik",
        king = "Sultan",
        kingHeir = "Sehzade",
        kingdom = "Sultanate",
        emperor = "Sultan of Sultans",
        emperorHeir = "Sehzade",
        empire = "Sultanate",
    },
    ottoman = {
        count = "Aga",
        countHeir = "Aga oglu",
        county = "Agalik",
        duke = "Bey",
        dukeHeir = "Beyzade",
        duchy = "Beylik",
        king = "Sultan",
        kingHeir = "Sehzade",
        kingdom = "Sultanate",
        emperor = "Sultan of Sultans",
        emperorHeir = "Sehzade",
        empire = "Empire",
    },
    karaman = {
        count = "Aga",
        countHeir = "Aga oglu",
        county = "Agalik",
        duke = "Bey",
        dukeHeir = "Beyzade",
        duchy = "Beylik",
        king = "Sultan",
        kingHeir = "Sehzade",
        kingdom = "Sultanate",
        emperor = "Sultan of Sultans",
        emperorHeir = "Sehzade",
        empire = "Sultanate",
    },
    tatars = {
        count = "Noyan",
        countHeir = "Tarkhan",
        county = "Ulus",
        duke = "Beg",
        dukeHeir = "Tarkhan",
        duchy = "Beglik",
        king = "Khan",
        kingHeir = "Khanzada",
        kingdom = "Khanate",
        emperor = "Khagan",
        emperorHeir = "Khanzada",
        empire = "Khaganate",
    },
    serbia = {
        count = "Zupan",
        countHeir = "Young Zupan",
        county = "Zupanate",
        duke = "Despot",
        dukeHeir = "Zupan",
        duchy = "Despotate",
        king = "Kralj",
        kingHeir = "Knez",
        kingdom = "Kingdom",
        emperor = "Tsar",
        emperorHeir = "Knez",
        empire = "Tsardom",
    },
    bulgaria = {
        count = "Boyar",
        countHeir = "Zupan",
        county = "Bolardom",
        duke = "Despot",
        dukeHeir = "Knyaz",
        duchy = "Despotate",
        king = "Kral",
        kingHeir = "Knyaz",
        kingdom = "Kingdom",
        emperor = "Tsar",
        emperorHeir = "Knyaz",
        empire = "Tsardom",
    },
    wallachia = {
        count = "Boier",
        countHeir = "Zupan",
        county = "Boyardom",
        duke = "Voivode",
        dukeHeir = "Cneaz",
        duchy = "Voivodeship",
        king = "Voivode",
        kingHeir = "Cneaz",
        kingdom = "Voivodeship",
        emperor = "Tsar",
        emperorHeir = "Crai",
        empire = "Tsardom",
    },
    moldova = {
        count = "Boyar",
        countHeir = "Zupan",
        county = "Boyardom",
        duke = "Voivode",
        dukeHeir = "Cneaz",
        duchy = "Voivodeship",
        king = "Voivode",
        kingHeir = "Cneaz",
        kingdom = "Voivodeship",
        emperor = "Tsar",
        emperorHeir = "Crai",
        empire = "Tsardom",
    },
    bosnia = {
        count = "Zupan",
        countHeir = "Young Zupan",
        county = "Zupanate",
        duke = "Veliki Zupan",
        dukeHeir = "Young Zupan",
        duchy = "Grand Zupanate",
        king = "Ban",
        kingHeir = "Knez",
        kingdom = "Banate",
        Emperor = "Kralj",
        EmperorHeir = "Knez",
        Empire = "Kingdom",
    },
    ragusa = {
        count = "Councillor",
        countHeir = "Senior Patrician",
        county = "City",
        duke = "Rector",
        dukeHeir = "Councillor",
        duchy = "Republic",
        king = "Rector",
        kingHeir = "Councillor",
        kingdom = "Grand Republic",
        emperor = "Rector and Kaesar",
        emperorHeir = "Consul",
        empire = "Empire",
    },
    venice = {
        count = "Doge",
        countHeir = "Senior Patrician",
        county = "City",
        duke = "Doge",
        dukeHeir = "Councillor",
        duchy = "Republic",
        king = "Doge",
        kingHeir = "Grand Councillor",
        kingdom = "Grand Republic",
        emperor = "Grand Doge",
        emperorHeir = "Grand Councillor",
        empire = "Grand Republic",
    },
    genoa = {
        count = "Doge",
        countHeir = "Senior Patrician",
        county = "City",
        duke = "Doge",
        dukeHeir = "Councillor",
        duchy = "Republic",
        king = "Doge",
        kingHeir = "Councillor",
        kingdom = "Grand Republic",
        emperor = "Grand Doge",
        emperorHeir = "Senior Councillor",
        empire = "Grand Republic",
    },
    florence = {
        count = "Podesta",
        countHeir = "Gonfaloniere",
        county = "City",
        duke = "Podesta",
        dukeHeir = "Gonfaloniere",
        duchy = "Republic",
        king = "Signore",
        kingHeir = "Podesta",
        kingdom = "Grand Republic",
        emperor = "Cesare",
        emperorHeir = "Console",
        empire = "Empire",
    },
    milan = {
        count = "Count",
        countHeir = "Cavaliere",
        county = "County",
        duke = "Signore",
        dukeHeir = "Podesta",
        duchy = "Duchy",
        king = "Grand Signore",
        kingHeir = "Podesta",
        kingdom = "Archduchy",
        emperor = "Cesare",
        emperorHeir = "Console",
        empire = "Empire",
    },
    naples = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Emperor",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    trinacria = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Emperor",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    athens = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Emperor",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    croatia = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Emperor",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    hungary = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Emperor",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    bohemia = {
        count = "Baron",
        countHeir = "Junior Baron",
        county = "Barony",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Emperor",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    austria = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "Archduke",
        kingHeir = "Count",
        kingdom = "Archduchy",
        emperor = "Kaiser",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    bavaria = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Duke",
        dukeHeir = "Count",
        duchy = "Duchy",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Kaiser",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    switzerland = {
        count = "Landammann",
        countHeir = "Junior Landammann",
        county = "Canton",
        duke = "Schultheiss",
        dukeHeir = "Landammann",
        duchy = "Confederacy",
        king = "Schultheiss",
        kingHeir = "Landammann",
        kingdom = "Grand Confederacy",
        emperor = "Kaiser",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    albania = {
        count = "Count",
        countHeir = "Junior Count",
        county = "County",
        duke = "Prince",
        dukeHeir = "Count",
        duchy = "Principality",
        king = "King",
        kingHeir = "Prince",
        kingdom = "Kingdom",
        emperor = "Emperor",
        emperorHeir = "Prince",
        empire = "Empire",
    },
    rhodes = {
        count = "unused",
        countHeir = "unused",
        county = "unused",
        duke = "unused",
        dukeHeir = "unused",
        duchy = "unused",
        king = "unused",
        kingHeir = "unused",
        kingdom = "unused",
        emperor = "unused",
        emperorHeir = "unused",
        empire = "unused",
    },
    papal_states = {
        count = "unused",
        countHeir = "unused",
        county = "unused",
        duke = "unused",
        dukeHeir = "unused",
        duchy = "unused",
        king = "unused",
        kingHeir = "unused",
        kingdom = "unused",
        emperor = "unused",
        emperorHeir = "unused",
        empire = "unused",
    },
     timurids = {    --doesn't change
        count = "Aga",
        countHeir = "Aga oglu",
        county = "Agalik",
        duke = "Bey",
        dukeHeir = "Beyzade",
        duchy = "Beylik",
        king = "Sultan",
        kingHeir = "Sehzade",
        kingdom = "Sultanate",
        emperor = "Sultan of Sultans",
        emperorHeir = "Sehzade",
        empire = "Sultanate",
    },
    shadow_serbia = {
        count = "Zupan",
        countHeir = "Mladi Zupan",
        county = "Zupanate",
        duke = "Veliki Zupan",
        dukeHeir = "Mladi Zupan",
        duchy = "Grand Zupanate",
        king = "Kralj",
        kingHeir = "Knez",
        kingdom = "Kingdom",
        emperor = "Tsar",
        emperorHeir = "Kralj",
        empire = "Tsardom",
    },


}


function royal_Titles.kantakouzenos:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("kantakouzenos");

    if factionStruct.settlementsNum < 1 then
        return "Greek Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name
    or factionStruct.leader.fullName == "Ioannes Kantakouzenos") then
        return "Roman Empire", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(M2TW.campaign:getSettlementByName("Ioannina").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Ioannina").isCapital) then
        return "Despotate of Epirus", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Mystras").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Mystras").isCapital) then
        return "Despotate of Morea", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Salonica").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Salonica").isCapital) then
        return "Despotate of Thessalonica", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    ----------

    if(factionStruct.settlementsNum > 4) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.byzantium:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("byzantium");

    if factionStruct.settlementsNum < 1 then
        return "Greek Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Roman Empire", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if((M2TW.campaign:getSettlementByName("Ioannina").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Ioannina").isCapital)
    or (M2TW.campaign:getSettlementByName("Lepanto").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Lepanto").isCapital)) then
        return "Despotate of Epirus", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Mystras").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Mystras").isCapital) then
        return "Despotate of Morea", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Salonica").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Salonica").isCapital) then
        return "Despotate of Thessalonica", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    ----------

    if(factionStruct.settlementsNum > 4) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.aydin:determineTitle()
    M2TWEOP.logGame("ENTERED royal_Titles.aydin:determineTitle");

    local factionStruct = M2TW.campaign:getFaction("aydin");

    if factionStruct.settlementsNum < 1 then
        return "Turkic Tribal Revolt", "Aga", "Gazi"
    end


    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Konya").ownerFaction.name == factionStruct.name) then
        return "Aydinid Sultanate of Rum", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    ----------

    if(factionStruct.settlementsNum > 7
    and M2TW.campaign:getSettlementByName("Guzelhisar").isCapital) then
        return tostring(royal_Titles[factionStruct.name].kingdom) .. " of " .. "Aydin", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 7) then
        return tostring(royal_Titles[factionStruct.name].kingdom) .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1
    and M2TW.campaign:getSettlementByName("Guzelhisar").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Aydin"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

        if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end

    M2TWEOP.logGame("RETURNED NOTHING FROM royal_Titles.aydin:determineTitle");
end


function royal_Titles.ottoman:determineTitle()
    M2TWEOP.logGame("ENTERED royal_Titles.ottoman:determineTitle");

    local factionStruct = M2TW.campaign:getFaction("ottoman");

    if factionStruct.settlementsNum < 1 then
        return "Turkic Tribal Revolt", "Aga", "Gazi"
    end

    --- UNIQUE TITLES --
    if(factionStruct.settlementsNum > 20
    and (M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
        or M2TW.campaign:getSettlementByName("Adrianople").ownerFaction.name == factionStruct.name)) then
        return "Ottoman Empire", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    ----------

    if(factionStruct.settlementsNum > 16
    and string.find(factionStruct.leader.fullName, "Osmanoglu")) then
        return "Ottoman Sultanate", royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 16) then
        return tostring(royal_Titles[factionStruct.name].kingdom) .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1
    and string.find(factionStruct.leader.fullName, "Osmanoglu")) then
        return "Ottoman Beylik", royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

        if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end

    M2TWEOP.logGame("RETURNED NOTHING FROM royal_Titles.ottoman:determineTitle");
end


function royal_Titles.karaman:determineTitle()
    M2TWEOP.logGame("ENTERED royal_Titles.karaman:determineTitle");

    local factionStruct = M2TW.campaign:getFaction("karaman");

    if factionStruct.settlementsNum < 1 then
        return "Turkic Tribal Revolt", "Aga", "Gazi"
    end


    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Konya").ownerFaction.name == factionStruct.name) then
        return "Karamanid Sultanate of Rum", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    ----------

    if(factionStruct.settlementsNum > 12
    and M2TW.campaign:getSettlementByName("Konya").isCapital) then
        return tostring(royal_Titles[factionStruct.name].kingdom) .. " of " .. "Rum", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 12) then
        return tostring(royal_Titles[factionStruct.name].kingdom) .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1
    and M2TW.campaign:getSettlementByName("Konya").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Karaman"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

        if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end

    M2TWEOP.logGame("RETURNED NOTHING FROM royal_Titles.aydin:determineTitle");
end


function royal_Titles.tatars:determineTitle()
    M2TWEOP.logGame("ENTERED royal_Titles.tatars:determineTitle");

    local factionStruct = M2TW.campaign:getFaction("tatars");

    if factionStruct.settlementsNum < 1 then
        return "Tatar Tribal Revolt", "Tarkhan", "Bagatur"
    end


    --- UNIQUE ------

    if(Context.currentYear < 1420 and factionStruct.settlementsNum > 2) then
        return "The Golden Horde", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(Context.currentYear > 1419 and factionStruct.settlementsNum < 4) then
        return "Crimean Khanate", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    ----------------

    if(factionStruct.settlementsNum > 25) then
        return tostring(royal_Titles[factionStruct.name].kingdom) .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 12) then
        return tostring(royal_Titles[factionStruct.name].kingdom) .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1
    and (M2TW.campaign:getSettlementByName("Qirim").ownerFaction.name == factionStruct.name
    or   M2TW.campaign:getSettlementByName("Caffa").ownerFaction.name == factionStruct.name
    or   M2TW.campaign:getSettlementByName("Theodoro").ownerFaction.name == factionStruct.name)) then
        return "Crimean Khanate", royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end

    M2TWEOP.logGame("RETURNED NOTHING FROM royal_Titles.tatars:determineTitle");
end


function royal_Titles.serbia:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("serbia");

    if factionStruct.settlementsNum < 1 then
        return "Serbian Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name) then
        return "Tsardom of Serbs and Romans", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 16) then
        return "Tsardom of Serbia", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 9) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Serbia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end    

    if((M2TW.campaign:getSettlementByName("Ioannina").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Ioannina").isCapital)
    or (M2TW.campaign:getSettlementByName("Lepanto").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Lepanto").isCapital)) then
        return "Despotate of Epir", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Salonica").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Salonica").isCapital) then
        return tostring("Despotate" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Larissa").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Larissa").isCapital) then
        return tostring("Despotate" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Kastoria").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Kastoria").isCapital) then
        return tostring("Despotate" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.bulgaria:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("bulgaria");

    if factionStruct.settlementsNum < 1 then
        return "Bulgarian Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES ---
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name) then
        return "Tsardom of Bulgars and Romans", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 6
    and (M2TW.campaign:getSettlementByName("Tarnovo").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Ohrid").ownerFaction.name == factionStruct.name)) then
        return "Tsardom of Bulgaria", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

   if(M2TW.campaign:getSettlementByName("Vidin").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Vidin").isCapital) then
        return tostring("Tsardom" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Salonica").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Salonica").isCapital) then
        return tostring("Tsardom" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 9) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Bulgaria"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if((M2TW.campaign:getSettlementByName("Ioannina").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Ioannina").isCapital)
    or (M2TW.campaign:getSettlementByName("Lepanto").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Lepanto").isCapital)) then
        return "Despotate of Epir", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    -----------------------

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.wallachia:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("wallachia");

    if factionStruct.settlementsNum < 1 then
        return "Wallachian Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES ---
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name) then
        return "Tsardom of Romania", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 19
    and M2TW.campaign:getSettlementByName("Theodoro").ownerFaction.name == factionStruct.name
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)
    and (M2TW.campaign:getSettlementByName("Tarnovo").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Ohrid").ownerFaction.name == factionStruct.name)) then
        return "Tsardom of Vlachs Bulgars and Rus", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 12
    and (M2TW.campaign:getSettlementByName("Tarnovo").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Ohrid").ownerFaction.name == factionStruct.name)) then
        return "Tsardom of Vlachs and Bulgars", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 12
    and (M2TW.campaign:getSettlementByName("Theodoro").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)) then
        return "Tsardom of Vlachs and Rus", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 9
    and (M2TW.campaign:getSettlementByName("Fegaras").ownerFaction.name == factionStruct.name
         and(M2TW.campaign:getSettlementByName("Kronstadt").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Gyulafehervar").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Beszterce").ownerFaction.name == factionStruct.name))
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)
    and (M2TW.campaign:getSettlementByName("Targu_Neamt").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)) then
        return tostring("Grand" .. royal_Titles[factionStruct.name].kingdom .. " of " .. "Wallachia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 9
    and (M2TW.campaign:getSettlementByName("Fegaras").ownerFaction.name == factionStruct.name
         and(M2TW.campaign:getSettlementByName("Kronstadt").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Gyulafehervar").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Beszterce").ownerFaction.name == factionStruct.name))
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Wallachia and Transylvania"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 9
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)
    and (M2TW.campaign:getSettlementByName("Targu_Neamt").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Wallachia and Moldova"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 3
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Wallachia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Fegaras").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Kronstadt").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Gyulafehervar").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Beszterce").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Transylvania"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if((M2TW.campaign:getSettlementByName("Karvuna").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Karvuna").isCapital)) then
        return "Despotate of Dobruja", "Despot", "Boier";
    end

    if((M2TW.campaign:getSettlementByName("Halicz").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Halicz").isCapital)) then
        return "Principality of Galicia-Volhynia", "Prince", "Count";
    end

    -----------------------

    if(factionStruct.settlementsNum > 2) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.moldova:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("moldova");

    if factionStruct.settlementsNum < 1 then
        return "Moldavian Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES ---
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name) then
        return "Tsardom of Romania", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 19
    and M2TW.campaign:getSettlementByName("Theodoro").ownerFaction.name == factionStruct.name
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)
    and (M2TW.campaign:getSettlementByName("Tarnovo").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)) then
        return "Tsardom of Grand Moldovia", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 14
    and (M2TW.campaign:getSettlementByName("Theodoro").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)) then
        return "Tsardom of Moldovans and Rus", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 10
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)
    and (M2TW.campaign:getSettlementByName("Targu_Neamt").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)
    and (M2TW.campaign:getSettlementByName("Fegaras").ownerFaction.name == factionStruct.name
         and(M2TW.campaign:getSettlementByName("Kronstadt").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Gyulafehervar").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Beszterce").ownerFaction.name == factionStruct.name))) then
        return tostring("Grand" .. royal_Titles[factionStruct.name].kingdom .. " of " .. "Moldova"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 9
    and (M2TW.campaign:getSettlementByName("Arges").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Targoviste").ownerFaction.name == factionStruct.name)
    and (M2TW.campaign:getSettlementByName("Targu_Neamt").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Moldova and Wallachia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 9
    and (M2TW.campaign:getSettlementByName("Fegaras").ownerFaction.name == factionStruct.name
         and(M2TW.campaign:getSettlementByName("Kronstadt").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Gyulafehervar").ownerFaction.name == factionStruct.name
             or M2TW.campaign:getSettlementByName("Beszterce").ownerFaction.name == factionStruct.name))
    and (M2TW.campaign:getSettlementByName("Targu_Neamt").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Moldova and Transylvania"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 3
    and (M2TW.campaign:getSettlementByName("Targu_Neamt").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Suceava").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Moldova"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Fegaras").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Kronstadt").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Gyulafehervar").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Beszterce").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Transylvania"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if((M2TW.campaign:getSettlementByName("Karvuna").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Karvuna").isCapital)) then
        return "Despotate of Dobruja", "Despot", "Boier";
    end

    if((M2TW.campaign:getSettlementByName("Halicz").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Halicz").isCapital)) then
        return "Principality of Galicia-Volhynia", "Prince", "Count";
    end

    -----------------------

    if(factionStruct.settlementsNum > 2) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.bosnia:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("bosnia");

    if factionStruct.settlementsNum < 1 then
        return "Bosnian Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name) then
        return "Tsardom of Slavonians and Romans", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 19) then
        return "Tsardom of Bosnia", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 1
    and M2TW.campaign:getSettlementByName("Bobovac").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. "Bosnia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.ragusa:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("ragusa");

    if factionStruct.settlementsNum < 1 then
        return "Ragusan Revolt", "Elected Leader", "Commander"
    end


    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Imperial Council of the Romans", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.venice:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("venice");

    if factionStruct.settlementsNum < 1 then
        return "Condottieri Revolt", "Condottiero", "Commander"
    end


    --- UNIQUE TITLES --
    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Republic of the Romans", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum >= 1
    and M2TW.campaign:getSettlementByName("Candia").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Candia").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of Crete"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.genoa:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("genoa");

    if factionStruct.settlementsNum < 1 then
        return "Condottieri Revolt", "Condottiero", "Commander"
    end


    --- UNIQUE TITLES --
    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Republic of the Romans", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.florence:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("florence");

    if factionStruct.settlementsNum < 1 then
        return "Condottieri Revolt", "Condottiero", "Commander"
    end


    --- UNIQUE TITLES --
    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Imperium Romaniae", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.milan:determineTitle()
    local factionStruct = M2TW.campaign:getFaction("milan");

    if factionStruct.settlementsNum < 1 then
        return "Condottieri Revolt", "Condottiero", "Commander"
    end


    --- UNIQUE TITLES --
    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Imperium Romaniae", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 19
    and(M2TW.campaign:getSettlementByName("Napoli").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Milan").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Ravenna").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Firenze").ownerFaction.name == factionStruct.name)) then
        return royal_Titles[factionStruct.name].empire .. " of Italy", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 19
    and(M2TW.campaign:getSettlementByName("Napoli").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Milan").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Ravenna").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Firenze").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Italy"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end

function royal_Titles.naples:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("naples");

    if factionStruct.settlementsNum < 1 then
        return "Napolitan Revolt", "Rebel Leader", "Commander"
    end


    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Imperium Romaniae", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 19
    and(M2TW.campaign:getSettlementByName("Napoli").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Siracusa").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Ravenna").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Firenze").ownerFaction.name == factionStruct.name)) then
        return royal_Titles[factionStruct.name].empire .. " of Italy", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 19
    and(M2TW.campaign:getSettlementByName("Napoli").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Siracusa").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Ravenna").ownerFaction.name == factionStruct.name)
    or(M2TW.campaign:getSettlementByName("Firenze").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Italy"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Patras").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Patras").isCapital)
    or(M2TW.campaign:getSettlementByName("Corinth").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Corinth").isCapital)
    or(M2TW.campaign:getSettlementByName("Andreville").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Andreville").isCapital)
    or(M2TW.campaign:getSettlementByName("Mystras").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Mystras").isCapital) then
    
        return "Principality of Achaia", "Prince", "Lord";
    end

    if(M2TW.campaign:getSettlementByName("Lepanto").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Lepanto").isCapital
    or(M2TW.campaign:getSettlementByName("Ioannina").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Ioannina").isCapital)) then
        return tostring("Despotate of Epirus"), "Despot", "Lord";
    end

    if(M2TW.campaign:getSettlementByName("Athens").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Athens").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Athens"), royal_Titles[factionStruct.name].duke, "Lord";
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.trinacria:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("trinacria");

    if factionStruct.settlementsNum < 1 then
        return "Sicilian Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES --
    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Imperium Romaniae", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Patras").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Patras").isCapital)
    or(M2TW.campaign:getSettlementByName("Corinth").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Corinth").isCapital)
    or(M2TW.campaign:getSettlementByName("Andreville").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Andreville").isCapital)
    or(M2TW.campaign:getSettlementByName("Mystras").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Mystras").isCapital) then
    
        return "Principality" .. " of " .. "Achaia", "Prince", "Lord";
    end

    if(M2TW.campaign:getSettlementByName("Athens").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Athens").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Athens"), royal_Titles[factionStruct.name].duke, "Vicar General";
    end

    if(M2TW.campaign:getSettlementByName("Neopatria").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Neopatria").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Neopatras"), royal_Titles[factionStruct.name].duke, "Vicar General";
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.athens:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("athens");

    if factionStruct.settlementsNum < 1 then
        return "Frankish Revolt", "Rebel Leader", "Commander"
    end


    --- UNIQUE TITLES --
    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Imperium Romaniae", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Patras").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Patras").isCapital)
    or(M2TW.campaign:getSettlementByName("Corinth").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Corinth").isCapital)
    or(M2TW.campaign:getSettlementByName("Andreville").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Andreville").isCapital)
    or(M2TW.campaign:getSettlementByName("Mystras").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Mystras").isCapital) then
    
        return "Principality" .. " of " .. "Achaia", "Prince", "Lord";
    end

    if(M2TW.campaign:getSettlementByName("Athens").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Athens").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Athens"), royal_Titles[factionStruct.name].duke, "Vicar General";
    end

    if(M2TW.campaign:getSettlementByName("Neopatria").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Neopatria").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. "Neopatras"), royal_Titles[factionStruct.name].duke, "Vicar General";
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.croatia:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("croatia");

    if factionStruct.settlementsNum < 1 then
        return "Croatian Revolt", "Rebel Leader", "Commander"
    end


    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Imperium Romaniae", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of Dalmatia and Illyria", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 1
    and M2TW.campaign:getSettlementByName("Knin").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Split").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Croatia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end


    if(factionStruct.settlementsNum > 10) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.hungary:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("hungary");

    if factionStruct.settlementsNum < 1 then
        return "Hungarian Revolt", "Rebel Leader", "Commander"
    end


    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Novus Imperium Romaniae", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 39
    and M2TW.campaign:getSettlementByName("Buda").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Pest").ownerFaction.name == factionStruct.name) then
        return royal_Titles[factionStruct.name].empire .. "of Hungary", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 5
    and M2TW.campaign:getSettlementByName("Buda").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Pest").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Hungary"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end


    if(factionStruct.settlementsNum > 10) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.bohemia:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("bohemia");

    if factionStruct.settlementsNum < 1 then
        return "Bohemian Revolt", "Rebel Leader", "Commander"
    end


    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Sacrum Romanum Imperium", "Imperator Romanorum", royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 19
    and M2TW.campaign:getSettlementByName("Ceske_Budejovice").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Brunn").ownerFaction.name == factionStruct.name) then
        return royal_Titles[factionStruct.name].empire .. "of Bohemia", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 1
    and M2TW.campaign:getSettlementByName("Ceske_Budejovice").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Brunn").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Bohemia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end


    if(factionStruct.settlementsNum > 10) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum >= 1
    and M2TW.campaign:getSettlementByName("Brunn").ownerFaction.name == factionStruct.name) then
        return "Magraviate of Moravia", "Margrave ", "Lord";
    end

    if(factionStruct.settlementsNum >= 1) then
        return "Duchy of Bohemia", royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end


    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.austria:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("austria");

    if factionStruct.settlementsNum < 1 then
        return "German Revolt", "Rebel Leader", "Commander"
    end

    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Sacrum Romanum Imperium", "Imperator Romanorum", royal_Titles[factionStruct.name].emperorHeir
    end

    if((M2TW.campaign:getSettlementByName("Wien").ownerFaction.name == factionStruct.name)
    and M2TW.campaign:getSettlementByName("Strassburg").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Munchen").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Stuttgart").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Augsburg").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Verona").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Trient").ownerFaction.name == factionStruct.name) then
        return "Sacrum Romanum Imperium", "Imperator Romanorum", royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29
    and M2TW.campaign:getSettlementByName("Wien").ownerFaction.name == factionStruct.name) then
        return royal_Titles[factionStruct.name].empire .. "of Austria", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 14
    and M2TW.campaign:getSettlementByName("Wien").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Gratz").isCapital) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Austria"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 3
    and M2TW.campaign:getSettlementByName("Wien").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Gratz").isCapital) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of Austria"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1
    and M2TW.campaign:getSettlementByName("Ceske_Budejovice").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Ceske_Budejovice").isCapital
    and M2TW.campaign:getSettlementByName("Brunn").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Bohemia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end


    if(factionStruct.settlementsNum > 10) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum >= 1
    and M2TW.campaign:getSettlementByName("Brunn").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Brunn").isCapital) then
        return "Magraviate of Moravia", "Margrave ", "Lord";
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end


    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.bavaria:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("bavaria");

    if factionStruct.settlementsNum < 1 then
        return "Bavarian Revolt", "Rebel Leader", "Commander"
    end

    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Sacrum Romanum Imperium", "Imperator Romanorum", royal_Titles[factionStruct.name].emperorHeir
    end

    if((M2TW.campaign:getSettlementByName("Wien").ownerFaction.name == factionStruct.name)
    and M2TW.campaign:getSettlementByName("Strassburg").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Munchen").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Stuttgart").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Augsburg").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Verona").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Trient").ownerFaction.name == factionStruct.name) then
        return "Sacrum Romanum Imperium", "Imperator Romanorum", royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 29
    and( M2TW.campaign:getSettlementByName("Munchen").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Straubing").ownerFaction.name)) then
        return royal_Titles[factionStruct.name].empire .. "of Bavaria", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 14
    and( M2TW.campaign:getSettlementByName("Munchen").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Straubing").ownerFaction.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1
    and( M2TW.campaign:getSettlementByName("Munchen").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Straubing").ownerFaction.name)) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of Bavaria"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1
    and M2TW.campaign:getSettlementByName("Ceske_Budejovice").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Ceske_Budejovice").isCapital
    and M2TW.campaign:getSettlementByName("Brunn").ownerFaction.name == factionStruct.name) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Bohemia"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 10) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum >= 1
    and M2TW.campaign:getSettlementByName("Brunn").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Brunn").isCapital) then
        return "Magraviate of Moravia", "Margrave ", "Lord";
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end


    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.switzerland:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("switzerland");

    if factionStruct.settlementsNum < 1 then
        return "Cantonist Revolt", "Rebel Leader", "Commander"
    end

    if((M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
         and M2TW.campaign:getSettlementByName("Constantinople").isCapital)
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Sacrum Romanum Imperium", "Imperator Romanorum", royal_Titles[factionStruct.name].emperorHeir
    end

    if((M2TW.campaign:getSettlementByName("Wien").ownerFaction.name == factionStruct.name)
    and M2TW.campaign:getSettlementByName("Strassburg").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Munchen").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Stuttgart").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Augsburg").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Verona").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Trient").ownerFaction.name == factionStruct.name) then
        return "Sacrum Romanum Imperium", "Imperator Romanorum", royal_Titles[factionStruct.name].emperorHeir
    end

   if(factionStruct.settlementsNum > 39
    and M2TW.campaign:getSettlementByName("Bern").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Luzern").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Zurich").ownerFaction.name == factionStruct.name) then
        return "Swiss " .. royal_Titles[factionStruct.name].empire, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

   if(factionStruct.settlementsNum > 39) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 19
    and M2TW.campaign:getSettlementByName("Bern").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Luzern").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Zurich").ownerFaction.name == factionStruct.name) then
        return "Swiss " .. royal_Titles[factionStruct.name].kingdom, royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 19) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1
    and (M2TW.campaign:getSettlementByName("Bern").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Luzern").ownerFaction.name == factionStruct.name
         or M2TW.campaign:getSettlementByName("Zurich").ownerFaction.name == factionStruct.name)) then
        return "Swiss " .. royal_Titles[factionStruct.name].duchy, royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.albania:determineTitle()
    local factionStruct = M2TW.campaign:getFaction("albania");

    if factionStruct.settlementsNum < 1 then
        return "Albanian Revolt", "Rebel Leader", "Commander"
    end

    --- UNIQUE TITLES --
    if (M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name
    or M2TW.campaign:getSettlementByName("Roma").ownerFaction.name == factionStruct.name) then
        return "Roman Empire", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if (M2TW.campaign:getSettlementByName("Salonica").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Salonica").isCapital) then
        return "Despotate of Thessalonica", royal_Titles[factionStruct.name].king,
            royal_Titles[factionStruct.name].kingHeir;
    end

    if ((M2TW.campaign:getSettlementByName("Ioannina").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Ioannina").isCapital)
    or (M2TW.campaign:getSettlementByName("Lepanto").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Lepanto").isCapital)) then
        return "Despotate of Epirus", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if (M2TW.campaign:getSettlementByName("Mystras").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Mystras").isCapital) then
        return "Despotate of Morea", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end



    ----------

   if(factionStruct.settlementsNum > 29
    and(M2TW.campaign:getSettlementByName("Kruje").ownerFaction.name == factionStruct.name
        or M2TW.campaign:getSettlementByName("Valona").ownerFaction.name == factionStruct.name)) then
        return royal_Titles[factionStruct.name].empire .. " of Albania", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

   if(factionStruct.settlementsNum > 29) then
        return royal_Titles[factionStruct.name].empire .. " of " .. factionStruct.capital.localizedName, royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 14
    and(M2TW.campaign:getSettlementByName("Kruje").ownerFaction.name == factionStruct.name
        or M2TW.campaign:getSettlementByName("Valona").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of Albania"), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 14) then
        return tostring(royal_Titles[factionStruct.name].kingdom .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(factionStruct.settlementsNum > 1
    and(M2TW.campaign:getSettlementByName("Kruje").ownerFaction.name == factionStruct.name
        or M2TW.campaign:getSettlementByName("Valona").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of Albania"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1
    and(M2TW.campaign:getSettlementByName("Kruje").ownerFaction.name == factionStruct.name
        or M2TW.campaign:getSettlementByName("Valona").ownerFaction.name == factionStruct.name)) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of Albania"), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end


function royal_Titles.rhodes:determineTitle()
    local factionStruct = M2TW.campaign:getFaction("rhodes");

    return "Knights of St. John", "Grandmaster", "Grand Commander"
end


function royal_Titles.papal_states:determineTitle()
    local factionStruct = M2TW.campaign:getFaction("papal_states");

    return "Papal States", "Pope", "Commander"
end


function royal_Titles.timurids:determineTitle()
    local factionStruct = M2TW.campaign:getFaction("rhodes");

    return "Empire", "Amir", "Beg"
end


function royal_Titles.shadow_serbia:determineTitle()

    local factionStruct = M2TW.campaign:getFaction("shadow_serbia");

    if factionStruct.settlementsNum < 1 then
        return "Serbian Revolt", "Rebel Leader", "Commander"
    end

    --- UNIQUE TITLES --
    if(M2TW.campaign:getSettlementByName("Constantinople").ownerFaction.name == factionStruct.name) then
        return "Tsardom of Serbs and Romans", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir
    end

    if(factionStruct.settlementsNum > 16) then
        return "Second Tsardom of Serbia", royal_Titles[factionStruct.name].emperor, royal_Titles[factionStruct.name].emperorHeir;
    end

    if(factionStruct.settlementsNum > 9) then
        return tostring("Despotate of Serbia"), "Despot", "Knez";
    end    

    if((M2TW.campaign:getSettlementByName("Ioannina").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Ioannina").isCapital)
    or (M2TW.campaign:getSettlementByName("Lepanto").ownerFaction.name == factionStruct.name
        and M2TW.campaign:getSettlementByName("Lepanto").isCapital)) then
        return "Despotate of Epir", royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Salonica").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Salonica").isCapital) then
        return tostring("Despotate" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Larissa").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Larissa").isCapital) then
        return tostring("Despotate" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end

    if(M2TW.campaign:getSettlementByName("Kastoria").ownerFaction.name == factionStruct.name
    and M2TW.campaign:getSettlementByName("Kastoria").isCapital) then
        return tostring("Despotate" .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].king, royal_Titles[factionStruct.name].kingHeir;
    end
    ----------

    if(factionStruct.settlementsNum > 1) then
        return tostring(royal_Titles[factionStruct.name].duchy .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].duke, royal_Titles[factionStruct.name].dukeHeir;
    end

    if(factionStruct.settlementsNum == 1) then
        return tostring(royal_Titles[factionStruct.name].county .. " of " .. factionStruct.capital.localizedName), royal_Titles[factionStruct.name].count, royal_Titles[factionStruct.name].countHeir;
    end
end







function changeFactionRank(factionName, factionNewName, LeaderRank, HeirRank)
    M2TWEOP.logGame("ENTERED changeFactionRank");
    M2TWEOP.logGame(factionName .. " " .. factionNewName .. " " .. LeaderRank .. " " .. HeirRank);

    local factionStruct = M2TW.campaign:getFaction(factionName);

    M2TWEOP.logGame("1");
    --change faction's name and update Context.factionLeader.title
    factionStruct.localizedName = factionNewName;
    if(M2TW.campaign:getFactionByOrder(0).name == factionName) then
        Context.factionLeader.title = LeaderRank;
    end

    if(LeaderRank == nil) then --do nothing
    --else Change the titles of the leader and heir
    elseif(factionStruct.religion == 5 and (LeaderRank == "Bey" or LeaderRank == "Aga")) then                   --for muslim minor ranking factions, title goes after name
        M2TWEOP.setExpandedString("EMT_" .. factionName:upper() .. "_FACTION_LEADER_NAME", "%S " .. LeaderRank);

        M2TWEOP.setExpandedString("EMT_" .. factionName:upper() .. "_FACTION_HEIR_NAME", "%S " .. HeirRank);
    elseif(factionStruct.name == "tatars") then                                                                 --titles always in after name
        M2TWEOP.setExpandedString("EMT_" .. factionName:upper() .. "_FACTION_LEADER_NAME", "%S " .. LeaderRank);

        M2TWEOP.setExpandedString("EMT_" .. factionName:upper() .. "_FACTION_HEIR_NAME", "%S " .. HeirRank);
    else                                                                                                        --else title goes before name
        M2TWEOP.setExpandedString("EMT_" .. factionName:upper() .. "_FACTION_LEADER_NAME", LeaderRank .. " %S");

        M2TWEOP.setExpandedString("EMT_" .. factionName:upper() .. "_FACTION_HEIR_NAME", HeirRank .. " %S");
    end

    M2TWEOP.logGame("2");

    --Refresh faction leader and heir to apply changes

    if (factionStruct.settlementsNum > 0 or factionStruct.armiesNum > 0) then
        ---@type characterRecord
        local factionLeader = {};
        ---@type characterRecord
        local factionHeir = {};

        for i = 0, factionStruct.numOfCharacters do
            local char = factionStruct:getCharacterRecord(i);
            if char == nil then break end
            if (char:isLeader()) then factionLeader = char end
            if (char:isHeir()) then factionHeir = char end
        end

        M2TWEOP.logGame("3");
        
        
        if factionLeader ~= nil then
        --factionStruct:setLeader(factionLeader, true);
        end

        M2TWEOP.logGame("4");

        if factionHeir ~= nil then
            --factionHeir:setAsHeir(true);
        end
    end

    M2TWEOP.logGame("EXIT changeFactionRank");
end


return royal_Titles;