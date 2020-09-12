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
unset SSH_AGENT_PID

if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
  gpg-connect-agent updatestartuptty /bye >/dev/null
fi

# load private environment variables
[ -f ~/.profile-private ] && source ~/.profile-private

# start Xorg if there is no session and we're on tty1
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    echo "Starting X server"
    exec startx
fi
