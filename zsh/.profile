export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/.bin:$PATH"

# make systemd aware of our "new" PATH
systemctl --user import-environment PATH

# default applications
export TERMINAL=alacritty
export TERM=xterm-256color
export EDITOR=nvim

# -x4 = Set tab stops to 4 spaces.
# -F = Don't open with less if entire file fits on screen.
# -R = Output "raw" control characters. (colors)
# -s = Squeeze multiple blank lines.
export PAGER=less
export LESS="-Rx4sF"
# nicer highlighting
if [ -f "/usr/share/source-highlight/src-hilite-lesspipe.sh" ]; then
    export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
elif [ -f "/usr/bin/src-hilite-lesspipe.sh" ]; then
    export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
fi

# load private environment variables
[ -f ~/.profile-private ] && source ~/.profile-private

# Rootless Docker
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# Nvidia Wayland
# export __GL_GSYNC_ALLOWED=0
# export __GL_VRR_ALLOWED=0
# export WLR_DRM_NO_ATOMIC=1
# export QT_AUTO_SCREEN_SCALE_FACTOR=1
# export QT_QPA_PLATFORM=wayland
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# export GDK_BACKEND=wayland
# export XDG_CURRENT_DESKTOP=sway
# export GBM_BACKEND=nvidia-drm
# export __GLX_VENDOR_LIBRARY_NAME=nvidia
# export MOZ_ENABLE_WAYLAND=1
# export WLR_NO_HARDWARE_CURSORS=1

# start Xorg if there is no session and we're on tty1
if [ -z "$DISPLAY" ] && [ -z "$TMUX" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    echo "Starting X server"
    exec startx
fi
