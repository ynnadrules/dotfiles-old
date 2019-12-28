
#!/usr/bin/env bash

# Test to see if zshell is installed.  If it is:
if [ -f /usr/local/bin/zsh ]; then
  export ZSH="$HOME/.oh-my-zsh"
  # Install Oh My Zsh if it isn't already present
  if [ ! -d $ZSH ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  else
    echo "An installation of oh-my-zsh is already at ${ZSH}"
  fi

  # Set the default shell to zsh if it isn't currently set to zsh
  if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
    if grep --quiet '/usr/local/bin/zsh' /etc/shells; then
      echo "Adding /usr/local/bin/zsh to /etc/shells"
      command -v zsh | sudo tee -a /etc/shells
    fi

    sudo chsh -s $(which zsh)
  else
    echo "$(which zsh) is already your shell"
  fi
else
  echo "You need to: brew install zsh"
fi

ZSH_DOTFILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"






