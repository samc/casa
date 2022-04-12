# -===========================================================================-
# -==[ nix aliases ]==========================================================-
# -===========================================================================-

# --=[ nix-env ]=--------------------------------------------------------------

alias ne='nix-env'
alias nels='nix-env -qaP'
alias nei='nix-env --install'
alias neun='nix-env --uninstall'
alias neup='nix-env --upgrade'
alias ner='nix-env --rollback'
alias neq='nix-env --query'
alias negls='nix-env --list-generations'
alias negs='nix-env --switch-generation'
alias negrm='nix-env --delete-generations'

# --=[ nix-channel ]=----------------------------------------------------------

alias nic='nix-channel'
alias nicl='nix-channel --list'
alias nica='nix-channel --add'
alias nicr='nix-channel --remove'
alias nicu='nix-channel --update'
alias nicrb='nix-channel --rollback'

alias snic='sudo nix-channel'
alias snicl='sudo nix-channel --list'
alias snica='sudo nix-channel --add'
alias snicr='sudo nix-channel --remove'
alias snicu='sudo nix-channel --update'
alias snicrb='sudo nix-channel --rollback'

# --=[ nix-build ]=------------------------------------------------------------

alias nb='nix-build'

# --=[ nix-shell ]=------------------------------------------------------------

alias nis='nix-shell'
alias nisp='nix-shell --pure'
alias niss='nix-instantiate shell.nix --indirect --add-root $PWD/shell.drv'

# --=[ nix-collect-garbage ]=--------------------------------------------------

alias ngc='nix-collect-garbage'
alias ngcd='nix-collect-garbage -d'
alias ngco='nix-collect-garbage --delete-older-than 30d'

# --=[ nix-store ]=------------------------------------------------------------

alias nso='nix-store --optimise -v'
