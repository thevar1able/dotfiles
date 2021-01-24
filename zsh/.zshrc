sources=($HOME/zshrc/*.zsh)
for src in $sources; do
    source "$src"
done
unset sources src


# If you come from bash you might have to change your $PATH.
eval $(/opt/homebrew/bin/brew shellenv)
export PATH=$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(
  git
  docker
  kubectl
  kube-ps1
  pass
  colored-man-pages
  fzf
  aws
  ripgrep
  aws
)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh


# Load site-functions from Homebrew
if (( ! ${fpath[(I)/opt/homebrew/share/zsh/site-functions]} )); then
  FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH
fi


# kube-ps1 config
export PROMPT=$PROMPT'$(kube_ps1)'
export KUBE_PS1_SYMBOL_ENABLE=false
export KUBE_PS1_ENABLED=off
export KUBE_PS1_SUFFIX=') '

alias kon="kubeon"
alias koff="kubeoff"


ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
FZF_DEFAULT_OPTS="--layout=reverse"


sources=(
  # Replace zsh's default completion selection menu with fzf!
  ./.dotfiles/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

  # hook for long jobs
  ./.dotfiles/zsh/plugins/zlong_alert.zsh/zlong_alert.zsh

  # fish-like syntax highlighting
  # requires 'zsh-syntax-highlighting' package
  /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # fish-like autosuggests from history and completion
  # requires 'zsh-autosuggestions' package
  /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
)
for src in $sources; do
   [[ -e "$src" ]] && source "$src"
done
unset sources src