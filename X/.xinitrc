#!/bin/bash

xrdb -load /home/konstantin-b/.Xresources
xmodmap /home/konstantin-b/.Xmodmap
xset r rate 350 50
xset m 4/1 9
xset b 100

picom --experimental-backends -b
nm-applet &

systemctl --user import-environment DISPLAY
systemctl --user restart pulseaudio &

xss-lock ~/.bin/i3lock-wrapper &

exec awesome
