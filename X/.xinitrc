#!/bin/bash

xrdb -load /home/thevar1able/.Xresources
xmodmap /home/thevar1able/.Xmodmap
xset r rate 350 50

nm-applet &
picom --experimental-backends -b
syndaemon -t -k -i 1 -d &

exec awesome
