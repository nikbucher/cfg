# .bash_aliases

alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias g='./gradlew'
alias gp='./gradlew --parallel'
alias gd='./gradlew --daemon'
alias gg='./gradlew --parallel --daemon'

alias ll='ls -lAF'
alias la='ls -A'
alias l='ls -lF'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias ..........='cd ../../../../../../../../..'
alias ...........='cd ../../../../../../../../../..'

function xdu() {
  if [ -z $1 ]; then
    du -sch .[!.]* * | sort -h
  else
    du -sch $1/.[!.]* $1/* | sort -h
  fi
  return 0
}
alias xdu='xdu'


