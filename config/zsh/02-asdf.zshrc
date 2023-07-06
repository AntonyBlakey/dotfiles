# if [[ ! -d ~/.asdf ]] ; then
#     echo "Installing asdf..."
#     git clone https://github.com/asdf-vm/asdf.git ~/.asdf
#     ~/bin/setup-asdf.sh
#     . $HOME/.asdf/asdf.sh
# else
#     . $HOME/.asdf/asdf.sh
# fi

# # append completions to fpath
# fpath=(${ASDF_DIR}/completions $fpath)
# # initialise completions with ZSH's compinit
# autoload -Uz compinit && compinit