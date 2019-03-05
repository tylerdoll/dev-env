# Git autocomplete
source ~/bash_completion.d/git

# Show cwd in prompt
PS1='\[\e[95m\]\u@\h:\w\[\e[96m\]\$ \[\e[39m\]'

alias ll="ls -la"
alias vi="vim"

# Local customizations
LOCAL_BASHRC=~/.bashrc.local
[ -f $LOCAL_BASHRC ] && source $LOCAL_BASHRC
