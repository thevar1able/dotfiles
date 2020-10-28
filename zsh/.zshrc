# source all .zsh files in that folder
# order shouldn't matter
sources=($HOME/zshrc/*.zsh)
for src in $sources; do
    source "$src"
done
unset sources src


# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"


# oh-my-zsh plugins
plugins=(
  git
  docker
  kubectl
  kube-ps1
  helm
  pass
  colored-man-pages
  fzf
)


# load oh-my-zsh
source $ZSH/oh-my-zsh.sh


# kube-ps1 config
export PROMPT=$PROMPT'$(kube_ps1)'
export KUBE_PS1_SYMBOL_ENABLE=false
export KUBE_PS1_ENABLED=off
export KUBE_PS1_SUFFIX=') '

alias kon="kubeon"
alias koff="kubeoff"


# "command not found" hook to search package list
[[ -e /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh


ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true
sources=(
  # fish-like syntax highlighting
  # requires 'zsh-syntax-highlighting' package
  /usr/share/{,zsh/plugins}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # fish-like autosuggests from history and completion
  # requires 'zsh-autosuggestions' package
  /usr/share/{,zsh/plugins}/zsh-autosuggestions/zsh-autosuggestions.zsh
)
for src in $sources; do
   [[ -e "$src" ]] && source "$src"
done
unset sources src
