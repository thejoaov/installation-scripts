#!/usr/bin/env bash
export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

# mkdir ./Android
# mkdir ./Android/Sdk

mkdir $HOME/Android
mkdir $HOME/Android/Sdk

if [[ "$HOME/Android/Sdk" ]]; then
  sudo apt-get install lib32z1 unzip qemu-kvm qemu -y
  sudo adduser $USER kvm
  sudo chown $USER /dev/kvm
  # newgrp kvm
  wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -P $HOME
  unzip $HOME/sdk-tools-linux-4333796.zip -d ./Android/Sdk
  rm $HOME/sdk-tools-linux-4333796.zip

  cd $HOME/Android/Sdk/tools/bin
  export ANDROID_HOME=$HOME/Android/Sdk
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/platform-tools
  printf "\n\nexport ANDROID_HOME=$HOME/Android/Sdk\nexport PATH=\$PATH:\$ANDROID_HOME/tools\nexport PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> $HOME/.profile
  source $HOME/.profile

  touch $HOME/.android/repositories.cfg
  yes | ./sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.2" 
  yes | android update sdk --no-ui 


  wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.16/android-studio-2021.2.1.16-linux.tar.gz -P $HOME
  tar -xf $HOME/android-studio-2021.2.1.16-linux.tar.gz -C $HOME
  rm $HOME/android-studio-2021.2.1.16-linux.tar.gz

  echo "android" >> $HOME/.installinfo
else
  echo "Android/Sdk was not created by some unknown reason"
fi
