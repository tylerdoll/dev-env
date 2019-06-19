# Git autocomplete
source ~/bash_completion.d/git

# Foreground Colors
fgDefault='\[\e[39m\]'
fgBlack='\[\e[30m\]'
fgRed='\[\e[31m\]'
fgGreen='\[\e[32m\]'
fgYellow='\[\e[33m\]'
fgBlue='\[\e[34m\]'
fgMagenta='\[\e[35m\]'
fgCyan='\[\e[36m\]'
fgLightGray='\[\e[37m\]'
fgDarkGray='\[\e[90m\]'
fgLightRed='\[\e[91m\]'
fgLightGreen='\[\e[92m\]'
fgLightYellow='\[\e[93m\]'
fgLightBlue='\[\e[94m\]'
fgLightMagenta='\[\e[95m\]'
fgLightCyan='\[\e[96m\]'
fgWhite='\[\e[97m\]'


# Show cwd in prompt
PS1="$fgDarkGray--------------------------------------------------------------------------------\n$fgLightMagenta\u@\h:\w$fgLightCyan\$ $fgDefault"

alias ll="ls -la"
alias vi="vim"

# Local customizations
LOCAL_BASHRC=~/.bashrc.local
[ -f $LOCAL_BASHRC ] && source $LOCAL_BASHRC
