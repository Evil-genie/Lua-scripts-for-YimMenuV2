script.run_in_callback(function()
	natives.load_natives()
	local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
	
	if IsOnline then
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mCasino Heist Reset\27[m | \27[92mInitialized successfully\27[m") -- By ImagineNothing
		stats.set_int("MPX_H3OPT_POI", 0)
		stats.set_int("MPX_H3OPT_ACCESSPOINTS", 0)
		notify.info("Success!","Diamond Casino Heist POI's and Access Points have been reset.")
	else
		notify.info("Script - Casino Heist Reset", "Please join any freemode session and reload the script.")
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mCasino Heist Reset\27[m | \27[33mPlease join any freemode session and reload the script\27[m")
	end
end)