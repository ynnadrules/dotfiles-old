#!/bin/sh
antibody bundle < "$DOTFILES/antibody/bundles.txt" >~/.zsh_plugins.sh

# Spaceship theme
# Don't need install or uninstall zsh files. They just break loading a shell
for file in install uninstall; do
  sed -i.bak "/denysdovhan-SLASH-spaceship-zsh-theme\/${file}.zsh/d" ~/.zsh_plugins.sh
done

antibody update
