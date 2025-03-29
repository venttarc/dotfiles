set -g fish_greeting

## ALIAS
alias eza 'eza --icons always --color always --git'
alias la 'eza -a'
alias lla 'eza -la'
alias ls eza
alias ll 'eza -l'
alias lt 'eza --tree'
alias cfg='nvim ~/.config/fish/config.fish'
alias swallow=' python3 -m pip install -U --pre "yt-dlp[default]" && pip3 install -U tidal-dl-ng gallery-dl'
alias rename="perl-rename"
alias c="clear"
alias gogh='bash -c "$(curl -fsSL 'https://raw.githubusercontent.com/AvinashReddy3108/Gogh4Termux/master/install.sh')"'

#zoxide
eval "$(zoxide init --cmd cd fish)"

#starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source
enable_transience

#OHMYPOSH
#oh-my-posh init fish --config $HOME/.config/ohmyposh/base.toml | source

#yazi
export EDITOR=nvim
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

fish_config theme choose Dracula
##krabby random
