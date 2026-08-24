script.run_in_callback(function()
--Each contract randomly selects one payout from $31k, $42k, $44k, $56k, $60k, or $70k and adds it to a running total.
--This random selection and addition is repeated 600 times to simulate completing 600 Agency Security Contracts.
--Average total earned after 600 contracts is $30,189,000

local fixer_stats = { { name="Vehicles Recovered", stat="MPX_FIXER_SC_VEH_RECOVERED", value=100 }, { name="Valuables Recovered", stat="MPX_FIXER_SC_VAL_RECOVERED", value=100 }, { name="Gangs Terminated", stat="MPX_FIXER_SC_GANG_TERMINATED", value=100 }, { name="VIPs Rescued", stat="MPX_FIXER_SC_VIP_RESCUED", value=100 }, { name="Assets Protected", stat="MPX_FIXER_SC_ASSETS_PROTECTED", value=100 }, { name="Equipment Destroyed", stat="MPX_FIXER_SC_EQ_DESTROYED", value=100 }, { name="Contracts Completed", stat="MPX_FIXER_COUNT", value=600 }, { name="Total Earnings", stat="MPX_FIXER_EARNINGS", value=30189000 }, { name="Payphone Bonus Kill Method", stat="MPX_PAYPHONE_BONUS_KILL_METHOD", value=-1 } }
log.verbose("\n\n             Each contract has randomly selected a payout from \n             $31k, $42k, $44k, $56k, $60k, or $70k and adds it\n    to a running total. This random selection and addition is repeated\n      600 times to simulate completing 600 Agency Security Contracts.\n         Average total earned after 600 contracts is $30,189,000\n")
	for i, data in ipairs(fixer_stats) do
        stats.set_int(data.stat, data.value)
        log.verbose(string.format("Set %s to %d", data.name, data.value))
        script.yield(100) -- Wait
    end
    notify.success("Message from Franklin", "All you contract stats have been updated homie.")
end)
