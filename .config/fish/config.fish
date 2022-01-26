set fish_greeting                      # Supresses fish's intro message 
set TERM "xterm-256color"              # Sets the terminal type
set fish_color_normal brcyan 
set fish_color_autosuggestion '#7d7d7d' 
set fish_color_command brcyan 
set fish_color_error '#ff6c6b' 
set fish_color_param brcyan
alias ls='exa --long --header --git'
alias cat='bat'
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias e='jpico -linums'
