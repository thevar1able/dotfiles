export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/.bin:$PATH"

# make systemd aware of our "new" PATH
systemctl --user import-environment PATH

# default applications
export TERMINAL=st
export TERM=st-256color
export EDITOR=nvim  # "subl3 -nw"
export PAGER=less

# start ssh-agent
eval "$(ssh-agent -s)"
trap 'test -n "$SSH_AUTH_SOCK" && eval "`/usr/bin/ssh-agent -k`"' 0

if [ -f "/usr/lib/seahorse/ssh-askpass" ] ; then
  export SSH_ASKPASS="/usr/lib/seahorse/ssh-askpass"
elif [ -f "/usr/lib/ssh/ssh-askpass" ] ; then
  export SSH_ASKPASS="/usr/lib/ssh/ssh-askpass"
fi

# load private environment variables
[ -f ~/.profile-private ] && source ~/.profile-private

# start Xorg if there is no session and we're on tty1
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    echo "Starting X server"
    exec startx
fi
