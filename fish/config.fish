#./.cargo/bin/tinty apply base16-black-metal-burzum
set -g fish_greeting


alias eza 'eza --icons always --color always --git'
alias la 'eza -a'
alias lla 'eza -la'
alias ls eza
alias ll 'eza -l'
alias lt 'eza --tree'
alias cfg='cd .config/fish/ && hx config.fish'
alias burp="apt search"
alias fart=" apt autoremove -y"
alias fb='yt-dlp --get-url --cookies-from-browser '
alias shit="apt remove"
alias eat="apt install"
alias fuck="rm -rf"


#zoxide
eval "$(zoxide init --cmd cd fish)"

#starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
starship init fish | source
enable_transience

#OHMYPOSH
#oh-my-posh init fish --config $HOME/.config/ohmyposh/base.toml | source

#yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

fish_config theme choose Dracula
