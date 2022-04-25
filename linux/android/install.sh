export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

sudo apt-get install lib32z1 unzip -y 
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip --quiet -P $HOME
unzip sdk-tools-linux-4333796.zip -d $HOME/Android
rm $HOME/sdk-tools-linux-4333796.zip

cd $HOME/Android/tools/bin
source $HOME/.bashrc
export ANDROID_HOME=$HOME/Android
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
printf "\n\nexport ANDROID_HOME=$HOME/Android\nexport PATH=\$PATH:\$ANDROID_HOME/tools\nexport PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> $HOME/.bashrc
source $HOME/.bashrc

touch $HOME/.android/repositories.cfg
yes | ./sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.2" 
yes | android update sdk --no-ui 


wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.1.1.21/android-studio-2021.1.1.21-linux.tar.gz -P $HOME --quiet
mkdir $HOME/android-studio
tar -xf $HOME/android-studio-2021.1.1.21-linux.tar.gz -C $HOME/android-studio
rm $HOME/android-studio-2021.1.1.21-linux.tar.gz

echo "android" >> $HOME/.installinfo
