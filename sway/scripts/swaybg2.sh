#!/usr/bin/env bash

#killall swaybg

wideAmount=$(ls ~/.local/wallpapers/wide | wc -l)
wideRand=$(($RANDOM % $wideAmount))
wideFiles=(~/.local/wallpapers/wide/*)
wide=${wideFiles[wideRand]}
#wide=~/.local/wallpapers/wide/$randWide.jpg


laptopAmount=$(ls ~/.local/wallpapers/laptop | wc -l)
laptopRand=$((1 + $RANDOM % $laptopAmount))
laptopFiles=(~/.local/wallpapers/laptop/*)
laptop=${laptopFiles[laptopRand]})

#laptop=~/.local/wallpapers/laptop/$randLaptop.png


swaybg \
  -o DP-6 -i $wide \
  -o eDP-1 -i $laptop &
