export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

sudo apt-get install lib32z1 unzip -y
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip --quiet
unzip sdk-tools-linux-4333796.zip -d $HOME/Android > /dev/null
rm sdk-tools-linux-4333796.zip > /dev/null

cd $HOME/Android/tools/bin
export ANDROID_HOME=$HOME/Android
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
printf "\n\nexport ANDROID_HOME=/home/<user>/Android\nexport PATH=\$PATH:\$ANDROID_HOME/tools\nexport PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> $HOME/.bashrc
source $HOME/.bashrc

./sdkmanager "platform-tools" "platforms;android-26" "build-tools;26.0.3"
android update sdk --no-ui

echo "android" >> $HOME/.installinfo