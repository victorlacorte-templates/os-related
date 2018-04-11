#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f ~/.bash_local ] && . ~/.bash_local

[ -f /usr/share/git/completion/git-completion.bash ] && . /usr/share/git/completion/git-completion.bash

alias ls='ls --color=auto'
alias rm='rm -i'
# Set i3lock's bg color to black
alias i3lock='i3lock -c 000000'
alias firefox='firefox &> /dev/null'
