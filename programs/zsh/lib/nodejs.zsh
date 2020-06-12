############################
# NodeJS (Setup & Aliases) #
############################

##
## Setup
##

export NPM_ROOT=$HOME/.npm
export PATH=$PATH:$(npm config get prefix)

# Standard Version aliases & functions
alias sv='standard-version'
alias svfr='standard-version --first-release'

function svr() {
  standard-version --release-as $1
}

function svpr() {
  standard-version --prerelease alpha --release-as $1
}