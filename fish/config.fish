set -g fish_greeting

## ALIAS
alias eza 'eza --icons always --color always --git'
alias la 'eza -a'
alias lla 'eza -la'
alias ls eza
alias ll 'eza -l'
alias lt 'eza --tree'
alias cfg='nvim ~/.config/fish/config.fish'
alias swallow='pip3 install -U tidal-dl-ng gallery-dl'
alias rename="perl-rename"
alias c="clear"
alias gogh='bash -c "$(curl -fsSL 'https://raw.githubusercontent.com/AvinashReddy3108/Gogh4Termux/master/install.sh')"'
alias u='pacman -Syu'
alias fart="pacman -Scc" 
alias eat="pacman -S" 
alias shit='pacman -Rsc'
alias g='git'
alias cat="fish_indent --ansi"

#zoxide
eval "$(zoxide init --cmd cd fish)"

#fzf and theme
eval "$(fzf --fish)"

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--color=border:#313244,label:#cdd6f4"

#starship#
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source
enable_transience
 
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
# python3 -m pip install -U --pre "yt-dlp[default]" 
