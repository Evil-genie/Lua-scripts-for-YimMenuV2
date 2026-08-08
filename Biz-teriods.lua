natives.load_natives()
local cls = "                                            \r"
local lual = "\r\27[9C]\27[94m[INFO/LuaScript]\27[m "
local lual_s = ": \27[92mInitialized successfully\27[m                           "
local function IsOnline() return NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS() and not NETWORK.NETWORK_IS_ACTIVITY_SESSION() end
 
local HGgoodtype = {
	{ 0, "Animal Materials"},
	{ 1, "Art & Antiques"},
	{ 2, "Chemicals"},
	{ 3, "Counterfeit Goods"},
	{ 4, "Jewelry & Gemstones"},
	{ 5, "Medical Supplies"},
	{ 6, "Narcotics "},
	{ 7, "Tobacco & Alcohol"}
}
 
local WHgoodtype = {
	{ 0,  "Medical Supplies"}, 
	{ 1,  "Tobacco & Alcohol"}, 
	{ 2,  "Art & Antiques"}, 
	{ 3,  "Electronic Goods"}, 
	{ 4,  "Weapons & Ammo"}, 
	{ 5,  "Narcotics"}, 
	{ 6,  "Gemstones"}, 
	{ 7,  "Animal Materials"}, 
	{ 8,  "Counterfeit Goods"}, 
	{ 9,  "Jewelry"}, 
	{ 10, "Bullion"}
}
 
local whprop = 1845347 + 260 + 128
local hangarprop = 1845347 + 260 + 304
local bbizprop = 1845347 + 260 + 205
local ncprop = 1845347 + 260 + 364
local syprop = 1845347 + 260 + 504
 
local function OpenMCT()
	if CAMERA.IS_SCREEN_FADED_OUT() then
		players.get_local():get_ped():set_invincible(false)
		players.get_local():get_ped():set_health(0)
	end
	if ScriptGlobal(1951071):get_int() ~= 0 then -- Credits to PazzoYAY!
		ScriptGlobal(1951071):set_int(0)
	end
	if scripts.is_active("apparcadebusinesshub") then
		scripts.run_as_script("apparcadebusinesshub", function() SCRIPT.TERMINATE_THIS_THREAD() end)
	end
	SCRIPT.REQUEST_SCRIPT("apparcadebusinesshub")
	if SCRIPT.HAS_SCRIPT_LOADED("apparcadebusinesshub") then
		BUILTIN.START_NEW_SCRIPT("apparcadebusinesshub", 1424)
		SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED("apparcadebusinesshub")
	end
end
 
local function GetBusinessSlot(businessName)
	local MCbizlocs = {
		[1] = "Paleto Bay", [6] = "El Burro Heights", [11] = "Gran Senora Desert", [16] = "Terminal",
		[2] = "Mount Chiliad", [7] = "Downtown Vinewood", [12] = "San Chianski Mountain Range", [17] = "Elysian Island",
		[3] = "Paleto Bay", [8] = "Morningwood", [13] = "Alamo Sea", [18] = "Elysian Island",
		[4] = "Paleto Bay", [9] = "Vespucci Canals", [14] = "Gran Senora Desert", [19] = "Cypress Flats",
		[5] = "Paleto Bay", [10] = "Textile City", [15] = "Grapeseed", [20] = "Elysian Island",
		[21] = "Grand Senora Oilfields", [22] = "Grand Senora Desert", [23] = "Route 68", [24] = "Farmhouse", [25] = "Smoke Tree Road", [26] = "Thomson Scrapyard", [27] = "Grapeseed", [28] = "Paleto Forest", [29] = "Raton Canyon", [30] = "Lago Zancudo", [31] = "Chumash"
	}
	local MCbiz = {
		{ MCBname = "Methamphetamine Lab", ID = { 1, 6, 11, 16 } },
		{ MCBname = "Weed Farm", ID = { 2, 7, 12, 17 } },
		{ MCBname = "Cocaine Lockup", ID = { 3, 8, 13, 18 } },
		{ MCBname = "Counterfeit Cash Factory", ID = { 4, 9, 14, 19 } },
		{ MCBname = "Document Forgery Office", ID = { 5, 10, 15, 20 } },
		{ MCBname = "Bunker", ID = { 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 } }
	}
	for _, business in ipairs(MCbiz) do -- Credit to Silenthy6 (SilentSalo) for this part https://www.unknowncheats.me/forum/4380348-post701.html (it was too much for my brain)
		if business.MCBname == businessName then
			for i = 0, 5 do
				local slot = ScriptGlobal(bbizprop):at(PLAYER.PLAYER_ID(), 884):at(i, 13):get_int()
				if slot > 0 then
					for _, id in ipairs(business.ID) do
						if slot == id then
							local mcbizloc = MCbizlocs[slot]
							log.info("\r\27[1;36mBusiness:\27[1;92m "..businessName.." \27[m| \27[1;36mLocation:\27[m "..mcbizloc.." | \27[1;36mSlot:\27[m "..i.." | \27[1;36mID:\27[m "..slot.."            \r")
							return true, i
						end
					end
				end
			end
		end
	end
