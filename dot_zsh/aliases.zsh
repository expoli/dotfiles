alias cp='cp -r --reflink=auto'
alias curl='curlie'
alias df='pydf'
alias diff='git diff --no-index'
alias diff!='kitty +kitten diff'
alias dragon='dragon-drag-and-drop --and-exit --all'
alias e='kak'
alias fd='fd --hidden --follow'
alias grep='grep --color'
alias http-serve='python3 -m http.server'
alias locate='locate -i'
alias mkdir='mkdir -p'
alias o='xdg-open'
alias rg='rg --hidden --follow --smart-case 2>/dev/null'
alias rm='rmtrash -rf'
alias rm!='\rm -rf'
alias rsync='rsync --verbose --archive --info=progress2 --human-readable --partial'
alias sudo='sudo -E '

alias ls="exa --group --git --group-directories-first"
alias ll="ls -l"
alias la="ll -a"
alias lk="ll -s=size"                # Sorted by size
alias lm="ll -s=modified"            # Sorted by modified date
alias lc="ll --created -s=created"   # Sorted by created date

mkdcd() {
  [ -n "$1" ] && mkdir -p "$1" && builtin cd "$1"
}

alias battery-normal='sudo cctk --PrimaryBattChargeCfg=custom:50-91 --ValSetupPwd="$(pass personal/bios)"'
alias battery-full='sudo cctk --PrimaryBattChargeCfg=standard --ValSetupPwd="$(pass personal/bios)"'

n() {
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    nnn -Aer "$@"

    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm "$NNN_TMPFILE"
    fi
}
