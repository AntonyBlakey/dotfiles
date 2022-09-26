if (( ! $+commands[nvim] )) ; then
    echo "Installing neovim..."
    if [[ $OSTYPE == darwin* ]] ; then
        brew install neovim
    elif (( $+commands[sudo] )) ; then
        sudo apt install neovim -y
    else
        apt install neovim -y
    fi
fi

alias vi=nvim
alias vim=nvim
export EDITOR=nvim