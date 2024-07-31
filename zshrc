source <(fzf --zsh)

source <(starship init zsh)
 
alias cat=batcat

alias vi=nvim
alias vim=nvim
export EDITOR=nvim
 
if [ -f $HOME/.zshrc_devcontainer ] ; then source $HOME/.zshrc_devcontainer ; fi