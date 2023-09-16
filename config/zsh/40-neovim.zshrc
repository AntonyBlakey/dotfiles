if ! type nvim &>/dev/null; then
    echo "Installing neovim..."
    if type brew &>/dev/null; then
        brew install neovim
    elif type sudo &>/dev/null; then
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