end	
 
local function BizRe_Hangar()
	if ScriptGlobal(hangarprop):at(PLAYER.PLAYER_ID(), 884):get_int() >= 1 then
		if ScriptGlobal(hangarprop + 3):at(PLAYER.PLAYER_ID(), 884):get_int() <= 49 then
			if HGWHmaxgoods then
				if HGsetgood then
					ScriptGlobal(1882787 + 8):set_int(HGgoodtype)
				end
				ScriptGlobal(1882787 + 7):set_int(50)
				stats.set_packed_bool(36828, true)
			else
				for HGl = 0, 49 do
					stats.set_packed_bool(36828, true)
					script.yield(1500)
				end
			end
			notify.success("Success!", "Hangar goods replenished!")
		else
			notify.warn("Oops!", "Hangar is at max capacity.")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Hangar")
	end
end
 
local function BizRe_Warehouse()
	if ScriptGlobal(whprop + 1):at(PLAYER.PLAYER_ID(), 884):get_int() >= 1 then
		for c = 0, 4 do
			if ScriptGlobal(whprop + 1):at(PLAYER.PLAYER_ID(), 884):at(c, 3):get_int() <= 110 then
				notify.success("Success!", "Warehouse(s) goods replenished!")
				if HGWHmaxgoods then
					if WHsetgood then
						ScriptGlobal(1882762 + 16):set_int(WHgoodtype)
					end
					for i = 1, 5 do
						for wh = 32359, 32363 do
							script.yield(100)
							ScriptGlobal(1882762 + 13):set_int(111)
							stats.set_packed_bool(wh, true)
						end
					end
				else
					for WHl = 0, 110 do
						for i = 1, 5 do
							for wh = 32359, 32363 do
								script.yield(100)
								stats.set_packed_bool(wh, true)
							end
						end
					end
				end
			end
		end
		notify.warn("Oops!", "Warehouse(s) are at max capacity.")
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Warehouse")
	end
end
 
local function BizRe_MCresup()
	tunables.set_int(1712674055, 1)
	for b = 0, 7 do
		if ScriptGlobal(bbizprop):at(PLAYER.PLAYER_ID(), 884):at(b, 13):get_int() >= 1 then
			for bsup = 1, 7 do
				ScriptGlobal(1673820 + bsup):set_int(1)
			end
		end
	end
	notify.success("Success!", "All businesses supplies have been replenished!")
end
 
