-- Cayo Perico Auto-Setup (Hardcoded for Character 1)
-- Instantly executes when loaded.

-- 1. Hard Mode & Progress
stats.set_int("MP0_H4_PROGRESS", 131071)

-- 2. Primary Target (3 = Pink Diamond)
stats.set_int("MP0_H4CNF_TARGET", 3)

-- 3. Loadout (5 = Marksman)
stats.set_int("MP0_H4CNF_WEAPONS", 5)

-- 4. Approach Vehicles (Kosatka & Longfin unlocked)
stats.set_int("MP0_H4_MISSIONS", 65535)

-- 5. Setup Equipment
stats.set_int("MP0_H4CNF_BS_GEN", 131071)
stats.set_int("MP0_H4CNF_BS_ENTR", 63) 
stats.set_int("MP0_H4CNF_BS_ABIL", 63)

-- 6. Disruptions (Maxed)
stats.set_int("MP0_H4CNF_WEP_DISRP", 3)
stats.set_int("MP0_H4CNF_ARM_DISRP", 3)
stats.set_int("MP0_H4CNF_HEL_DISRP", 3)

-- 7. Compound Loot: All Gold
stats.set_int("MP0_H4LOOT_GOLD_C", 255)
stats.set_int("MP0_H4LOOT_GOLD_C_SCOPED", 255)

-- 8. Hangar Loot: Cocaine
stats.set_int("MP0_H4LOOT_COKE_I", 15)
stats.set_int("MP0_H4LOOT_COKE_I_SCOPED", 15)

-- 9. Clear other scoped Island Loot (keeps them undiscovered)
stats.set_int("MP0_H4LOOT_CASH_I", 0)
stats.set_int("MP0_H4LOOT_CASH_I_SCOPED", 0)
stats.set_int("MP0_H4LOOT_WEED_I", 0)
stats.set_int("MP0_H4LOOT_WEED_I_SCOPED", 0)
stats.set_int("MP0_H4LOOT_PAINT_V", 0)

-- Mark setup as active/paid
stats.set_int("MP0_H4_PLAYTHROUGH_STATUS", 40000)

log.info("[Cayo Setup] Success! Applied stats to MP0 (Character 1).")