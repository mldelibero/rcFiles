#! /bin/bash

#Greet user
echo "Welcome to Skynet: $USER"

#Prompt settings
export PS1="\[$(tput setaf 6)\]\u@ \W$ \[$(tput sgr0)\]"

alias ls='ls -G' # enable colorized output
alias ll='ls -al'
alias ..='cd ..'           # go up one level
alias ...='cd .. && cd ..' # two levels
alias ....='cd ../../..'   #               three levels
alias c='clear'
export PATH=$PATH:/usr/local/texlive/2013/bin/x86_64-darwin

#Set Commands
set -u #display an error when attempting to reference an unset variable
set -o noclobber #do not let files be overwritten by redirection operations.

#Put the current working directory path in the terminal window
alias cd=Xcd
Xcd ()
{
    if [ $# -ne 0 ]; then
        'cd' "$@"
    else
        'cd'
    fi

    name="${PWD}"
    echo -n -e "\033]0;$name\007"
}
Xcd .

#list only the subdirectories in the current directory
sdir()
{
    ls -l | grep ^d
}

path ()
{
    echo $PATH | tr ':' "\n"
}

#print out the last 10 commands
cmd ()
{
       history | tail -${2:-10} | awk -v tofind=${1:-[0-9]} '($0!~/ cmd /) &&
       ($0~tofind) { print }'
}

set bell-style none # Remove warning bell
