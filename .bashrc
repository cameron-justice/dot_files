#
# ~/.bashrc
#

# Colors

clearColor='\[\e[0m\]'
lightBlue='\[\e[96m\]'
green='\[\e[32m\]'

[ -z "$PS1" ] && return # make sure this is prompted

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1="[Ken@\h \W]ξ "

PS1="[${lightBlue}Ken${clearColor}@\h \W${green}\$(parse_git_branch)${clearColor}]ξ "

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

# Delete GPUCache folder
tmp=$(ls ~ | grep GPUCache)
if [[ "$tmp" ]]; then
	rm -rf ~/GPUCache
fi	

# Custom functions

cd(){
	builtin cd "$@" && ls -F
}

arch() {
        firefox -new-tab "https://wiki.archlinux.org/index.php?search=$1"
}

githubme() {
        git clone https://github.com/cameron-justice/$1.git
}

