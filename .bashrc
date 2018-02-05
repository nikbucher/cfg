# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# global options 
export HISTFILESIZE=
export HISTSIZE=

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.local_bashrc ]; then
    . ~/.local_bashrc
fi

# homebrew git autocompletions
if hash brew 2>/dev/null && [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

#setxkbmap -layout ch -variant de_nodeadkeys

# exports
function xdu() {
	if [ -z $1 ]; then
		du -sch .[!.]* * | sort -h
	else
		du -sch $1/.[!.]* $1/* | sort -h
	fi
	return 0
}
alias xdu='xdu'

# prompt
source ~/.bash_prompt
#source ~/.bash_liquidprompt

# Set .bin in PATH and it should be first {{{
export PATH=$HOME/.bin:$HOME/.npm-packages/bin:$PATH
# }}}
export GOPATH="$HOME/source/go"
