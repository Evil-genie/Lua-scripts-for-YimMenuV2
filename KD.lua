local KDR = {
    kills = 0,
    deaths = 0,
    headshots = 0,
    hits_peds_vehicles = 0,
    hits = 0,
    shots = 0
}

-- =========================================================
-- CALCULATIONS
-- =========================================================

local function calculate_kd()
    if KDR.deaths <= 0 then
        return KDR.kills
    end

    return KDR.kills / KDR.deaths
end

local function calculate_accuracy()
    if KDR.shots <= 0 then
        return 0.0
    end

    return (KDR.hits / KDR.shots) * 100.0
end


-- =========================================================
-- LOAD STATS
-- =========================================================

local function load_stats()

    KDR.kills = stats.get_int("MPPLY_KILLS_PLAYERS")
    KDR.deaths = stats.get_int("MPPLY_DEATHS_PLAYER")

    KDR.headshots = stats.get_int("MP0_PLAYER_HEADSHOTS")
    KDR.hits_peds_vehicles = stats.get_int("MP0_HITS_PEDS_VEHICLES")
    KDR.hits = stats.get_int("MP0_HITS")
    KDR.shots = stats.get_int("MP0_SHOTS")

    notify.success(
        "K/D Statistics",
        string.format(
            "Current Stats Loaded!\n\nK/D: %.2f\nAccuracy: %.2f%%",
            calculate_kd(),
            calculate_accuracy()
        )
    )
end


-- =========================================================
-- APPLY STATS
-- =========================================================

local function apply_stats()

    -- Player Kills / Deaths
    stats.set_int(
        "MPPLY_KILLS_PLAYERS",
        KDR.kills
    )

    stats.set_int(
        "MPPLY_DEATHS_PLAYER",
        KDR.deaths
    )

    -- MP0 Player Kills / Deaths
    stats.set_int(
        "MP0_KILLS_PLAYERS",
        KDR.kills
    )

    stats.set_int(
        "MP0_DEATHS_PLAYER",
        KDR.deaths
    )

    -- Combat statistics
    stats.set_int(
        "MP0_PLAYER_HEADSHOTS",
        KDR.headshots
    )

    stats.set_int(
        "MP0_HITS_PEDS_VEHICLES",
        KDR.hits_peds_vehicles
    )

    stats.set_int(
        "MP0_HITS",
        KDR.hits
    )

    stats.set_int(
        "MP0_SHOTS",
        KDR.shots
    )

    -- Weapon accuracy
    stats.set_float(
        "MP0_WEAPON_ACCURACY",
        calculate_accuracy()
    )

    notify.success(
        "K/D Statistics",
        string.format(
            "Applied Successfully!\n\nK/D: %.2f\nAccuracy: %.2f%%",
            calculate_kd(),
            calculate_accuracy()
        )
    )
end


-- =========================================================
-- MENU
-- =========================================================

menu.set_menu_name("PETROZ K/D Statistics")

local submenu = menu.get_submenu()

submenu:add_category("Statistics")

local category = submenu:find_category("Statistics")

local group = category:add_group(
    "K/D Editor",
    1
)


-- =========================================================
-- IMGUI
-- =========================================================

group:imgui(function()

    ImGui.Text("K / D Statistics")
    ImGui.Separator()

    -- IMPORTANT:
    -- YimMenuV2 InputInt returns:
    -- value, changed

    KDR.kills, _ = ImGui.InputInt(
        "Player Kills",
        KDR.kills
    )

    KDR.deaths, _ = ImGui.InputInt(
        "Player Deaths",
        KDR.deaths
    )

    ImGui.Separator()

    KDR.headshots, _ = ImGui.InputInt(
        "Headshots",
        KDR.headshots
    )

    KDR.hits_peds_vehicles, _ = ImGui.InputInt(
        "Ped / Vehicle Hits",
        KDR.hits_peds_vehicles
    )

    KDR.hits, _ = ImGui.InputInt(
        "Total Hits",
        KDR.hits
    )

    KDR.shots, _ = ImGui.InputInt(
        "Total Shots",
        KDR.shots
    )

    ImGui.Separator()

    ImGui.Text(
        string.format(
            "K/D: %.2f",
            calculate_kd()
        )
    )

    ImGui.Text(
        string.format(
            "Weapon Accuracy: %.2f%%",
            calculate_accuracy()
        )
    )

    ImGui.Separator()

    -- LOAD
    if ImGui.Button("Load Current Stats") then
        load_stats()
    end

    ImGui.SameLine()

    -- APPLY
    if ImGui.Button("Apply") then
        apply_stats()
    end

end)
