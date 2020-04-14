#!/bin/bash
#Listing aliases
alias ll='ls -l'
alias lA='ls -A'
alias la='ls -la'
alias l='ls -CF'

#Aliases for launching applications
	alias vi='vim'
	#Tmux Shortcuts
	alias tmuxs='tmux new -s'
	alias tmuxa='tmux attach'
	alias tmuxd='tmux detach'
	#Git shortcuts
	alias gcl='git clone'
	alias gco='git add -A && git commit -m'
	alias gps='git push'
	alias gpl='git pull'
	#Python aliases
	alias python='python3'
	alias py='python3'


#Shutdown and reboot
alias sdn='sudo shutdown now'
alias rbn='sudo reboot'

#Standard comands 
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias tmuxconf='vim ~/.tmux.conf'
