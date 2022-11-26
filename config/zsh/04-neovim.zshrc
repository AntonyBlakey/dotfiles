if (( ! $+commands[nvim] )) ; then
    echo "Installing neovim..."
    if [[ $OSTYPE == darwin* ]] ; then
        brew install neovim
    elif (( $+commands[sudo] )) ; then
        sudo apt update
        sudo apt install neovim -y
    else
        apt update
        apt install neovim -y
    fi
fi

alias vi=nvim
alias vim=nvim
export EDITOR=nvim