local function BizRe_MCrestock()
	local methmc, slot = GetBusinessSlot("Methamphetamine Lab")
	if methmc then
		if ScriptGlobal(bbizprop + 1):at(PLAYER.PLAYER_ID(), 884):at(slot, 13):get_int() <= 19 then
			for _, manuprod in ipairs({1370024930, 1944848251, 1577999189, 1678460062}) do
				tunables.set_int(manuprod, 1)
			end
			for _, manucost in ipairs({-730135062, -660914094}) do
				tunables.set_int(manucost, 1)
			end
			script.yield(2000)
			notify.success("Success!", "Meth Business restock ready!\nPlease restart your business.")
		else
			notify.warn("Oops!", "Meth Business stock is at max capacity!")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Methamphetamine Lab.")
	end
	
	local weedmc, slot = GetBusinessSlot("Weed Farm")
	if weedmc then
		if ScriptGlobal(bbizprop + 1):at(PLAYER.PLAYER_ID(), 884):at(slot, 13):get_int() <= 79 then
			for _, manuprod in ipairs({-635596193, -1694873660, 1575359233, 102029883}) do
				tunables.set_int(manuprod, 1)
			end
			for _, manucost in ipairs({-373027461, 1195564032}) do
				tunables.set_int(manucost, 1)
			end
			script.yield(2000)
			notify.success("Success!", "Weed Business restock ready!\nPlease restart your business.")
		else
			notify.warn("Oops!", "Weed Business stock is at max capacity!")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Weed Farm.")
	end
	
	local crackmc, slot = GetBusinessSlot("Cocaine Lockup")
	if crackmc then
		if ScriptGlobal(bbizprop + 1):at(PLAYER.PLAYER_ID(), 884):at(slot, 13):get_int() <= 9 then
			for _, manuprod in ipairs({702413484, 2070857577, -1539796661, 396217128}) do
				tunables.set_int(manuprod, 1)
			end
			for _, manucost in ipairs({-161187879, 1500658261}) do
				tunables.set_int(manucost, 1)
			end
			script.yield(2000)
			notify.success("Success!", "Coke Business restock ready!\nPlease restart your business.")
		else
			notify.warn("Oops!", "Coke Business stock is at max capacity!")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Cocaine Lockup.")
	end
	
	local cashmc, slot = GetBusinessSlot("Counterfeit Cash Factory")
	if cashmc then
		if ScriptGlobal(bbizprop + 1):at(PLAYER.PLAYER_ID(), 884):at(slot, 13):get_int() <= 39 then
			for _, manuprod in ipairs({1310272402, 1690071006, -1454958662, -1913260493}) do
				tunables.set_int(manuprod, 1)
			end
			for _, manucost in ipairs({631857857, -891680742}) do
				tunables.set_int(manucost, 1)
			end
			script.yield(2000)
			notify.success("Success!", "Cash Business restock ready!\nPlease restart your business.")
		else
			notify.warn("Oops!", "Cash Business stock is at max capacity!")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Counterfeit Cash Factory.")
	end
	
	local fakeidmc, slot = GetBusinessSlot("Document Forgery Office")
	if fakeidmc then
		if ScriptGlobal(bbizprop + 1):at(PLAYER.PLAYER_ID(), 884):at(slot, 13):get_int() <= 59 then
			for _, manuprod in ipairs({-959721585, 1672482518, -518264160, 489023341}) do
				tunables.set_int(manuprod, 1)
			end
			for _, manucost in ipairs({-1839004359, -192060672}) do
				tunables.set_int(manucost, 1)
			end
			script.yield(2000)
			notify.success("Success!", "Documents Business restock ready!\nPlease restart your business.")
		else
			notify.warn("Oops!", "Documents Business stock is at max capacity!")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Document Forgery Office.")
	end
	
	local bunkermc, slot = GetBusinessSlot("Bunker")
	if bunkermc then
		if ScriptGlobal(bbizprop + 1):at(PLAYER.PLAYER_ID(), 884):at(slot, 13):get_int() <= 99 then
			for _, manuprod in ipairs({215868155, 631477612, 818645907}) do
				tunables.set_int(manuprod, 1)
			end
			for _, manucost in ipairs({-1652502760, 1647327744}) do
				tunables.set_int(manucost, 1)
			end
			script.yield(2000)
			notify.success("Success!", "Bunker Business restock ready!\nPlease restart your business.")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Bunker.")
	end
	
	if ScriptGlobal(bbizprop):at(PLAYER.PLAYER_ID(), 884):at(6, 13):get_int() >= 1 then
		if ScriptGlobal(bbizprop + 1):at(PLAYER.PLAYER_ID(), 884):at(6, 13):get_int() <= 159 then
			for _, manuprod in ipairs({-672998848, 494316332, -40235252}) do
				tunables.set_int(manuprod, 1)
			end
			for _, manucost in ipairs({-1506354854, -993236072}) do
				tunables.set_int(manucost, 1)
			end
			script.yield(2000)
			notify.success("Success!", "Acid Lab Business restock ready!\nPlease restart your business.")
		end
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own an Acid Lab.")
	end
end
 
 
local function BizRe_NCrestock()
	if ScriptGlobal(ncprop):at(PLAYER.PLAYER_ID(), 884):get_int() >= 1 then
		if ScriptGlobal(ncprop + 4):get_float() <= 99.0 then
			stats.set_int("MPX_CLUB_POPULARITY", 1000)
			notify.success("Success!", "Nightclub Popularity has been maxed out!")
		end
		for _, manuprod in ipairs({-147565853, -1390027611, -1292210552, 1007184806, 18969287, -863328938, 1607981264}) do
			tunables.set_int(manuprod, 1)
		end
		notify.success("Success!", "Nightclub restock ready!\nPlease re-assign your technicians.")
		script.yield(2000)
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Nightclub.")
	end
