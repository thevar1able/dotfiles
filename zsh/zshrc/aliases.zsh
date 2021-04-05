alias subl="subl3"

# Needed when ssh-ing to servers without my terminal's terminfo (alacritty and termite)
alias ssh="TERM=xterm-256color ssh"

cheat() {
    # https://github.com/chubin/cheat.sh
    # `cheat tool` or `cheat language/term+with+pluses[/1..]` (append number for next result)
    # ?Q to strip comments, ?T to strip syntax hl, …
    curl cht.sh/"$@"
}

how_in() {
  where="$1"; shift
  IFS=+ curl "https://cht.sh/$where/$*"
}

wttr() {
    local request="https://wttr.in/${1-$_WTTR}?mMQF"
    [ "$COLUMNS" -lt 125 ] && request+='n'
    # ${LANG%_*}
    curl -H "Accept-Language: en" --compressed "$request"
}

fay() {
    yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro sudo yay -S}

faru() {
    paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro sudo paru -S
}
