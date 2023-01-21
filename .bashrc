# export BASH_SILENCE_DEPRECATION_WARNING=1

# Setting PATH
# export PATH='/usr/local/Cellar/python@3.10/3.10.6_1:/usr/local/Cellar/mysql/8.0.28_1':$PATH:$HOME/bin/
PATH=$PATH:~/bin/

# Set vi key bindings
set -o vi

# Default editor
EDITOR='/usr/local/bin/vim'

git_branch() {
    gbranch=$(git branch --show-current 2> /dev/null)
    if [ -n "$gbranch" ]; then
        echo " b:$gbranch"
    fi
}

# prompt customization
PS1='╔ $USER@$HOSTNAME in (${PWD//$HOME/\~}$(git_branch)) \n╚ '

# Setting CDPATH
CDPATH=$HOME/rsmn/:$HOME/:$HOME/tutorials/

# Setting aliases
alias python='python3'
alias pip='pip3'
alias c='clear'
alias ls='ls -F'

# Hitory
HISTCONTROL='ignoredups'
HISTTIMEFORMAT='%H%M%S%d%m%Y  '
