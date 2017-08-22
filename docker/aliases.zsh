alias dc="docker-compose"
alias compose="dc"

alias d-prune='docker rmi $(docker images -qf "dangling=true")'

alias d-slash='docker rm $(docker ps -aq)'
alias d-burn='docker rmi $(docker images -q)'
alias d-hotfire='d-slash; d-burn'

alias d-in='docker exec -it'
