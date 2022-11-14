#!/usr/bin/env bash

killall swaybg

wideWall=
wide=~/.local/wallpapers/wide/1.jpg

laptop=~/.local/wallpapers/laptop/1.png
laptopWall=

function getWide() {
  wideAmount=$(ls ~/.local/wallpapers/wide | wc -l)
  wideRand=$(($RANDOM % $wideAmount))
  wideFiles=(~/.local/wallpapers/wide/*)
  wideWall=${wideFiles[wideRand]}
  #wide=~/.local/wallpapers/wide/$randWide.jpg
}

function getLaptop() {
  laptopAmount=$(ls ~/.local/wallpapers/laptop | wc -l)
  laptopRand=$(($RANDOM % $laptopAmount))
  laptopFiles=(~/.local/wallpapers/laptop/*)
  laptopWall=${laptopFiles[laptopRand]}
  #laptop=~/.local/wallpapers/laptop/$randLaptop.png
}

getWide
getLaptop

if [[ -z "$wideWall" ]]; then
  getWide
fi

if [[ -z "$laptopWall" ]]; then
  getLaptop
fi

wide=$wideWall
laptop=$laptopWall

swaybg \
  -o DP-2 -i $wide \
  -o eDP-1 -i $laptop &