end
 
local function BizRe_SalvPop()
	if ScriptGlobal(syprop):at(PLAYER.PLAYER_ID(), 884):get_int() >= 1 then
		stats.set_packed_int(51051, 100)
		notify.success("Success!", "Salvage Yard Popularity has been maxed out!")
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own a Salvage Yard.")
	end
end
 
local function BizRe_MFheat()
	if stats.get_int("MPX_SB_CAR_WASH_OWNED") == 1 then
		for tycoonh = 24924, 24926 do
			stats.set_packed_int(tycoonh, 0)
		end
		notify.success("Success!", "Money Fronts Businesses Heat Removed!")
		script.yield(2000)
	else
		notify.error("TinkerScript - Biz-Teroids", "You don't own Hands on Car Wash.")
	end
end
 
 
local function BusinessOnSteroids() -- Original TinkerScript by ImagineNothing
 
local function Countdown()
	local cd_cls = "\r                                                                                \r"
	log.info(cd_cls.."\27[1A\27[26C10\r") script.yield(999)
	for i = 9, 1, -1 do log.info(cd_cls.."\27[1A\27[26C"..i.."  \r") script.yield(999) end
	log.info(cd_cls.."\27[1AStarting...                           \r")
	log.info(cd_cls.."\27[1A\27[42;30m Start \27[m                           \r\n")
