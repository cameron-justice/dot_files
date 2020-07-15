alias sclear='make clean; clear'
alias ssclip='maim -s --format=png /dev/stdout | xclip -selection clipboard -t image/png -i'
alias activate='source venv/bin/activate'

alias ghc='ghc -dynamic'

pastebin(){
	curl -F 'f:1=<-' ix.io < $1
}

# Shorthand for moving a finished post to its deploy location
blogmv(){
        if [ -z $2 ]
        then # No specified Folder
                mv $1 ~/Projects/Kenalia/amythicalcreature/views/posts/$1
        else # Specified Folder
                mv $1 ~/Projects/Kenalia/amythicalcreature/views/posts/$2/$1
        fi
}

# Converts the file and name to work with the site
blogconvert(){
        clean=${1// /_}
        pandoc "$1.md" -o $clean.html && mv $clean.html $clean.ejs
}

# Adds the required wrappings to work with the site
blogformat(){
        tmp="tmp_1010101.ejs"
        touch $tmp
        echo "<h1 class=\"title\">$2</h1>" >> $tmp
        echo "<h4 class=\"date\">$3</h4>" >> $tmp
        echo "<div class=\"body\">" >> $tmp
        cat $1 >> $tmp
        echo "</div>" >> $tmp
        mv $tmp $1
}

# Takes a markdown file but without the .md (Eg: test.md is passed as blogProcess test) and the end directory within {site}/views/posts/
blogProcess(){
        blogconvert $1
        echo "Title of post: "
        read title
        echo "Date of post (Month Day, Year): "
        read date
        blogformat "$1.ejs" "$title" "$date"
        blogmv "$1.ejs" $2
}
