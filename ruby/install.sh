# TODO: check if system has other ruby than system ruby
if (( $+commands[rbenv] )) && [ `rbenv versions | wc -l | tr -d ' '` == 1 ]
then
  echo "Installing latest stable Ruby"
  rbenv install $(rbenv install -l | grep -v - | tail -1 | tr -d '[[:space:]]')
fi

exit 0
