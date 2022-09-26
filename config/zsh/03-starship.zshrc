if (( ! $+commands[starship] )) ; then
    echo "Installing starship..."
    curl -sS https://starship.rs/install.sh > $TMPDIR/starship.sh
    sh $TMPDIR/starship.sh --yes
    rm $TMPDIR/starship.sh 
fi

eval "$(starship init zsh)"