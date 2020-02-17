#
# ~/.bashrc
#

PS1="[Ken@\h \W]ξ "

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

export TERM=xterm-256color

# Global Scrips
export PATH=$PATH:/opt/local/bin/

export PATH=$PATH:/usr/local/bin/metals-emacs
