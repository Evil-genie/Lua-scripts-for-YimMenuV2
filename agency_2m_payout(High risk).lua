script.run_in_callback(function()
    -- SET PAYOUT
    -- Safe: 1000000 - 2500000
    tunables.set_int("FIXER_FINALE_LEADER_CASH_REWARD", 2000000)
    notify.success("Agency", "Payout set to Max")
end)
