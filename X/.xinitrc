#!/bin/bash

xrdb -load /home/thevar1able/.Xresources
xmodmap /home/thevar1able/.Xmodmap

picom --experimental-backends -b

exec awesome
