#!/usr/bin/env zsh

if [[ "$OSTYPE" == darwin* ]] ; then
    for plugin in python nodejs yarn erlang elixir cmake ninja rust haskell sbcl rlwrap chezscheme racket mlton java swiprolog clojure direnv latest solidity ; do 
        asdf plugin add $plugin
    done

    asdf install nodejs latest
    asdf global nodejs latest

    asdf install yarn latest
    asdf global yarn latest

    # https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments
    asdf install python latest
    asdf install python 2.7.18
    asdf global python latest 2.7.18
    asdf reshim
    hash -r
    python3 -m pip install --user --upgrade pip
    python2 -m pip install --user --upgrade pip
    pip install neovim
fi