end
 
	log.warn("\r                                                                                 \r"..[[	
           __     This script will Restock/Refill:
  \ ______/ V`-,  ]].."\27[38;5;124mHangar and Warehouses\27[m\n"..[[
   }        /~~  ]].."\27[32mMC Businesses\27[m\n"..[[
  /_)^ --,r'    ]].."\27[95mNightclub\27[m and \27[95mPopularity Bar\27[m"..[[ 
 |b      |b   ]].."\27[38;5;27mSalvage Yard Reputation\27[m"..[[ 
 ]].."Remove heat levels: \27[38;5;208mMoney Fronts Businesses\27[m"..[[ 
 ]].."\n\27[2;37;3mYOU MUST RESTART YOUR MC BUSINESSES AND RE-ASSIGN YOUR NIGHTCLUB TECHS AFTER RUNNING THE SCRIPT IF *RESTOCK* IS ENABLED.\27[m\n\nMain logic will start in:")--\27[1;100;37m
 
	notify.info("TinkerScript - Biz-Teroids by ImagineNothing", "Main logic will start in 10s.")
	Countdown()
 
	if HGWHrestock then	
		if HGWHmaxgoods then
			notify.info("TinkerScript - Biz-Teroids", "Hangar and Warehouse(s) instant max Restock enabled.")
		else
			notify.info("TinkerScript - Biz-Teroids", "Hangar and Warehouse(s) instant max Restock disabled. Businesses will be replenished with mixed goods.")
		end
		script.yield(1000)
		
		BizRe_Hangar()
		BizRe_Warehouse()
		notify.warn("Oops!", "Warehouse(s) are at max capacity.")
	else
		notify.info("TinkerScript - Biz-Teroids", "Hangar & Warehouse restock disabled. Skipping...")
	end
 
	script.yield(3000)
	
	if MCresup then BizRe_MCresup() else notify.info("TinkerScript - Biz-Teroids", "MC Businesses Resupply disabled. Skipping...") end
	
	script.yield(3000)
	
	if MCrestock then
		notify.info("TinkerScript - Biz-Teroids", "MC Businesses Restock enabled.")
		BizRe_MCrestock()
	else
		notify.info("TinkerScript - Biz-Teroids", "MC Businesses Restock disabled. Skipping...")
	end
	
	script.yield(3000)
	
	if NCgoods then BizRe_NCrestock() end
	
	BizRe_SalvPop()
	BizRe_MFheat()
	
	log.info("\r                                                                                \r\n\r\27[1B\27[42;30m End \27[m\n")
end
 
local TS_Bizteroids = menu.get_submenu("Biz-Teroids"):add_category("Main")
local BizteroidsMenu = menu.create_group("Control Panel", 20)
 
TS_Bizteroids:imgui(function()
	if IsOnline() then BizteroidsMenu:draw() else ImGui.TextDisabled("Please join a freemode session.") return end
end)
 
BizteroidsMenu:add_checkbox("HGWH_restock", "Hangar/Warehouse Restock", "Should the script restock your Hangar and Warehouse(s)?", true, function() end)
BizteroidsMenu:add_checkbox("HGWH_maxgoods", "Hangar/Warehouse Max Goods", "Should the script instantly max out your Hangar and Warehouse(s) stock?\nIf disabled, restock will be a bit slower, but you'll receive mixed goods", true, function() end)
 
BizteroidsMenu:add_checkbox("HG_setgood", "Hangar Set Good", "Goods type for Hangar will be random if this is disabled", false, function()
	notify.success("TinkerScript - Biz-Teroids", "Hangar goods type enabled!", 3000)
end, function()
	notify.info("TinkerScript - Biz-Teroids", "Hangar goods type disabled.", 3000)
end)
 
commandmgr.add_list_command("HG_goodtype", "Hangar Good type", "", HGgoodtype, 0, function()
	HGgoodtype = commandmgr.get_command("HG_goodtype"):get_value()
end) HGgoodtype = 0
 
BizteroidsMenu:imgui(function()
    if commandmgr.get_command("HG_setgood"):get_value() == true then
        commandmgr.get_command("HG_goodtype"):draw()
		ImGui.Spacing()
    end
end)
 
BizteroidsMenu:add_checkbox("WH_setgood", "Warehouse Set Good", "Goods type for Warehouse will be random if this is disabled", false, function()
	notify.success("TinkerScript - Biz-Teroids", "Warehouse goods type enabled!", 3000)
end, function()
	notify.info("TinkerScript - Biz-Teroids", "Warehouse goods type disabled.", 3000)
end)
 
commandmgr.add_list_command("WH_goodtype", "Warehouse Good type", "", WHgoodtype, 0, function()
	WHgoodtype = commandmgr.get_command("WH_goodtype"):get_value()
end) WHgoodtype = 0
 
BizteroidsMenu:imgui(function()
    if commandmgr.get_command("WH_setgood"):get_value() == true then
        commandmgr.get_command("WH_goodtype"):draw()
		ImGui.Spacing()
    end
end)
 
BizteroidsMenu:add_checkbox("MC_resup", "MC Businesses Resupply", "Should the script resupply all your MC Businesses?", true, function() end)
BizteroidsMenu:add_checkbox("MC_restock", "MC Businesses Restock", "Should the script restock your MC Businesses?", true, function() end)
BizteroidsMenu:add_checkbox("NC_goods", "Nightclub Restock", "Should the script restock your Nightclub?", true, function() end)
 
BizteroidsMenu:imgui(function()
 
	HGWHrestock = commandmgr.get_command("HGWH_restock"):get_value()
	HGWHmaxgoods = commandmgr.get_command("HGWH_maxgoods"):get_value()
	HGsetgood = commandmgr.get_command("HG_setgood"):get_value()
	WHsetgood = commandmgr.get_command("WH_setgood"):get_value()
	MCresup = commandmgr.get_command("MC_resup"):get_value()
	MCrestock = commandmgr.get_command("MC_restock"):get_value()
	NCgoods = commandmgr.get_command("NC_goods"):get_value()
	
	script.run_in_callback(function()
		while scripts.is_active("apparcadebusinesshub") do
			if ScriptGlobal(1971195):get_int() == -1 then
				ScriptGlobal(1971195):set_int(0)
			end
			script.yield(0)
		end
	end)
 
	ImGui.Spacing()ImGui.Spacing()ImGui.Spacing()
	if ImGui.Button("Run!", 80, 40) then
		script.run_in_callback(function() BusinessOnSteroids() end)
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Runs the full logic.") end
    ImGui.Spacing()ImGui.Spacing()ImGui.Spacing()
	
	ImGui.Text("Individual Features")ImGui.Separator()ImGui.Spacing()
	
	if ImGui.Button("Master Control Terminal", 185) then
		script.run_in_callback(function() OpenMCT() end)
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Manage your businesses. (Double-Click)") end ImGui.SameLine()
	
	if ImGui.Button("Owned Businesses", 185) then
		GetBusinessSlot("Methamphetamine Lab")
		GetBusinessSlot("Weed Farm")
		GetBusinessSlot("Cocaine Lockup")
		GetBusinessSlot("Counterfeit Cash Factory")
		GetBusinessSlot("Document Forgery Office")
		GetBusinessSlot("Bunker")
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Prints your owned businesses to console.") end ImGui.NewLine()
	
	if ImGui.Button("Restock Hangar", 185) then
		script.run_in_callback(function() BizRe_Hangar() end)
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Restocks your Hangar.") end ImGui.SameLine()
	
	if ImGui.Button("Restock Warehouse", 185) then
		script.run_in_callback(function() BizRe_Warehouse() end)
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Restocks your Warehouse(s).") end
	
	if ImGui.Button("Restock MC Businesses", 185) then
		script.run_in_callback(function() BizRe_MCrestock() end)
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Restocks all your Motorcycle Club Businesses") end ImGui.SameLine()
	
	if ImGui.Button("Resupply MC Businesses", 185) then
		BizRe_MCresup()
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Resupplies all your Motorcycle Club Businesses.") end
	
	if ImGui.Button("Restock Nightclub", 185) then
		script.run_in_callback(function() BizRe_NCrestock() end)
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Restocks your Nightclub.") end ImGui.SameLine()
	
	if ImGui.Button("Businesses Heat", 185) then
		script.run_in_callback(function() BizRe_MFheat() end)
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Removes Money Fronts Heat.") end
	
	if ImGui.Button("Nightclub Popularity", 185) then
		if ScriptGlobal(ncprop):at(PLAYER.PLAYER_ID(), 884):get_int() >= 1 then
			if ScriptGlobal(ncprop + 4):get_float() <= 99.0 then
				stats.set_int("MPX_CLUB_POPULARITY", 1000)
				notify.success("Success!", "Nightclub Popularity has been maxed out!")
			end
		else
			notify.error("TinkerScript - Biz-Teroids", "You don't own a Nightclub.")
		end
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Sets your Nightclub popularity to max.") end ImGui.SameLine()
	
	if ImGui.Button("Salvage Yard Popularity", 185) then
		BizRe_SalvPop()
	end if ImGui.IsItemHovered() then ImGui.SetTooltip("Sets your Salvage Yard popularity to max.") end
	
	ImGui.SetWindowFontScale(0.6)
	ImGui.TextDisabled("\nYOU MUST RESTART YOUR MC BUSINESSES AND RE-ASSIGN YOUR NIGHTCLUB TECHS IF *RESTOCK* IS ENABLED")
	ImGui.SetWindowFontScale(1.0)
	
	ImGui.Spacing()ImGui.Spacing()ImGui.Spacing()
	ImGui.Text("Instant-Sell") ImGui.SameLine() ImGui.TextColored(0.2, 1, 1, 1, "°°°°")ImGui.Separator()ImGui.Spacing()
	
	if ImGui.Button("Special Cargo##sell", 185) then
		if scripts.is_active("gb_contraband_sell") then
			ScriptLocal("gb_contraband_sell", 576 + 1):set_int(67230)
		else
			notify.info("TinkerScript - Biz-Teroids", "You must start a Special Cargo Sell Mission first!")
		end
	end
	
	ImGui.SameLine() if ImGui.Button("Air-Freight Cargo (Air)", 185) then
		if scripts.is_active("gb_smuggler") then
			ScriptLocal("gb_smuggler", 1998 + 1035):set_int(0)
			ScriptLocal("gb_smuggler", 1998 + 1078):set_int(1)
		else
			notify.info("TinkerScript - Biz-Teroids", "You must start a Air-Freight Sell Mission first!")
		end
	end
	
	if ImGui.Button("Weapons", 185) then
		if scripts.is_active("gb_gunrunning") then
			ScriptLocal("gb_gunrunning", 1275 + 774):set_int(0)
		else
			notify.info("TinkerScript - Biz-Teroids", "You must start a Weapons Sell Mission first!")
		end
	end
	
	ImGui.SameLine() if ImGui.Button("MC Business Product", 185) then
		if scripts.is_active("gb_biker_contraband_sell") then
			ScriptLocal("gb_biker_contraband_sell", 738 + 122):set_int(ScriptLocal("gb_biker_contraband_sell", 738 + 174):get_int())
		else
			notify.info("TinkerScript - Biz-Teroids", "You must start a Product Sell Mission first!")
		end
	end
end)