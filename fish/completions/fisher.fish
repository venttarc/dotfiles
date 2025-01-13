if status is-interactive


    #alias
    alias eza 'eza --icons always --color always --git'
    alias la 'eza -a'
    alias ll 'eza -l'
    alias lla 'eza -la'
    alias ls eza
    alias lt 'eza --tree'
    alias eat="apt install -y"
    alias shit="apt remove -y"
    alias fart="apt autoremove -y"
    alias burp="apt search"
    alias fb='yt-dlp --get-url --cookies facebook.txt'
    alias cfg='cd .config/fish/ && hx .config/fish/config.fish'


    eval "$(zoxide init --cmd cd fish)"



    #oh-my-posh command
    oh-my-posh init fish --config $HOME/.config/ohmyposh/base.toml | source
end
