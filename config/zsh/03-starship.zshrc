if ! type starship &>/dev/null; then
    echo "Installing starship..."
    if type brew &>/dev/null; then
        brew install starship
    else
        curl -sS https://starship.rs/install.sh > ./starship.sh
        sh ./starship.sh --yes
        rm ./starship.sh
    fi
fi

eval "$(starship init zsh)"
