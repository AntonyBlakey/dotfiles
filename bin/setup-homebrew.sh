#!/usr/bin/env zsh

for p in git git-extras git-lfs curl wget xz gawk jq gpg htop ; do
    brew install $p
done

# Soops
# if [[ "$OSTYPE" == darwin* ]] ; then
# for p in sshuttle ; do
#     brew install $p
# done
#fi

brew tap microsoft/git
brew install --cask git-credential-manager-core

# if [[ "$OSTYPE" == darwin* ]] ; then
# brew install --cask warp
# brew install --cask visual-studio-code
# brew install --cask arc
# brew install --cask telegram 
# brew install --cask slack 
# brew install --cask skype
# brew install --cask 1password
# fi