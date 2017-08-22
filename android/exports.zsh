if (( $+commands[brew] ))
then
  # export ANT_HOME=$(brew --prefix ant)
  export MAVEN_HOME=$(brew --prefix maven)
  export GRADLE_HOME=$(brew --prefix gradle)
  export ANDROID_HOME=$(brew --prefix)/share/android-sdk
  export ANDROID_SDK_HOME=$ANDROID_HOME
  export ANDROID_NDK_HOME=$(brew --prefix)/share/android-ndk
fi
