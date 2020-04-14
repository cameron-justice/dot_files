alias python=python3
alias pip=pip3
alias sclear='make clean; clear'
alias ssclip='maim -s --format=png /dev/stdout | xclip -selection clipboard -t image/png -i'

alias gitdef='git add *; git commit -m "Cleaned up Code"; git push origin master'
alias githerdef='git add *; git commit -m "Cleaned up Code"; git push heroku master'

alias activate='source venv/bin/activate'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function current_repository() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo $(git remote -v | cut -d':' -f 2)
}
