script.run_in_callback(function()
	natives.load_natives()
	local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
	
	if IsOnline then
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mAll Collectibles Only\27[m | \27[92mInitialized successfully\27[m") -- By ImagineNothing
		stats.set_packed_bool_range(26811, 26910, true) -- Action Figures
		stats.set_packed_bool_range(34262, 34361, true) -- LD Organics Product
		stats.set_packed_bool_range(30230, 30251, true) -- Movie Props (+Space Interloper Outfit) 
		stats.set_packed_bool_range(26911, 26964, true) -- Playing Cards
		stats.set_packed_bool_range(28099, 28148, true) -- Signal Jammers
		stats.set_packed_bool_range(36630, 36654, true) -- Snowmen
		stats.set_packed_bool_range(51302, 51337, true) -- Yuanbao
		stats.set_packed_bool_range(54737, 54761, true) -- Lucky Clovers
		notify.info("Success!","All collectibles have been unlocked")
	else
		notify.info("Script - All Collectibles Only", "Please join any freemode session and reload the script.")
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mAll Collectibles Only\27[m | \27[33mPlease join any freemode session and reload the script\27[m")
	end
end)