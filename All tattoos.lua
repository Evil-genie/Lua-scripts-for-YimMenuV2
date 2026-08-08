script.run_in_callback(function()
	natives.load_natives()
	local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
	
	if IsOnline then
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mAll Tattoos Only\27[m | \27[92mInitialized successfully\27[m") -- By ImagineNothing
		for i = 0, 53 do
			stats.set_int("MPX_TATTOO_FM_UNLOCKS_"..i.."", -1)
		end
		for _, tatpb in ipairs({15737, 15738, 15887, 15898, 15894, 15905}) do -- ???, the royals, lucky 7s tattoos
			stats.set_packed_bool(tatpb, true)
			stats.set_packed_bool_range(41273, 41296, true) -- Monkey, Dragon, Snake, Goat, Rat, Rabbit, Ox, Pig, Rooster, Dog, Horse, Tiger
		end
		notify.info("Script - All Tattoos Only", "Success! All tattoos have been unlocked.")
	else
		notify.info("Script - All Tattoos Only", "Please join any freemode session and reload the script.")
		log.info("\r                                                                \r\n| \27[3;94mLua Script\27[m - \27[4mAll Tattoos Only\27[m | \27[33mPlease join any freemode session and reload the script\27[m")
	end
end)