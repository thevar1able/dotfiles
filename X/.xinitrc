#!/bin/bash

xrdb -load /home/thevar1able/.Xresources
xmodmap /home/thevar1able/.Xmodmap
xset r rate 350 50
xset m 4/1 9
xset b 100

picom -b
nm-applet &

systemctl --user import-environment DISPLAY
xss-lock ~/.bin/i3lock-wrapper &

exec awesome
