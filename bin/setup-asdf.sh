#!/usr/bin/env zsh

if [[ "$OSTYPE" == darwin* ]] ; then
    for plugin in python nodejs yarn erlang elixir cmake ninja rust rlwrap chezscheme racket mlton java swiprolog clojure direnv solidity ; do 
        asdf plugin add $plugin
    done

    asdf install nodejs latest
    asdf global nodejs latest

    asdf install yarn latest
    asdf global yarn latest

    # https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments
    asdf install python latest
    asdf global python latest
    asdf reshim
    hash -r
    python3 -m pip install --user --upgrade pip
    pip3 install neovim
fi