#!/usr/bin/bash
if cat /proc/acpi/button/lid/*/state | grep -q open; then
    swaymsg output <eDP-1> enable
else
    swaymsg output <eDP-1> disable

    if [[ $(swaymsg -t get_outputs | rg DP | wc -l) -le 1 ]]; then
     exec systemctl suspend 
    fi
fi

if [[ $(lspci -k | grep -E "(VGA|3D)" | wc -l) -ge 2 ]]; then
    swaymsg output <eDP-1> disable
fi