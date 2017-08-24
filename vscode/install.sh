#!/usr/local/bin/zsh

if (( $+commands[code] ))
then
  echo "Installing packages"

  for ext in $(cat "${DOTFILES}/vscode/extensions.txt"); do
    # code --install-extension $ext
  done
fi

ln -fs `pwd`/vscode/{keybindings,settings}.json ~/Library/Application\ Support/Code/User/ 2> /dev/null
