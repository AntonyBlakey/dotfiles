if ! type starship &>/dev/null; then
    echo "Installing starship..."
    brew install starship
    # curl -sS https://starship.rs/install.sh > ./starship.sh
    # sh ./starship.sh --yes
    # rm ./starship.sh
fi

eval "$(starship init zsh)"
