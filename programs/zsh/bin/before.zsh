# Initialize global variables
source $HOME/.zsh/vars.zsh

function export_local_bin() {
    if [ -z "$IN_NIX_SHELL" ]; then
        export PATH=$HOME/.local/bin:$PATH
    fi
}

export_local_bin

for script ($HOME/.zsh/*.zsh); do
    source $script
done
unset script

export_local_bin