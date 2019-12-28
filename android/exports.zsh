if (( $+commands[brew] ))
then
  base_path=/usr/local

  export ANT_HOME=$base_path/opt/ant/libexec
  export MAVEN_HOME=$base_path/opt/maven
  export GRADLE_HOME=$base_path/opt/gradle
fi

export JAVA_HOME=$(/usr/libexec/java_home --version 1.8)

export ANDROID_HOME=$HOME/Library/Android/sdk
# export ANDROID_SDK_HOME=$ANDROID_HOME
export ANDROID_SDK_ROOT=$ANDROID_HOME

