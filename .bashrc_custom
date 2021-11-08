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

# List contents after cd
cd() { builtin cd "$@"; ll; } 

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=1000000
HISTFILESIZE=1000000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T ' 
# Enable incremental history search with up/down arrows (also Readline goodness)
# Learn more about this here: http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
"\e[A": history-search-backward
"\e[B": history-search-forward
"\e[C": forward-char
"\e[D": backward-char 


# Local customizations
LOCAL_BASHRC=~/.bashrc.local
[ -f $LOCAL_BASHRC ] && source $LOCAL_BASHRC

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
