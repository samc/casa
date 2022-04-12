# -===========================================================================-
# -==[ docker aliases ]========================================================-
# -===========================================================================-

alias doi='docker info'
alias doa='docker attach --sig-proxy=false'
alias dor='docker run'
alias dost='docker start'
alias dosp='docker stop'

# --=[ Images ]=---------------------------------------------------------------
alias doil='docker image ls'
alias doir='docker image rm'
alias doip='docker image prune'
alias doib='docker image build'
alias doilo='docker image load'
alias dois='docker image save'
alias drm='docker system prune --all --force'

# --=[ Containers ]=-----------------------------------------------------------
alias docl='docker container ls'
alias docla='docker container ls --all'
alias docr='docker container rm'
alias docp='docker container prune'

# --=[ Volumes ]=--------------------------------------------------------------
alias dovl='docker volume ls'
alias dovr='docker volume rm'
alias dovp='docker volume prune'
