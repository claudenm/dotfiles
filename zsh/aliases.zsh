alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias k='kubectl'

alias gso='git stash && git checkout master && git pull'

alias chrome='open -a "Google Chrome"'

haadmin() {
  for lb in $(bin/list -d $1 -e production -r load_balancer); do chrome http://$lb:9000/haproxy_stats;done; 
}

