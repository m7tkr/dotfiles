export BASH_SILENCE_DEPRECATION_WARNING=1

# set encoding
export LANG="en_US.UTF-8"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac;

# set color formatters
start_color='e[38;5;'
end_format='e[0m'

RED=$(tput setaf 124)
ORANGE=$(tput setaf 202)
NORMAL=$(tput sgr0)

# Setting PATH
export PATHPREP=
export PATHAPPEND=:$HOME/shared/bash/bin
export PATH=$PATHPREP$PATH$PATHAPPEND

# Setting CDPATH
export CDPATH=$HOME/rsmn/:$HOME/

# Default editor
EDITOR="$(which vim)"

# checking if pwd is git repo
# to be refactored
# add check on pushing
git_branch() {
    gbranch=$(git branch --show-current 2> /dev/null)

    if [ -n "$gbranch" ] && [ -n "$(git status --porcelain)" ]; then
            echo -e "\e[38;5;124m b:$gbranch\e[0m"
    fi

    if [ -n "$gbranch" ] && [ -z "$(git status --porcelain)" ]; then
            echo -e "\e[38;5;34m b:$gbranch\e[0m"
    fi
}

# color hostname for easiness in multi-os env
# for now includes only ubuntu
if grep -iq 'name="ubuntu"' /etc/os-release 2>/dev/null; then
    HOSTNAME="${ORANGE}${HOSTNAME}${NORMAL}"
fi

# prompt customization
PS1='╔ $SHLVL:$USER@$HOSTNAME in (${PWD//$HOME/\~}$(git_branch))\n╚ '

# Setting aliases
alias python='python3'
alias pip='pip3'
alias c='clear'
alias ls='ls -F'
alias la='ls -la'
alias portsrch='port search --name --glob'
alias sshd='sudo /usr/sbin/sshd -f ~/myserver/config'
alias pdflatex='pdflatex -file-line-error -halt-on-error -synctex=1'
alias tree='tree -L'
alias lynx='lynx -cfg $HOME/lynx.cfg -lss $HOME/mmono.lss'

# Hitory
HISTCONTROL='ignoredups'
HISTTIMEFORMAT='%H%M%S%d%m%Y  '

# run lynx user config file
LYNX_CFG=~/lynx.cfg
