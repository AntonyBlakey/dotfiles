if (( ! $+commands[nvim] )) ; then
    echo "Installing neovim..."
    if [[ $OSTYPE == darwin* ]] ; then
        brew install neovim
    else
        sudo apt install neovim
    fi
fi

alias vi=nvim
alias vim=nvim
export EDITOR=nvim