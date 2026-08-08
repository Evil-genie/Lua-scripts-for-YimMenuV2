script.run_in_callback(function()
	natives.load_natives()
	local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
	
	if IsOnline then
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mAll Bunker Research Only\27[m | \27[92mInitialized successfully\27[m") -- By ImagineNothing
		stats.set_packed_bool_range(15381, 15382, true)
		stats.set_packed_bool_range(15428, 15439, true)
		stats.set_packed_bool_range(15447, 15474, true)
		stats.set_packed_bool_range(15491, 15499, true)
		notify.success("Success!", "All Bunker research unlocked!")
	else
		notify.info("Script - All Bunker Research Only", "Please join any freemode session and reload the script.")
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mAll Bunker Research Only\27[m | \27[33mPlease join any freemode session and reload the script\27[m")
	end
end)