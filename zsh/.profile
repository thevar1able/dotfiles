export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/.bin:$PATH"

# make systemd aware of our "new" PATH
systemctl --user import-environment PATH

# default applications
export TERMINAL=st
export TERM=st-256color
export EDITOR=nvim  # "subl3 -nw"

# -x4 = Set tab stops to 4 spaces.
# -F = Don't open with less if entire file fits on screen.
# -R = Output "raw" control characters. (colors)
# -s = Squeeze multiple blank lines.
# -X = Ignore ignore termcap initialization.
export PAGER=less
export LESS="-Rx4sXF"
# nicer highlighting
if [ -f "/usr/share/source-highlight/src-hilite-lesspipe.sh" ]; then
    export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
elif [ -f "/usr/bin/src-hilite-lesspipe.sh" ]; then
    export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
fi

# load private environment variables
[ -f ~/.profile-private ] && source ~/.profile-private

# start Xorg if there is no session and we're on tty1
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    echo "Starting X server"
    exec startx
fi
