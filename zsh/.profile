export PATH="$HOME/.bin:$HOME/.emacs.d/bin:$PATH"

# default applications
export TERM=xterm-256color
export EDITOR=nvim  # "subl3 -nw"

# -x4 = Set tab stops to 4 spaces.
# -F = Don't open with less if entire file fits on screen.
# -R = Output "raw" control characters. (colors)
# -s = Squeeze multiple blank lines.
export PAGER=less
export LESS="-Rx4sFX"
# nicer highlighting
if [ -f "/usr/share/source-highlight/src-hilite-lesspipe.sh" ]; then
    export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
elif [ -f "/usr/bin/src-hilite-lesspipe.sh" ]; then
    export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
fi

# load private environment variables
[ -f ~/.profile-private ] && source ~/.profile-private
if [ -e /Users/thevar1able/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/thevar1able/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "$HOME/.cargo/env"
