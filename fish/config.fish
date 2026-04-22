if status is-interactive
    # --- Navigation & Listing ---
    alias ..="cd .."
    alias ...="cd ../.."
    alias l="ls -lah"     # Long format, all files, human readable
    alias ll="ls -lh"     # Long format
    alias tree="exa --tree" # If you have 'exa' or 'eza' installed, it's better than standard tree
    alias y="yazi"        # Fast terminal file manager

    # --- Safety First (Always prompts before destructive actions) ---
    alias cp="cp -iv"
    alias mv="mv -iv"
    alias rm="rm -iv"

    # --- Arch Linux / Pacman / AUR Helpers ---
    alias up="sudo pacman -Syu"           # Full system upgrade
    alias install="sudo pacman -S"        # Quick install
    alias remove="sudo pacman -Rns"       # Remove with dependencies and configs
    alias cleanup="sudo pacman -Rns (pacman -Qtdq)" # Remove orphaned packages
    
    # Paru (AUR Helper)
    alias p="paru"
    alias ps="paru -S"                    # Install with paru
    alias pss="paru -Ss"                  # Search with paru
    
    # Yay (AUR Helper)
    alias yup="yay -Syu"                  # Update everything including AUR with yay
    alias ys="yay -S"                     # Install with yay
    alias yss="yay -Ss"                   # Search with yay

    # --- Config Shortcuts ---
    alias gcfg="nvim ~/.config/ghostty/config.ghostty"
    alias fcfg="nvim ~/.config/fish/config.fish"
    alias gitcfg="nvim ~/.gitconfig"
    
    # --- Git Workflow ---
    alias gall="git push all main"
    alias gs="git status"
    alias ga="git add"
    alias gc="git commit -m"
    alias gl="git log --oneline --graph --decorate"

    # --- Useful Utilities ---
    alias df="df -h"      # Disk usage in human readable format
    alias free="free -m"  # Memory usage in MB
    alias myip="curl ifconfig.me" # Quickly check your public IP

    # --- Prompt ---
    starship init fish | source

    # --- Fastfetch ---
    fastfetch
end
