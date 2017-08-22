if test ! $(which code)
then
  echo "Installing packages"

  for ext in $(cat "${DOTFILES}/vscode/extensions.txt"); do
    code --install-extension $ext 2> /dev/null
  done
fi

cp vscode/{keybindings,settings}.json ~/Library/Application\ Support/Code/User/ 2> /dev/null
