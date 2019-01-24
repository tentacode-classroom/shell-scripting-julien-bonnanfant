#!/bin/bash
figlet Salut julien
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="/usr/local/opt/node@6/bin:$PATH"
export PS1='\033[0;31m\]\u \033[0;34m\]\w \[\033[0m\]$ -->'

alias cp='cp -iv'
alias mv='mv -iv'
alias ct='mkdir'

alias update="sudo softwareupdate -i -a; brew update; brew upgrade"

alias coffee="./ Mes_documents/coffee/Cofeecount"
alias liquidup="cd Mes_documents/YnovB2/Ydays/liquidUp/liquidup/"
alias web='open -a "Google Chrome"'

alias gs='git status'
