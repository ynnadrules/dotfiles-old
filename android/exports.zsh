if (( $+commands[brew] ))
then
  base_path=/usr/local

  export ANT_HOME=$base_path/opt/ant/libexec
  export MAVEN_HOME=$base_path/opt/maven
  export GRADLE_HOME=$base_path/opt/gradle

  export ANDROID_HOME=$base_path/share/android-sdk
  export ANDROID_SDK_HOME=$ANDROID_HOME
  export ANDROID_SDK_ROOT=$ANDROID_HOME
  export ANDROID_NDK_HOME=$base_path/share/android-ndk
fi
