alias myip="ipconfig getifaddr en0"
alias externalip="dig +short myip.opendns.com @resolver1.opendns.com"

alias lsc='ls-scripts'

alias ws='cd ~/workspace'

alias dsl='local.sh'
alias cls='clear'
mcd() { mkdir -p $1 && cd $1 }
rmd() { rm -rf $1 }

alias dckr='eval $(docker-machine env default)'
alias dps='docker ps --format "table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Ports}}"'
alias dpsa='docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Ports}}"'
alias ds='docker start'
alias dst='docker stop'
alias dl='docker logs'
alias dlf='docker logs -f'
deb() { docker exec -it $1 bash }
dslf() { docker start $1 && docker logs -f $1 }
drs() { docker stop $1 && docker start $1 }
drm() { docker rm $1 }
drmf() { docker rm --force $1 }

alias gpnv='git push --no-verify'
alias gcamnv='git commit --no-verify -a -m'
alias gsmu='git submodule foreach "git checkout master; git pull"'
alias gsm='git submodule foreach "git checkout master"'
git-random(){ gitRan=$(curl -L -s http://whatthecommit.com/ |grep -A 1 "\"c" |tail -1 |sed 's/<p>//'); git commit -m "$gitRan"; }
git-lines() { git ls-files | xargs -n1 git blame --line-porcelain | sed -n 's/^author //p' | sort -f | uniq -ic | sort -nr }

# find process which binds to port
whoseport () { lsof -i 4tcp:$1 -sTCP:LISTEN }

alias td='tmux detach'
alias tad='tmux attach -t default'
alias ta='tmux attach -t $1'
alias tls='tmux ls'
alias tns='tmux new-sesssion $1'

rsnc() { rsync --bwlimit=$4 -avzh -e "ssh -p $3" --progress $1 $2}
