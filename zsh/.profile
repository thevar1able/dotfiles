export PATH="$HOME/.bin:$PATH"

# default applications
export TERM=xterm-256color
export EDITOR=nvim  # "subl3 -nw"
export PAGER=less

# load private environment variables
[ -f ~/.profile-private ] && source ~/.profile-private
