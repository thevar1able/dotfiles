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

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
