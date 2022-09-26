if [[ "$OSTYPE" == darwin* ]] ; then

  if [[ ! -d /opt/homebrew/bin ]] ; then
      echo "Installing Homebrew..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      brew install git
  fi

  export path=(/opt/homebrew/bin /opt/homebrew/sbin $path)

  if type brew &>/dev/null ; then
      FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
      autoload -Uz compinit
      compinit
  fi

fi
