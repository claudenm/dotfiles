alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias k='kubectl'

alias gso='git stash && git checkout master && git pull'

alias chrome='open -a "Google Chrome"'

alias python=/usr/local/bin/python3

alias python2=/usr/bin/python 

fixvpn () {
    echo "Flushing routes..."
    for i in $(ifconfig | egrep -o "^[a-z].+\d{1}:" | sed 's/://');
    do
        sudo ifconfig "$i" down;
    done;
    sudo route -n flush;
    for i in $(ifconfig | egrep -o "^[a-z].+\d{1}:" | sed 's/://');
    do
        sudo ifconfig "$i" up;
    done
    echo "All done"
}

switchaws() {
    if [[ $# -eq 0 ]] ; then
        profile=peloeng
    else
        profile=$1
    fi
    source <(aws-okta env $profile)
}
