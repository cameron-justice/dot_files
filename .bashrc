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

# Global Scripts
export PATH=$PATH:/opt/local/bin/

# Custom functions

arch() {
        firefox -new-tab "https://wiki.archlinux.org/index.php?search=$1"
}

githubme() {
        git clone https://github.com/cameron-justice/$1.git
}
