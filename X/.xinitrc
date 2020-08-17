#!/bin/bash

xrdb -load /home/thevar1able/.Xresources
xmodmap /home/thevar1able/.Xmodmap
xset r rate 350 50

picom --experimental-backends -b

exec awesome
