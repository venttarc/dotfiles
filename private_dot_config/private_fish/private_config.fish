set -g fish_greeting
export EDITOR=hx

# ALIAS
alias ls "eza --color always --grid --icons always"
alias uvi "uv pip install -U --system"
alias uvr "uv pip uninstall --system"
alias cd=z
alias f "pacman -Scc"
alias s "pacman -Ss"
alias u "pacman -Syu"
alias d "pacman -Rsc"
alias i "pacman -S"
abbr --add gg "go run main.go --song"

atuin init fish | source
zoxide init fish | source
starship init fish | source
enable_transience
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
fish_add_path "/data/data/com.termux/files/home/.local/bin"
