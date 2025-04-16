set -g fish_greeting

## ALIAS
alias eza 'eza --icons always --color always --git'
alias la 'eza -a'
alias lla 'eza -la'
alias ls eza
alias ll 'eza -l'
alias lt 'eza --tree'
alias cfg='hx ~/.config/fish/config.fish'
alias swallow='pip3 install -U tidal-dl-ng gallery-dl'
alias rename="perl-rename"
alias c="clear"
alias gogh='bash -c "$(curl -fsSL 'https://raw.githubusercontent.com/AvinashReddy3108/Gogh4Termux/master/install.sh')"'
alias u='pacman -Syu'
alias fart="yes | pacman -Scc"
alias eat="pacman -S"
alias shit='yes | pacman -Rsc'
alias g='git'
alias burp='pacman -Ss'
export BAT_STYLE="plain"

#zoxide
eval "$(zoxide init --cmd cd fish)"

#fzf and theme
eval "$(fzf --fish)"

set -Ux FZF_DEFAULT_OPTS "
	--color=fg:#908caa,bg:#191724,hl:#ebbcba
	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
	--color=border:#403d52,header:#31748f,gutter:#191724
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

#starship#
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

# python3 -m pip install -U --pre "yt-dlp[default]" 
