set -g fish_greeting
export EDITOR=hx

# ALIAS
alias ls "eza --color always --colour-scale-mode gradient --grid --icons always"
alias uvi "uv pip install -U --system"
alias uvr "uv pip uninstall --system"
alias cd=z
alias acs='mpv --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 RuxitSynthetic/1.0 v1704477693164681093 t423632970321445770 ath5ee645e0 altpriv cvcv=2 smf=0" --referrer="https://aparsclassroom.com"'
alias s "pacman -Ss"
alias u "pacman -Syu"
alias d "pacman -Rsc"
alias i "pacman -S"
atuin init fish | source
zoxide init fish | source
starship init fish | source
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

fish_config theme choose Dracula

export UV_LINK_MODE=copy
