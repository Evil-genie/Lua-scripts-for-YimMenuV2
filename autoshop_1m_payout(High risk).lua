-- Auto Shop Payout Editor | YimMenu v2

script.run_in_callback(function()

    local payout = 1000000

    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD0", payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD1", payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD2", payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD3", payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD4", payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD5", payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD6", payout)
    tunables.set_int("TUNER_ROBBERY_LEADER_CASH_REWARD7", payout)

    tunables.set_float("TUNER_ROBBERY_CONTACT_FEE", 0.0)

    notify.success("Auto Shop", "Payout applied")
end)
