#########################
# Miscellaneous Aliases #
#########################

# Files
if [ `uname` = "Linux" ]; then
    alias ls='ls -h --color=auto'   # Linux
else
    alias ls='ls -Gh'               # BSD
fi
alias tree='tree -C'
alias grep='grep --color=auto'

alias ll='ls -l'
alias la='ls -A'
alias lla='ls -Al'

alias df='df -h'
alias du='du -h'

alias unxz='unxz -kv'

# Home Manager
alias hm='home-manager'
alias hms='home-manager switch'

# VSCode
alias code='code-insiders'
