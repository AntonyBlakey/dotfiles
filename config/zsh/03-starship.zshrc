if (( ! $+commands[starship] )) ; then
    echo "Installing starship..."
    curl -sS https://starship.rs/install.sh > ./starship.sh
    sh ./starship.sh --yes
    rm ./starship.sh 
fi

eval "$(starship init zsh)"