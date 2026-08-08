script.run_in_callback(function()
	natives.load_natives()
	local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
	
	if IsOnline then
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mCluckin' Bell Raid Skip\27[m | \27[92mInitialized successfully\27[m") -- By ImagineNothing
		stats.set_int("MPX_SALV23_INST_PROG", 31)
		notify.info("Script - Cluckin' Bell Raid Skip", "Success! All preps skipped.\nNext mission: Scene of the Crime")
	else
		notify.info("Script - Cluckin' Bell Raid Skip", "Please join any freemode session and reload the script.")
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mCluckin' Bell Raid Skip\27[m | \27[33mPlease join any freemode session and reload the script\27[m")
	end
end)