if [ -f $HOME/.zshrc_devcontainer ] ; then source $HOME/.zshrc_devcontainer ; fi

for i in $HOME/.config/zsh/*.zshrc ; do
    source $i
done
