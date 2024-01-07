alias subl="subl3"

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
    yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S
}

faru() {
    paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S
}
