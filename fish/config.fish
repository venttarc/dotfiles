set -g fish_greeting

## ALIAS
alias eza 'eza --icons always --color always --git'
alias la 'eza -a'
alias lla 'eza -la'
alias ls eza
alias ll 'eza -l'
alias lt 'eza --tree'
alias rename= perl-rename
alias c clear
alias u='pacman -Syu'
alias fart="yes | pacman -Scc"
alias eat="pacman -S"
alias shit='pacman -Rsc'
alias burp='pacman -Ss'
alias z zellij
alias apktool "java -jar ~/../usr/bin/apktool_2.11.1.jar"
# alias apkeditor "java -jar ~/../usr/bin/APKEditor-1.4.3.jar"
export BAT_STYLE="plain"

#zoxide
eval "$(zoxide init --cmd cd fish)"

#fzf and theme
eval "$(fzf --fish)"

#starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source
enable_transience

#yazi
export EDITOR=hx

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

fish_config theme choose Dracula
