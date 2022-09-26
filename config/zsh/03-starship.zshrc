if (( ! $+commands[starship] )) ; then
    echo "Installing starship..."
    curl -sS https://starship.rs/install.sh | sh
fi

eval "$(starship init zsh)"