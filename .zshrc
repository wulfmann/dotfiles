export TERM="xterm-256color"
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/powerlevel9k/powerlevel9k.zsh-theme

function cd {
    builtin cd "$@" && ls -G
}

function mcd {
    mkdir -p "$@" && builtin cd "$@" && ls -F
}

function WTP {
	lsof -i :"$@"
}

alias c='clear'
alias ls='ls -G'
alias lsa= 'ls -a'

alias ...='../../'
alias ....='../../../'
alias .....='../../../../'

alias reload= 'source ~/.zshrc' 

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(aws)


