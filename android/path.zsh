export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_SDK_HOME/tools:$PATH
export PATH=$ANDROID_SDK_HOME/platform-tools:$PATH
export PATH=$ANDROID_SDK_HOME/build-tools/$(ls -tr $ANDROID_SDK_HOME/build-tools/ | tail -1):$PATH
