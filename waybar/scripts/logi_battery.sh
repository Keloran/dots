#!/bin/bash
PERCENT=0

for i in 0 1 2 3 4 5
do
	if [[ -f /sys/class/power_supply/hidpp_battery_$i/capacity ]]; then
		PERCENT=$(cat /sys/class/power_supply/hidpp_battery_$i/capacity)
	fi
done

# if [[ -f /sys/class/power_supply/hidpp_battery_0/capacity ]]; then
#	PERCENT=$(cat /sys/class/power_supply/hidpp_battery_0/capacity)
# fi

# if [[ -f /sys/class/power_supply/hidpp_battery_1/capacity ]]; then
#	PERCENT=$(cat /sys/class/power_supply/hidpp_battery_1/capacity)
# fi

# if [[ -f /sys/class/power_supply/hidpp_battery_2/capacity ]]; then
#	PERCENT=$(cat /sys/class/power_supply/hidpp_battery_2/capacity)
#fi

echo $PERCENT
