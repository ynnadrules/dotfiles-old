#!/usr/bin/env bash

if [ -d $ZSH ]; then
  # Install Spaceship theme
  export ZSH_CUSTOM=$ZSH/custom
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
else
  echo "Oh-my-zsh is not installed. Theme can't be installed"
fi
