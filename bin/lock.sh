#!/bin/bash
#scrot /tmp/screen.png

#convert /tmp/screen.png -brightness-contrast -20x-50 -blur 0x26 /tmp/screen.png
#[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png

dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
i3lock -u -i /home/dougw/.lock_bg.png
#i3lock -u -i /tmp/screen.png
#rm /tmp/screen.png

## play
#convert /tmp/screen.png -colorspace Gray -gamma 2.2 /tmp/screen.png
#convert /tmp/screen.png -brightness-contrast -20x-50 -scale 10% -scale 1000%  /tmp/screen.png
