#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1?'[\u@\h \W]\$ '

alias wifi2g='/home/irorll/.wifi2g.sh'
alias wifi5g='/home/irorll/.wifi5g.sh'
alias rain='digital-rain'

