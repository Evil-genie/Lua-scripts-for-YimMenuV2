script.run_in_callback(function()
	while true do ScriptGlobal(4516902):set_int(0);ScriptGlobal(4516903):set_int(0);ScriptGlobal(4516904):set_int(0);ScriptGlobal(262146):set_float(0);script.yield(0) end
end)
-- Original TinkerScript by ImagineNothing
script.run_in_callback(function()
	natives.load_natives()
	local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
	
	if IsOnline then
		log.verbose("\n\27[37m\27[4;33mScript\27[m - \27[4;37mAll Awards Only\27[m\nInitialized successfully.")
		notify.info("Script - All Awards Only", "Original TinkerScript by ImagineNothing\nUnlocking awards . . .")
		-- Victory
		stats.set_int("MPX_AWD_FM_DM_WINS", 50) -- The Slayer
		stats.set_int("MPX_AWD_FM_TDM_WINS", 50) -- Death Brigade
		stats.set_int("MPX_AWD_FM_TDM_MVP", 50) -- Team Carrier
		stats.set_int("MPX_AWD_RACES_WON", 50) -- The Champion
		stats.set_int("MPX_AWD_FMWINAIRRACE", 25) -- The Aviator
		stats.set_int("MPX_AWD_FMWINSEARACE", 25) -- Making Waves
		stats.set_int("MPX_AWD_FM_GTA_RACES_WON", 50) -- Cruisin' for a Bruisin'
		stats.set_bool("MPX_AWD_FMKILL3ANDWINGTARACE", true) -- Road Rage
		stats.set_int("MPX_AWD_FMRALLYWONDRIVE", 25) -- Follow to a Tee
		stats.set_int("MPX_AWD_FMRALLYWONNAV", 25) -- The Dictator
		stats.set_int("MPX_AWD_FMWINRACETOPOINTS", 25) -- Impromptu Champion
		stats.set_bool("MPX_AWD_FMWINCUSTOMRACE", true) -- In a Class of Your Own
		stats.set_int("MPX_AWD_FM_RACE_LAST_FIRST", 25) -- Penetrate From Behind
		stats.set_bool("MPX_AWD_FMRACEWORLDRECHOLDER", true) -- The Record Holder
		stats.set_int("MPX_AWD_FM_RACES_FASTEST_LAP", 50) -- Dust Maker
		stats.set_bool("MPX_AWD_FMWINALLRACEMODES", true) -- Every Race
		stats.set_int("MPX_AWD_FMHORDWAVESSURVIVE", 10) -- Survivor
		stats.set_int("MPX_MOST_ARM_WRESTLING_WINS", 25) -- Over the Top
		stats.set_int("MPX_AWD_WIN_AT_DARTS", 25) -- Throwback King
		stats.set_int("MPX_AWD_FM_GOLF_WON", 25) -- The Swing King
		stats.set_int("MPX_AWD_FM_TENNIS_WON", 25) -- Stroke Master
		stats.set_bool("MPX_AWD_FM_TENNIS_5_SET_WINS", true) -- Out of Five
		stats.set_bool("MPX_AWD_FM_TENNIS_STASETWIN", true) -- Straight Sets
		stats.set_int("MPX_AWD_FM_SHOOTRANG_TG_WON", 25) -- Crack Shot
		stats.set_int("MPX_AWD_FM_SHOOTRANG_CT_WON", 25) -- Duck and Cover
		stats.set_bool("MPX_AWD_FM_SHOOTRANG_GRAN_WON", true) -- Granny
		stats.set_int("MPX_AWD_FM_SHOOTRANG_RT_WON", 25) -- The Marksman
		stats.set_bool("MPX_AWD_FMWINEVERYGAMEMODE", true) -- All Rounder
		stats.set_int("MPX_AWD_WIN_CAPTURES", 50) -- Captured
		stats.set_int("MPX_AWD_WIN_CAPTURE_DONT_DYING", 25) -- Death Defying
		stats.set_int("MPX_AWD_WIN_LAST_TEAM_STANDINGS", 50) -- Still Standing
		stats.set_int("MPX_AWD_ONLY_PLAYER_ALIVE_LTS", 50) -- One and Only
		stats.set_int("MPX_AWD_KILL_TEAM_YOURSELF_LTS", 25) -- One Man Army
		-- General
		stats.set_bool("MPX_AWD_FM25DIFFERENTDM", true) -- War Pig
		stats.set_bool("MPX_AWD_FM25DIFFERENTRACES", true) -- Veteran Racer
		stats.set_int("MPX_AWD_PARACHUTE_JUMPS_20M", 25) -- Nick of Time
		stats.set_int("MPX_AWD_PARACHUTE_JUMPS_50M", 25) -- Point Break
		stats.set_int("MPX_AWD_FMBASEJMP", 25) -- Stayed on Target
		stats.set_bool("MPX_AWD_FMATTGANGHQ", true) -- Clear Out
		stats.set_bool("MPX_AWD_FM6DARTCHKOUT", true) -- Checking Out
		stats.set_int("MPX_AWD_FM_GOLF_BIRDIES", 25) -- Birdies
		stats.set_bool("MPX_AWD_FM_GOLF_HOLE_IN_1", true) -- Hole in One
		stats.set_int("MPX_AWD_FM_TENNIS_ACE", 25) -- Ace
		stats.set_int("MPX_AWD_FMBBETWIN", 50000) -- The Hustler
		stats.set_int("MPX_AWD_LAPDANCES", 25) -- Lapping it Up
		stats.set_bool("MPX_AWD_FM25DIFITEMSCLOTHES", true) -- Snappy Dresser
		stats.set_int("MPX_AWD_NO_HAIRCUTS", 25) -- Hairy Encounters
		stats.set_bool("MPX_AWD_BUY_EVERY_GUN", true) -- Proud Gun Owner
		stats.set_bool("MPX_AWD_FMTATTOOALLBODYPARTS", true) -- The Human Canvas
		stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", 25) -- The Matchmaker*
		stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", 25) -- Track Builder*
		stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", 100) -- Reeling Them In*
		stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", 100)
		stats.set_int("MPX_AWD_DROPOFF_CAP_PACKAGES", 100) -- The Postman
		stats.set_int("MPX_AWD_PICKUP_CAP_PACKAGES", 100) -- Gimme That
		stats.set_int("MPX_AWD_MENTALSTATE_TO_NORMAL", 50) -- Calm Down
		stats.set_bool("MPX_AWD_STORE_20_CAR_IN_GARAGES", true) -- Showroom
		stats.set_int("MPX_AWD_TRADE_IN_YOUR_PROPERTY", 25) -- Moving Day
		-- stats.set_int("MPX_COMPLETEDAILYOBJ", 100)
		-- stats.set_int("MPX_COMPLETEDAILYOBJTOTAL", 100)
		-- stats.set_int("MPX_TOTALDAYCOMPLETED", 100)
		-- stats.set_int("MPX_TOTALWEEKCOMPLETED", 400)
		-- stats.set_int("MPX_TOTALMONTHCOMPLETED", 1800)
		-- stats.set_int("MPX_CONSECUTIVEDAYCOMPLETED", 30)
		-- stats.set_int("MPX_CONSECUTIVEWEEKCOMPLETED", 4)
		-- stats.set_int("MPX_CONSECUTIVEMONTHCOMPLETE", 1)
		-- stats.set_int("MPX_COMPLETEDAILYOBJSA", 100)
		-- stats.set_int("MPX_COMPLETEDAILYOBJTOTALSA", 100)
		-- stats.set_int("MPX_TOTALDAYCOMPLETEDSA", 100)
		-- stats.set_int("MPX_TOTALWEEKCOMPLETEDSA", 400)
		-- stats.set_int("MPX_TOTALMONTHCOMPLETEDSA", 1800)
		-- stats.set_int("MPX_CONSECUTIVEDAYCOMPLETEDSA", 30)
		-- stats.set_int("MPX_CONSECUTIVEWEEKCOMPLETEDSA", 4)
		-- stats.set_int("MPX_CONSECUTIVEMONTHCOMPLETESA", 1)
		-- stats.set_int("MPX_AWD_DAILYOBJCOMPLETED", 100) -- Daily Duty
		-- stats.set_int("MPX_AWD_DAILYOBJCOMPLETEDSA", 100)
		-- stats.set_bool("MPX_AWD_DAILYOBJWEEKBONUS", true) -- Goal Oriented
		-- stats.set_bool("MPX_AWD_DAILYOBJWEEKBONUSSA", true)
		-- stats.set_bool("MPX_AWD_DAILYOBJMONTHBONUS", true) -- Over Achiever
		-- stats.set_bool("MPX_AWD_DAILYOBJMONTHBONUSSA", true)
		-- Crimes
		stats.set_int("MPX_CHAR_WANTED_LEVEL_TIME5STAR", 7200000) -- The Fugitive
		stats.set_int("MPX_AWD_5STAR_WANTED_AVOIDANCE", 50) -- The Police Mocker
		stats.set_int("MPX_AWD_FMSHOOTDOWNCOPHELI", 25) -- When Pigs Can Fly
		stats.set_int("MPX_PASS_DB_PLAYER_KILLS", 100) -- Death by Drive-By
		stats.set_int("MPX_NUMBER_STOLEN_CARS", 500) -- Vehicle Thief
		stats.set_int("MPX_AWD_HOLD_UP_SHOPS", 20) -- Armed Robber
		-- Vehicles
		stats.set_int("MPX_CARS_EXPLODED", 500) -- Sky High
		stats.set_int("MPX_AWD_CARS_EXPORTED", 50) -- The Exporter
		stats.set_int("MPX_AWD_FMDRIVEWITHOUTCRASH", 30) -- No Claims Bonus
		stats.set_int("MPX_AWD_PASSENGERTIME", 4) -- The Passenger
		stats.set_int("MPX_AWD_TIME_IN_HELICOPTER", 4) -- Mile High Club
		stats.set_bool("MPX_AWD_FMFULLYMODDEDCAR", true) -- Suped Up
		stats.set_int("MPX_AIR_LAUNCHES_OVER_40M", 25) -- Airborne
		stats.set_int("MPX_MOST_FLIPS_IN_ONE_JUMP", 5) -- Flippin' Hell
		stats.set_int("MPX_MOST_SPINS_IN_ONE_JUMP", 5) -- Spinderella
		stats.set_bool("MPX_AWD_FMFURTHESTWHEELIE", true) -- Unirider
		-- Combat
		stats.set_int("MPX_AWD_100_HEADSHOTS", 500) -- Head Banger
		stats.set_int("MPX_KILLS_PLAYERS", 1000) -- The Widow Maker
		stats.set_int("MPX_AWD_FMKILLBOUNTY", 25) -- The Bounty Hunter
		stats.set_int("MPX_AWD_FMREVENGEKILLSDM", 50) -- The Equalizer
		stats.set_int("MPX_AWD_FM_DM_KILLSTREAK", 100) -- Streaker
		stats.set_int("MPX_AWD_FM_DM_STOLENKILL", 50) -- Stolen Kills
		stats.set_int("MPX_AWD_FM_DM_TOTALKILLS", 500) -- Death Toll
		stats.set_bool("MPX_AWD_FMKILLSTREAKSDM", true) -- Killstreaker
		stats.set_bool("MPX_AWD_FMMOSTKILLSGANGHIDE", true) -- Smoke 'Em Out
		stats.set_bool("MPX_AWD_FMMOSTKILLSSURVIVE", true) -- Bloodiest of the Bunch
		stats.set_int("MPX_AWD_FM_DM_3KILLSAMEGUY", 50) -- 3 for 1
		stats.set_int("MPX_AWD_KILL_CARRIER_CAPTURE", 100) -- No You Don't
		stats.set_int("MPX_AWD_NIGHTVISION_KILLS", 100) -- Lights Out
		stats.set_int("MPX_AWD_KILL_PSYCHOPATHS", 100) -- Psycho Killer
		stats.set_int("MPX_PISTOL50_ENEMY_KILLS", 500) -- Pistol Whipped
		stats.set_int("MPX_AWD_100_KILLS_SMG", 500) -- SMG Head
		stats.set_int("MPX_ASLTSHTGN_ENEMY_KILLS", 500) -- Shotgun Blues
		stats.set_int("MPX_ASLTRIFLE_ENEMY_KILLS", 500) -- Looking Down the Barrel
		stats.set_int("MPX_SNIPERRFL_ENEMY_KILLS", 100) -- Scoping Out
		stats.set_int("MPX_CMBTMG_ENEMY_KILLS", 500) -- Rapid Fire
		stats.set_int("MPX_AWD_25_KILLS_STICKYBOMBS", 50) -- Ended in A Sticky Situation
		stats.set_int("MPX_GRENADE_ENEMY_KILLS", 50) -- Grenade Fiend
		stats.set_int("MPX_RPG_ENEMY_KILLS", 500) -- The Rocket Man
		stats.set_int("MPX_UNARMED_ENEMY_KILLS", 50) -- The Melee Murderer
		stats.set_int("MPX_AWD_CAR_BOMBS_ENEMY_KILLS", 25) -- The Car Bomber
		-- Heists
		stats.set_int("MPX_AWD_FINISH_HEISTS", 50) -- The Big Time
		stats.set_int("MPX_AWD_FINISH_HEIST_SETUP_JOB", 50) -- Be Prepared
		stats.set_bool("MPX_AWD_FINISH_HEIST_NO_DAMAGE", true) -- Can't Touch This
		stats.set_int("MPX_AWD_WIN_GOLD_MEDAL_HEISTS", 25) -- Decorated
		stats.set_int("MPX_AWD_DO_HEIST_AS_MEMBER", 25) -- For Hire
		stats.set_int("MPX_AWD_DO_HEIST_AS_THE_LEADER", 25) -- Shot Caller
		stats.set_bool("MPX_AWD_SPLIT_HEIST_TAKE_EVENLY", true) -- Four Way
		stats.set_bool("MPX_AWD_ACTIVATE_2_PERSON_KEY", true) -- It Takes Two
		stats.set_int("MPX_AWD_CONTROL_CROWDS", 25) -- In Control
		stats.set_bool("MPX_AWD_ALL_ROLES_HEIST", true) -- Jack of All Trades
		stats.set_bool("MPPLY_AWD_FLEECA_FIN", true) -- Head for Heists*
		stats.set_bool("MPPLY_AWD_PRISON_FIN", true) -- Go To Jail*
		stats.set_bool("MPPLY_AWD_HUMANE_FIN", true) -- Lab Report*
		stats.set_bool("MPPLY_AWD_SERIESA_FIN", true) -- Product Placement*
		stats.set_bool("MPPLY_AWD_PACIFIC_FIN", true) -- Smooth Sailing*
		stats.set_bool("MPPLY_AWD_HST_ORDER", true) -- All In Order*
		stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true) -- Loyalty*
		stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true) -- Criminal Mastermind*
		stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", true) -- upporting Role*
		stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", true) -- Another Perspective*
		-- The Doomsday Heist
		stats.set_bool("MPPLY_AWD_GANGOPS_IAA", true) -- Act I*
		stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", true) -- Act II*
		stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", true) -- Act III*
		stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", true) -- All In Order II*
		stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", true) -- Loyalty II*
		stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", true) -- Loyalty III*
		stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", true) -- Loyalty IV*
		stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", true) -- Criminal Mastermind II*
		stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", true) -- Criminal Mastermind III*
		stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", true) -- Criminal Mastermind IV*
		stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", true) -- Supporting Role II*
		-- After Hours
		stats.set_int("MPX_AWD_CLUB_DRUNK", 200) -- Club Drunk
		stats.set_int("MPX_DANCEPERFECTOWNCLUB", 100) -- Coordinated
		stats.set_int("MPX_NIGHTCLUB_PLAYER_APPEAR", 500) -- Hot Spot
		stats.set_int("MPX_AWD_DANCE_TO_SOLOMUN", 100) -- Solomun 25/8
		stats.set_int("MPX_AWD_DANCE_TO_TALEOFUS", 100) -- AFTERLIGHT
		stats.set_int("MPX_AWD_DANCE_TO_DIXON", 100) -- Wilderness
		stats.set_int("MPX_AWD_DANCE_TO_BLKMAD", 100) -- We Believe
		stats.set_int("MPX_DANCETODIFFDJS", 4) -- Clubber
		-- Arena War --
		stats.set_int("MPX_AWD_CAREER_WINNER", 1000) -- Career Winner
		stats.set_int("MPX_AWD_TOP_SCORE", 500000) -- Top Score
		stats.set_int("MPX_AWD_TIME_SERVED", 1000) -- Time Served
		stats.set_int("MPX_AWD_ARENA_WAGEWORKER", 20000000) -- Arena Wageworker
		stats.set_int("MPX_AWD_WEVE_GOT_ONE", 50) -- We've Got One!
		stats.set_int("MPX_AWD_YOURE_OUTTA_HERE", 200) -- You're Outta Here!
		stats.set_int("MPX_AWD_MASSIVE_SHUNT", 50) -- Massive Shunt
		stats.set_int("MPX_AWD_KILL_OR_BE_KILLED", 50) -- Kill Or Be Killed
		stats.set_int("MPX_AWD_CROWDPARTICIPATION", 50) -- Crowd Participation
		stats.set_int("MPX_AWD_SITTING_DUCK", 50) -- Sitting Duck
		stats.set_int("MPX_AWD_YOUMEANBOOBYTRAPS", 50) -- You Mean Booby Traps?
		stats.set_int("MPX_AWD_MASTER_BANDITO", 50) -- Master Bandito
		stats.set_int("MPX_AWD_SPINNER", 50) -- Spinner
		stats.set_int("MPX_AWD_THROUGH_A_LENS", 50) -- Through a Lens
		stats.set_int("MPX_AWD_READY_FOR_WAR", 50) -- Ready For War
		stats.set_bool("MPX_AWD_UNSTOPPABLE", true) -- Unstoppable
		stats.set_bool("MPX_AWD_CONTACT_SPORT", true) -- Contact Sports
		stats.set_int("MPX_AWD_TOWER_OFFENSE", 50) -- Tower Offense
		stats.set_int("MPX_AWD_WATCH_YOUR_STEP", 50) -- Watch Your Step
		stats.set_bool("MPX_AWD_PEGASUS", true) -- Pegasus
		stats.set_bool("MPX_AWD_BEGINNER", true) -- New Kid
		stats.set_bool("MPX_AWD_FIELD_FILLER", true) -- Field-Filler
		stats.set_bool("MPX_AWD_ARMCHAIR_RACER", true) -- Armchair Racer
		stats.set_bool("MPX_AWD_LEARNER", true) -- Learner
		stats.set_bool("MPX_AWD_SUNDAY_DRIVER", true) -- Gifted Amateur
		stats.set_bool("MPX_AWD_THE_ROOKIE", true) -- The Rookie
		stats.set_bool("MPX_AWD_BUMP_AND_RUN", true) -- Bump & Run
		stats.set_bool("MPX_AWD_GEAR_HEAD", true) -- Gear-Head
		stats.set_bool("MPX_AWD_DOOR_SLAMMER", true) -- Pinball
		stats.set_bool("MPX_AWD_HOT_LAP", true) -- Semi-Pro
		stats.set_bool("MPX_AWD_ARENA_AMATEUR", true) -- Arena Vet
		stats.set_bool("MPX_AWD_PAINT_TRADER", true) -- Paint Trader
		stats.set_bool("MPX_AWD_SHUNTER", true) -- Shunter
		stats.set_bool("MPX_AWD_JOCK", true) -- Jock
		stats.set_bool("MPX_AWD_WARRIOR", true) -- Wrecking Ball
		stats.set_bool("MPX_AWD_T_BONE", true) -- First in Field
		stats.set_bool("MPX_AWD_MAYHEM", true) -- Gladiator
		stats.set_bool("MPX_AWD_WRECKER", true) -- Ring Master
		stats.set_bool("MPX_AWD_CRASH_COURSE", true) -- Arena Warrior
		stats.set_bool("MPX_AWD_ARENA_LEGEND", true) -- Arena Legend
		-- The Diamond Casino & Resort
		stats.set_bool("MPX_AWD_FIRST_TIME1", true) -- Loose Cheng
		stats.set_bool("MPX_AWD_FIRST_TIME2", true) -- House Keeping
		stats.set_bool("MPX_AWD_FIRST_TIME3", true) -- Strong Arm Tactics
		stats.set_bool("MPX_AWD_FIRST_TIME4", true) -- Play to Win
		stats.set_bool("MPX_AWD_FIRST_TIME5", true) -- Bad Beat
		stats.set_bool("MPX_AWD_FIRST_TIME6", true) -- Cashing Out
		stats.set_bool("MPX_AWD_ALL_IN_ORDER", true) -- Straight
		stats.set_bool("MPX_AWD_SURVIVALIST", true) -- Lucky Lucky
		stats.set_bool("MPX_AWD_SUPPORTING_ROLE", true) -- Top Pair
		stats.set_bool("MPX_AWD_LEADER", true) -- Full House
		stats.set_int("MPX_AWD_ODD_JOBS", 50) -- High Roller
		-- Diamond Casino Heist
		stats.set_bool("MPX_AWD_SCOPEOUT", true) -- Scope Out
		stats.set_int("MPX_AWD_PREPARATION", 40) -- Preparation
		stats.set_bool("MPX_AWD_CREWEDUP", true) -- All Crewed Up
		stats.set_bool("MPX_AWD_MOVINGON", true) -- Moving On
		stats.set_bool("MPX_AWD_PROMOCAMP", true) -- After Party
		stats.set_bool("MPX_AWD_GUNMAN", true) -- Gunman
		stats.set_bool("MPX_AWD_SMASHNGRAB", true) -- Smash & Grab
		stats.set_bool("MPX_AWD_INPLAINSI", true) -- Hidden In Plain Sight
		stats.set_bool("MPX_AWD_UNDETECTED", true) -- Undetected
		stats.set_bool("MPX_AWD_ALLROUND", true) -- All Rounder
		stats.set_bool("MPX_AWD_ELITETHEIF", true) -- Elite Thief
		stats.set_bool("MPX_AWD_PRO", true) -- Professional
		stats.set_bool("MPX_AWD_SUPPORTACT", true) -- Support Act
		stats.set_bool("MPX_AWD_SHAFTED", true) -- Shafted
		stats.set_int("MPX_AWD_ASLEEPONJOB", 20) -- Asleep On The Job
		stats.set_int("MPX_AWD_DAICASHCRAB", 100000) -- Daily Cash Grab
		stats.set_int("MPX_AWD_BIGBRO", 40) -- Big Brother
		stats.set_bool("MPX_AWD_COLLECTOR", true) -- Collector
		stats.set_bool("MPX_AWD_DEADEYE", true) -- Dead Eye
		stats.set_bool("MPX_AWD_PISTOLSATDAWN", true) -- Pistols At Dawn
		stats.set_int("MPX_AWD_SHARPSHOOTER", 40) -- Sharpshooter
		stats.set_int("MPX_AWD_RACECHAMP", 40) -- Race Champion
		stats.set_bool("MPX_AWD_TRAFFICAVOI", true) -- Beat The Traffic
		stats.set_bool("MPX_AWD_CANTCATCHBRA", true) -- All Wheels
		stats.set_bool("MPX_AWD_WIZHARD", true) -- Feelin' Groggy
		stats.set_int("MPX_AWD_BATSWORD", 1000000) -- Platinum Sword
		stats.set_int("MPX_AWD_COINPURSE", 950000) -- Coin Purse
		stats.set_bool("MPX_AWD_APEESCAPE", true) -- Ape Escape
		stats.set_bool("MPX_AWD_MONKEYKIND", true) -- Monkey Mind
		stats.set_int("MPX_AWD_ASTROCHIMP", 3000000) -- Astrochimp
		stats.set_bool("MPX_AWD_AQUAAPE", true) -- Aquatic Ape
		stats.set_bool("MPX_AWD_KEEPFAITH", true) -- Keeping The Faith
		stats.set_int("MPX_AWD_MASTERFUL", 40000) -- Masterful
		stats.set_bool("MPX_AWD_TRUELOVE", true) -- True Love
		stats.set_bool("MPX_AWD_NEMESIS", true) -- Nemesis
		stats.set_bool("MPX_AWD_FRIENDZONED", true) -- Friendzoned
		-- Los Santos Summer Special
		stats.set_bool("MPX_AWD_KINGOFQUB3D", true) -- King Of QUB3D
		stats.set_bool("MPX_AWD_QUBISM", true) -- Qubism
		stats.set_bool("MPX_AWD_GODOFQUB3D", true) -- God Of QUB3D
		stats.set_bool("MPX_AWD_QUIBITS", true) -- Qubits
		stats.set_bool("MPX_AWD_ELEVENELEVEN", true) -- 11 11
		stats.set_bool("MPX_AWD_GOFOR11TH", true) -- Crank It To 11
		-- The Cayo Perico Heist
		stats.set_bool("MPX_AWD_INTELGATHER", true) -- In and Out
		stats.set_bool("MPX_AWD_COMPOUNDINFILT", true) -- Easy Access
		stats.set_int("MPX_AWD_WELL_PREPARED", 50) -- Prepped
		stats.set_bool("MPX_AWD_LOOT_FINDER", true) -- It's a Steal
		stats.set_bool("MPX_AWD_MAX_DISRUPT", true) -- Maximum Disruption
		stats.set_bool("MPX_AWD_THE_ISLAND_HEIST", true) -- The Cayo Perico Heist
		stats.set_bool("MPX_AWD_GOING_ALONE", true) -- Going Alone
		stats.set_bool("MPX_AWD_TEAM_WORK", true) -- Teamwork
		stats.set_bool("MPX_AWD_MIXING_UP", true) -- Travel Plans
		stats.set_bool("MPX_AWD_PRO_THIEF", true) -- Professional Thief
		stats.set_bool("MPX_AWD_CAT_BURGLAR", true) -- Cat Burglar
		stats.set_bool("MPX_AWD_ONE_OF_THEM", true) -- One of Them
		stats.set_int("MPX_AWD_FILL_YOUR_BAGS", 20000000) -- Fill Your Bags
		stats.set_bool("MPX_AWD_GOLDEN_GUN", true) -- Go For Gold
		stats.set_bool("MPX_AWD_ELITE_THIEF", true) -- Elitist
		stats.set_bool("MPX_AWD_PROFESSIONAL", true) -- Blow Hard
		stats.set_int("MPX_AWD_WRECK_DIVING", 1000000) -- Wreck Diving
		stats.set_bool("MPX_AWD_PARTY_VIBES", true) -- Party Vibes
		stats.set_int("MPX_AWD_SUNSET", 1800000) -- Sun Set
		stats.set_bool("MPX_AWD_HELPING_HAND", true) -- Helping Hand
		stats.set_int("MPX_AWD_MOODYMANN", 1800000) -- Moodymann
		stats.set_int("MPX_AWD_PALMS_TRAX", 1800000) -- Palms Trax
		stats.set_bool("MPX_AWD_HELPING_OUT", true) -- Helping Out
		stats.set_int("MPX_AWD_KEINEMUSIK", 1800000) -- Keinemusik
		stats.set_bool("MPX_AWD_COURIER", true) -- Courier
		stats.set_int("MPX_AWD_TREASURE_HUNTER", 50) -- Treasure Hunter
		-- Los Santos Tuners
		stats.set_bool("MPX_AWD_CAR_CLUB", true) -- LS Car Meet
		stats.set_int("MPX_AWD_CAR_CLUB_MEM", 1000) -- LS Car Meet Member
		stats.set_int("MPX_AWD_SPRINTRACER", 50) -- Sprint Racer
		stats.set_int("MPX_AWD_STREETRACER", 50) -- Street Racer
		stats.set_int("MPX_AWD_PURSUITRACER", 50) -- Pursuit Racer
		stats.set_int("MPX_AWD_TEST_CAR", 1800000) -- Tried And Tested
		stats.set_int("MPX_AWD_AUTO_SHOP", 100) -- Special Delivery
		stats.set_int("MPX_AWD_CAR_EXPORT", 100) -- Car Exporter
		stats.set_bool("MPX_AWD_PRO_CAR_EXPORT", true) -- Pro Car Exporter
		stats.set_int("MPX_AWD_GROUNDWORK", 250) -- Groundwork
		stats.set_bool("MPX_AWD_UNION_DEPOSITORY", true) -- The Union Depository Contract
		stats.set_bool("MPX_AWD_MILITARY_CONVOY", true) -- The Superdollar Deal
		stats.set_bool("MPX_AWD_FLEECA_BANK", true) -- The Bank Contract
		stats.set_bool("MPX_AWD_FREIGHT_TRAIN", true) -- The ECU Contract
		stats.set_bool("MPX_AWD_BOLINGBROKE_[removed]", true) -- The Prison Contract
		stats.set_bool("MPX_AWD_IAA_RAID", true) -- The Agency Deal
		stats.set_bool("MPX_AWD_METH_JOB", true) -- The Lost Contract
		stats.set_bool("MPX_AWD_BUNKER_RAID", true) -- The Data Contract
		stats.set_int("MPX_AWD_ROBBERY_CONTRACT", 100) -- Contractual Criminal
		stats.set_int("MPX_AWD_FACES_OF_DEATH", 100) -- Faces Of Death
		stats.set_bool("MPX_AWD_STRAIGHT_TO_VIDEO", true) -- Straight To Video
		stats.set_bool("MPX_AWD_MONKEY_C_MONKEY_DO", true) -- Monkey See Monkey Do
		stats.set_bool("MPX_AWD_TRAINED_TO_KILL", true) -- Trained to Kill
		stats.set_bool("MPX_AWD_DIRECTOR", true) -- The Director
		-- The Contract
		stats.set_bool("MPX_AWD_TEEING_OFF", true) -- On Course
		stats.set_bool("MPX_AWD_PARTY_NIGHT", true) -- Nightlife Leak
		stats.set_bool("MPX_AWD_BILLIONAIRE_GAMES", true) -- High Society Leak
		stats.set_bool("MPX_AWD_HOOD_PASS", true) -- South Central Leak
		stats.set_bool("MPX_AWD_STUDIO_TOUR", true) -- Studio Time
		stats.set_bool("MPX_AWD_DONT_MESS_DRE", true) -- Don't [removed] With Dre
		stats.set_bool("MPX_AWD_BACKUP", true) -- Backup
		stats.set_bool("MPX_AWD_SHORTFRANK_1", true) -- Seed Capital - Franklin
		stats.set_bool("MPX_AWD_SHORTLAMAR_1", true) -- Seed Capital - Lamar
		stats.set_bool("MPX_AWD_SHORTFRANK_2", true) -- Fire It Up - Franklin
		stats.set_bool("MPX_AWD_SHORTLAMAR_2", true) -- Fire It Up - Lamar
		stats.set_bool("MPX_AWD_SHORTFRANK_3", true) -- OG Kush - Franklin
		stats.set_bool("MPX_AWD_SHORTLAMAR_3", true) -- OG Kush - Lamar
		stats.set_int("MPX_AWD_CONTRACTOR", 50) -- Contractual Obligations
		stats.set_int("MPX_AWD_COLD_CALLER", 50) -- Cold Caller
		stats.set_bool("MPX_AWD_CONTR_KILLER", true) -- Contract Killer
		stats.set_bool("MPX_AWD_DOGS_BEST_FRIEND", true) -- A Dog's Best Friend
		stats.set_bool("MPX_AWD_MUSIC_STUDIO", true) -- Sound Check
		stats.set_int("MPX_AWD_PRODUCER", 60) -- Producer
		-- Los Santos Drug Wars
		stats.set_bool("MPX_AWD_ACELIQUOR", true) -- Welcome to the Troupe
		stats.set_bool("MPX_AWD_TRUCKAMBUSH", true) -- Designated Driver
		stats.set_bool("MPX_AWD_LOSTCAMPREV", true) -- Fatal Incursion
		stats.set_bool("MPX_AWD_ACIDTRIP", true) -- Uncontrolled Substance
		stats.set_int("MPX_AWD_RUNRABBITRUN", 5) -- Run Rabbit Run
		stats.set_bool("MPX_AWD_HIPPYRIVALS", true) -- Make War not Love
		stats.set_bool("MPX_AWD_TRAINCRASH", true) -- Off The Rails
		stats.set_int("MPX_AWD_CALLME", 50) -- Call Me
		stats.set_bool("MPX_AWD_BACKUPB", true) -- Back It Up
		stats.set_bool("MPX_AWD_GETSTARTED", true) -- Lick My Acid
		stats.set_int("MPX_AWD_CHEMCOMPOUNDS", 50) -- Chemical Attraction
		stats.set_bool("MPX_AWD_CHEMREACTION", true) -- Chemical Reaction
		stats.set_int("MPX_AWD_STASHHORAID", 50) -- Stashes To Stashes
		stats.set_int("MPX_AWD_DEADDROP", 50) -- Here Comes The Drop
		stats.set_int("MPX_AWD_GOODSAMARITAN", 50) -- Good Samaritan
		stats.set_bool("MPX_AWD_WAREHODEFEND", true) -- This Is An Intervention
		stats.set_bool("MPX_AWD_RESCUECOOK", true) -- Unusual Suspects
		stats.set_bool("MPX_AWD_DRUGTRIPREHAB", true) -- Fried Mind
		stats.set_bool("MPX_AWD_ATTACKINVEST", true) -- Checking In
		stats.set_int("MPX_AWD_OWNWORSTENEMY", 60) -- Your Own Worst Enemy
		stats.set_bool("MPX_AWD_CARGOPLANE", true) -- BDKD
		stats.set_bool("MPX_AWD_BACKUPB2", true) -- Back It Up 2
		stats.set_int("MPX_AWD_TAXIDRIVER", 50) -- Taxi Driver
		stats.set_bool("MPX_AWD_TAXISTAR", true) -- 5 Star Ride
		-- The Chop Shop
		stats.set_bool("MPX_AWD_MAZE_BANK_ROBBERY", true) -- The Duggan Robbery
		stats.set_bool("MPX_AWD_CARGO_SHIP_ROBBERY", true) -- The Cargo Ship Robbery
		stats.set_bool("MPX_AWD_MISSION_ROW_ROBBERY", true) -- The [removed]er Robbery
		stats.set_bool("MPX_AWD_PERFECT_RUN", true) -- Perfect Run
		stats.set_bool("MPX_AWD_EXTRA_MILE", true) -- Extra Mile
		stats.set_int("MPX_AWD_VEHICLE_ROBBERIES", 50) -- New Car Smell
		stats.set_int("MPX_AWD_PREP_WORK", 50) -- Serious Prepper
		stats.set_int("MPX_AWD_CAR_DEALER", 5000000) -- Wheeler Dealer
		stats.set_int("MPX_AWD_SECOND_HAND_PARTS", 5000000) -- Second Hand Parts
		stats.set_int("MPX_AWD_TOW_TRUCK_SERVICE", 50) -- Towed Away
		stats.set_bool("MPX_AWD_SUBMARINE_ROBBERY", true) -- The McTony Robbery
		stats.set_bool("MPX_AWD_DIAMOND_CASINO_ROBBERY", true) -- The Podium Robbery
		stats.set_bool("MPX_AWD_BOLINGBROKE", true) -- Slush Fund
		stats.set_bool("MPX_AWD_GETTING_SET_UP", true) -- Best Laid Plans
		stats.set_bool("MPX_AWD_CHICKEN_FACTORY_RAID", true) -- The Cluckin' Bell Farm Raid
		stats.set_bool("MPX_AWD_HELPING_HAND2", true) -- Pecking Order
		stats.set_bool("MPX_AWD_SURPRISE_ATTACK", true) -- Sly Fox
		stats.set_bool("MPX_AWD_ALL_OUT_RAID", true) -- [removed] Fight
		stats.set_bool("MPX_AWD_WEAPON_ARSENAL", true) -- All The Sides
		stats.set_bool("MPX_AWD_GETAWAY_VEHICLES", true) -- Fly The Coop
		-- Bottom Dollar Bounties
		stats.set_bool("MPX_AWD_HIVALBOUNT1", true) -- Get Whitney
		stats.set_bool("MPX_AWD_HIVALBOUNT2", true) -- Get Lieberman
		stats.set_bool("MPX_AWD_HIVALBOUNT3", true) -- Get O'Neil
		stats.set_bool("MPX_AWD_HIVALBOUNT4", true) -- Get Thompson
		stats.set_bool("MPX_AWD_HIVALBOUNT5", true) -- Get Song
		stats.set_bool("MPX_AWD_HIVALBOUNT6", true) -- Get Garcia
		stats.set_int("MPX_AWD_BOUNTIES", 50) -- Bountiful
		stats.set_int("MPX_AWD_STANBOUNTIES", 50) -- Still Breathing
		stats.set_int("MPX_AWD_BOUNTEARNS", 5000000) -- Cash On Delivery
		stats.set_int("MPX_AWD_BAILOFFICSTAFF", 1000000) -- Step Two: Profit
		stats.set_int("MPX_AWD_DISPATCHWORK", 50) -- Dispatched
		stats.set_int("MPX_AWD_PIZZATHIS", 50) -- Pizza This...
		stats.set_bool("MPX_AWD_ASSONATTACKSWIN", true) -- Priority Boarding
		stats.set_bool("MPX_AWD_ASSONDEFENDWIN", true) -- Not A Scratch
		stats.set_int("MPX_AWD_ASSONBONUSOBJ", 20) -- Happy Landings
		stats.set_int("MPX_AWD_ASSONHARDDRIVE", 50) -- Hard Drive Hoarder
		stats.set_int("MPX_AWD_FROSTBITE", 15) -- Death Trap
		stats.set_bool("MPX_AWD_DISEASECONTROL", true) -- One Of A Kind
		-- Agents of Sabotage
		stats.set_bool("MPX_AWD_FINEART", true) -- The Fine Arts File
		stats.set_bool("MPX_AWD_BRUTEFORCE", true) -- The Brute Force File
		stats.set_bool("MPX_AWD_PROJECTBREAK", true) -- The Project Breakaway File
		stats.set_bool("MPX_AWD_BLACKBOXFILE", true) -- The Black Box File
		stats.set_bool("MPX_AWD_BONUSPOINTS", true) -- Bonus Points
		stats.set_int("MPX_AWD_DARNELLBROSINC", 50) -- Darnell Bros Inc.
		stats.set_int("MPX_AWD_GET_READY", 50) -- Get Ready
		stats.set_int("MPX_AWD_CASHINHAND", 5000000) -- Cash In Hand
		stats.set_int("MPX_AWD_BROTHERLYLOVE", 50000) -- Brotherly Love
		stats.set_bool("MPX_AWD_UPRUNNING", true) -- Up And Running
		stats.set_bool("MPX_AWD_MOGUL", true) -- Mogul
		stats.set_bool("MPX_AWD_INTEL", true) -- Intel
		stats.set_int("MPX_AWD_NOTOUTDPT", 5) -- Not Out Of Your Depth
		stats.set_bool("MPX_AWD_IRONMULE", true) -- Iron Mule
		stats.set_bool("MPX_AWD_AMMUNITION", true) -- Ammunition
		stats.set_bool("MPX_AWD_DIRDELIVERY", true) -- Direct Delivery
		stats.set_int("MPX_AWD_FULSTOCKED", 8) -- Fully Stocked
		stats.set_bool("MPX_AWD_TITANJOB", true) -- The Titan Job
		stats.set_bool("MPX_AWD_PERMANENTCON", true) -- Permanent Contract
		stats.set_int("MPX_AWD_ARMSINARMS", 50) -- Arms In Arms
		-- Money Fronts
		stats.set_bool("MPX_AWD_JUNKSEARCH", true) -- Liquid Market
		stats.set_int("MPX_AWD_DOGSDINNER", 5) -- Dog's Dinner
		stats.set_bool("MPX_AWD_CASASS", true) -- ROI
		stats.set_bool("MPX_AWD_LOCKUPINT", true) -- Compound Interest
		stats.set_bool("MPX_AWD_ESCORTFLATBED", true) -- Mutual Funds
		stats.set_bool("MPX_AWD_LEFT4DEAD", true) -- Current Liabilities
		stats.set_bool("MPX_AWD_TRACKER", true) -- Gut Instinct
		stats.set_bool("MPX_AWD_CLEARCOMP", true) -- The Monopoly
		stats.set_bool("MPX_AWD_CASHBONUS", true) -- Profit Maximization
		stats.set_int("MPX_AWD_HEATAROUDC", 25) -- Licensed Professional
		stats.set_int("MPX_AWD_TYCOON", 2000000) -- Cooking The Books
		stats.set_bool("MPX_AWD_BUSINEXPAND", true) -- Diversification
		stats.set_bool("MPX_AWD_LOSTPRODUC", true) -- Kush Collector
		stats.set_int("MPX_AWD_CASHCLEAN", 500000) -- Squeaky Clean
		stats.set_int("MPX_AWD_MEDICOURI", 50) -- QuickiePharm
		stats.set_bool("MPX_AWD_EMERGENCYSERV", true) -- First Responder
		stats.set_int("MPX_AWD_TRANSPORT", 20) -- Safeguard
		stats.set_bool("MPX_AWD_SECUREDEL", true) -- Ironclad
		stats.set_int("MPX_AWD_SUNBURNED", 15) -- Sunburned Survivor
		stats.set_bool("MPX_AWD_TWOOFAKIND", true) -- The Indiscriminator
		stats.set_int("MPX_AWD_UNDEADPARTY", 60) -- Dancing With Death
		-- A Safehouse in the Hills
		stats.set_bool("MPX_AWD_NEGATIVEPRESS", true) -- Negative Press
		stats.set_bool("MPX_AWD_USESELFDRIVINGVEH", true) -- Autonomous
		stats.set_bool("MPX_AWD_LIONSDEN", true) -- Inside Job
		stats.set_bool("MPX_AWD_TAKEOUTLEADEXPLO", true) -- Explosive Leadership
		stats.set_bool("MPX_AWD_SUBWAYTRAIN", true) -- Tunnel Vision
		stats.set_bool("MPX_AWD_SUBWAYSTUNTJUMP", true) -- Subway Stunt
		stats.set_bool("MPX_AWD_TRASHCOLLECTORS", true) -- Trash Talking
		stats.set_bool("MPX_AWD_ALLTRASHCOLLECTED", true) -- Waste Not
		stats.set_bool("MPX_AWD_FIBFINALE", true) -- A Clean Break
		stats.set_bool("MPX_AWD_HELPER", true) -- Willing Accomplice
		stats.set_bool("MPX_AWD_FIBFINALECHALLENGE", true) -- The Cleanest Break
		stats.set_bool("MPX_AWD_MANSIONDEFEND", true) -- Home Sweet Home
		stats.set_bool("MPX_AWD_DEFLOWMOTIONKILLS", true) -- Dead Slow
		stats.set_int("MPX_AWD_TAXIDESTRUCTION", 20) -- No Way KnoWay
		stats.set_bool("MPX_AWD_YOUVEMADEIT", true) -- A place like this
		stats.set_bool("MPX_AWD_ANIMALLOVER", true) -- Animal Instincts
		stats.set_int("MPX_AWD_YOGA", 50) -- Namaste
		stats.set_int("MPX_AWD_JUICEDUP", 100) -- Pumped
		stats.set_int("MPX_AWD_MANADVERSARYDEFUSE", 10) -- Bomb Squad
		stats.set_bool("MPX_AWD_MANSADVERSARYWIN", true) -- Mansion Raid
		stats.set_int("MPX_AWD_FIREFIGHTER", 20) -- Knockdown
		stats.set_int("MPX_AWD_ALPHAMAIL", 20) -- Alpha Mail
		stats.set_int("MPX_AWD_LOSSANTOSMETEOR", 20) -- Meteoric
		stats.set_bool("MPX_AWD_ONTHECLOCK", true) -- Hot Off The Press
		script.yield(5000)
		notify.success("Awards Unlocked!", "Please check your awards page.")
	else
		notify.info("Script - All Awards Only", "Please join any freemode session and reload the script.")
		log.info("\n\27[4;33mScript\27[m - \27[4;37mAll Awards Only\27[m\nPlease join any freemode session and reload the script.")
	end
end)