export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$PATH
export PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/build-tools/$(ls -tr $ANDROID_SDK_ROOT/build-tools/ | tail -1):$PATH

export PATH=$ANDROID_NDK_HOME:$PATH
# export PATH=$SWIFT_ANDROID_HOME/bin:$SWIFT_ANDROID_HOME/build-tools/current:$PATH
