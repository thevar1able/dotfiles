# Needed when ssh-ing to servers without my terminal's terminfo (alacritty and termite)
alias ssh="TERM=xterm-256color ssh"

mp4convert() {
  ffmpeg -i "${1}" -c:a aac "${1}.mp4"
}

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
