if test ! $(which jenv)
then
  echo "Adding Java locations to jenv"

  for jdk in $(ls -d /Library/Java/JavaVirtualMachines/jdk*.jdk); do
    echo "\tAdding ${jdk}..."
    /usr/local/bin/jenv add $jdk/Contents/Home/
  done
fi
