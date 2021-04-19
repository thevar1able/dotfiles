#!/bin/bash

xrdb -load /home/thevar1able/.Xresources
xmodmap /home/thevar1able/.Xmodmap
xset r rate 350 50
xset m 4/1 9
xset b 100

picom --experimental-backends -b

systemctl --user import-environment DISPLAY
systemctl --user restart pulseaudio &

exec awesome
