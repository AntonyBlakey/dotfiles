# if [[ "$OSTYPE" == darwin* ]] ; then

  if [[ ! -d /opt/homebrew/bin ]] ; then
      echo "Installing Homebrew..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      export path=(/opt/homebrew/bin /opt/homebrew/sbin $path)
      ~/bin/setup-homebrew.sh
  else
      export path=(/opt/homebrew/bin /opt/homebrew/sbin $path)
  fi

  if type brew &>/dev/null ; then
      FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
      autoload -Uz compinit
      compinit
  fi

# fi
