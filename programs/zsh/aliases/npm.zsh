# -===========================================================================-
# -==[ npm aliases ]==========================================================-
# -===========================================================================-

export NPM_ROOT=$HOME/.npm
export NPM_BIN=$NPM_ROOT/bin
export NPM_CONFIG_PREFIX=$NPM_ROOT

export PATH=$PATH:$NPM_BIN

alias npmrm='rm -rf node_modules package-lock.json'
alias npmrs='npmrm && npm install'
