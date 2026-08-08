script.run_in_callback(function()
log.info("\n\27[37m\27[4;33mScript\27[m - \27[4;37mFast Respawn\27[m\nInitialized successfully.")
    local logresp = {
        "Wasted Screen Skipped!",
        "Player Respawned a thousand times!",
        "Fast-Respawn!",
        "mp_forcerespawnpla... oops, wrong game.",
		"Had to make the script longer somehow.",
		"I Need Healing!",
		"Couldn't find a way to respawn in the same spot, sry."--,
		--"Moar text"
    }
	while true do -- Original TinkerScript by ImagineNothing
		if ScriptGlobal(2658294 + 1 + 236):get_int() == -1 then
			ScriptGlobal(2635562 + 2924):set_int(1)
			local rlogresp = logresp[math.random(#logresp)]
			log.info(rlogresp)
		end
		script.yield()
	end
end)