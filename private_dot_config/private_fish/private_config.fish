set -g fish_greeting
export EDITOR=hx

# ALIAS
alias ls "eza --color always --colour-scale-mode gradient --grid --icons always"
alias uvi "uv pip install -U --system"
alias uvr "uv pip uninstall --system"
alias cd=z
alias f "rm -rf $PREFIX/var/cache/pacman/pkg"
alias s "pacman -Ss"
alias u "pacman -Syu"
alias d "pacman -Rsc"
alias i "pacman -S"
abbr --add gg "go run main.go --song"

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
