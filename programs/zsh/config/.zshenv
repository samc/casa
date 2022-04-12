# -====================================================================-
# -===[ Environment Configuration ]====================================-
# -====================================================================-

hash -d b=$HOME/builds
hash -d bg=$HOME/builds/growthat
hash -d bm=$HOME/builds/misc
hash -d bt=$HOME/builds/tmp

hash -d w=$WHOME
hash -d wd=$WHOME/Downloads
hash -d ws=$WHOME/Scripts

# --=[ ZSH ]=-----------------------------------------------------------
export ZDOTDIR=$HOME/.config/zsh

# --=[ Windows ]=-------------------------------------------------------
export WDIR=/mnt/c
export WUSER=conta
export WHOME=$WDIR/Users/$WUSER

# --=[ Editor ]=--------------------------------------------------------
export VISUAL=vim
export EDITOR=$VISUAL

# --=[ Windows ]=---------------------------------------------------
export SSH_DIR=$HOME/.ssh
export IDENTITIES_DIR=$HOME/.identities

# Symlink all identities to `.ssh` directory
# Run in sub-shell to nullify output to mute,
# for failed symlinks.
{
  ln -s "$IDENTITIES_DIR"/* "$SSH_DIR" && ls -l "$SSH_DIR"
} &>/dev/null

# Non `nix-shell` variables
if [ -z "$IN_NIX_SHELL" ]; then
    export NIX_PATH=$NIX_PATH:$HOME/.nix-defexpr/channels
    export PATH=$HOME/.local/bin:$PATH
fi
