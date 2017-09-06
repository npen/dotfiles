# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Default editor vim or vi
type vi >/dev/null 2>&1 && EDITOR=vi
type vim >/dev/null 2>&1 && EDITOR=vim
type vimx >/dev/null 2>&1 && EDITOR=vimx

export EDITOR

if [ "x$EDITOR" == "xvimx" ]; then
    alias vim=vimx
fi

# Aliases
alias ll='ls -l'
alias la='ls -A'



#### Taken from Debian's version ####


# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
