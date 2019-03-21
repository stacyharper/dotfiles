# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GPG_TTY=$(tty)
export GPG_TTY

RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
MAGENTA="\[$(tput setaf 5)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"
HOST_COLOR="\[$(tput setaf $(expr $(hostname | cksum | cut -f 1 -d ' ') % 256))\]"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/\* \(.*\)/\1/'
}

export PS1="${GREEN}\u${RESET}@${HOST_COLOR}\h${RESET}:${CYAN}\w${RESET} ${MAGENTA}\A${RESET} ${RED}\$(parse_git_branch)${RESET}\n$ "
export PS2='$ '

export PATH=$PATH:~/bin

# Immediate bash history
export HISTSIZE=
export HISTFILESIZE=
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
#complete -c sudo  # Allow default completion on sudo command for weird os (debian)
stty -ixon  # Disable the CTRL+s freeze to allow backward search

shopt -s globstar

export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less

source ~/.bash_aliases

if [ -d ~/.bash.d ]
then
	for file in ~/.bash.d/*
	do
		source "$file"
	done
fi

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
