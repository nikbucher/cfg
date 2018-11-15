#!/usr/bin/env bash
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

# homebrew git autocompletions
if hash brew 2>/dev/null && [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

#setxkbmap -layout ch -variant de_nodeadkeys

# prompt
source ~/.bash_prompt
#source ~/.bash_liquidprompt

# Set .bin in PATH and it should be first {{{
export PATH=$HOME/.local/bin:$HOME/bin:$HOME/.npm-packages/bin:$HOME/.eclipse/bin:$PATH
# }}}

export GOPATH="$HOME/source/go"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"¬
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm¬
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion¬

# allow local customizations
if [ -f ~/.local_bashrc ]; then
    . ~/.local_bashrc
fi
