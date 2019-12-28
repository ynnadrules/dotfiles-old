#!/usr/bin/env bash

if [ ! -d $ZSH ]; then
  echo "Oh-my-zsh is not installed. Theme can't be installed"
else
  # Install Spaceship theme
  export ZSH_CUSTOM=$ZSH/custom

  # Syntax highlighting for ZSH
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-history-substring-search.git $ZSH_CUSTOM/plugins/zsh-history-substring-search

fi
