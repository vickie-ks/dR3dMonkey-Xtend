# Configurations for editing
alias bashconfig='subl ~/.bashrc'
alias bashreload='source ~/.bashrc'
alias aliasconfig='subl ~/.oh-my-bash/custom/aliases/my_aliases.sh'
alias fontconfig='subl ~/.oh-my-bash/themes/font/font.theme.sh'
alias alacrittyconfig='subl ~/.config/alacritty/alacritty.toml'
alias terminatorconfig='subl ~/.config/terminator/config'
alias gtkcss='subl ~/.config/gtk-3.0/gtk.css'

# Commonly used aliases
alias ls='eza'
alias update='sudo apt update && sudo apt upgrade'
# alias cmd='compgen -c | sort -u | fzf --height=40% --reverse --border --prompt="Search Commands: "  | xclip -selection clipboard'
alias cmd='compgen -c | sort -u | fzf --height=50% --reverse --prompt="➤ Search Commands → " | xclip -selection clipboard'
# alias fd='read -r cmd <<< "$(history | fzf --height=40% --reverse --border --prompt="Search History: " | sed -E '\''s/^[ ]*[0-9]+[ ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ ]+[0-9]{2}:[0-9]{2}:[0-9]{2}[ ]+//'\'' )" && [[ -n "$cmd" ]] && printf "%s" "$cmd" | xclip -selection clipboard'
alias fd='read -r cmd <<< "$(history | fzf --height=50% --reverse --prompt="➤ Search History → " | sed -E '\''s/^[ ]*[0-9]+[ ]+[0-9]{4}-[0-9]{2}-[0-9]{2}[ ]+[0-9]{2}:[0-9]{2}:[0-9]{2}[ ]+//'\'' )" && [[ -n "$cmd" ]] && printf "%s" "$cmd" | xclip -selection clipboard'
alias copy='xclip -selection clipboard'

# Capture The Flag (CTF) related aliases
alias tryhackme='sudo openvpn /home/dR3dMonkey/Downloads/dR3dMonkey.ovpn'
alias listen='rlwrap nc -nvlp'
alias up='python3 -m http.server'
alias getips='echo "IP: $(ifconfig eth0 | grep "inet " | awk "{print $2}")"'
alias msfstart='systemctl start postgresql && msfconsole -q'
alias msfstop='systemctl stop postgresql'
alias fix='stty raw -echo && fg'
alias ducks='du -cks * | sort -rn | head'
alias flushdns='sudo systemd-resolve --flush-caches'
alias hosts='sudo subl /etc/hosts'

# TMUX aliases for session management
alias tmuxconfig='subl ~/.tmux.conf'
alias tmuxreload='tmux source ~/.tmux.conf'
alias tmuxlist='tmux ls'
alias tmuxnew='tmux new-session -s'
alias tmuxdel='tmux kill-session -t'
alias tmuxsession='tmux attach -t'
