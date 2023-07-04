#!/usr/bin/env zsh

for p in starship asdf git git-lfs git-extras wget rsync xz gawk jq neovim gpg htop libarchive ripgrep fd ; do
    brew install $p
done

# Soops
for p in sshuttle ; do
    brew install $p
done

brew tap microsoft/git
brew install --cask git-credential-manager-core