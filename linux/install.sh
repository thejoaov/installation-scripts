export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master/linux

sudo apt update &&\
sudo apt install build-essential git curl wget python3 python3-pip -y &&\
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&\
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile &&\
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&\
brew install gh &&\
gh auth login -h github.com -s user,repo,admin:public_key -w &&\
cd $HOME && gh repo clone thejoaov/installation-scripts &&\
cd installation-scripts/linux && ./install.sh
echo "1. Installing git" &&\

cd ./git && ./install.sh || echo "Error installing git" && cd ..

echo "4. Installing java"
cd ./java && ./install.sh || echo "Error installing java" && cd ..

# echo "2. Installing zsh"
# cd ./zsh && ./install.sh || echo "Error installing zsh" && cd ..

# echo "3. Installing nvm"
# cd ./nvm && ./install.sh || echo "Error installing nvm" && cd ..

# echo "5. Installing rbenv"
# cd ./rbenv && ./install.sh || echo "Error installing rbenv" && cd ..

# echo "6. Installing android sdk"
# cd ./sdk && ./install.sh || echo "Error installing android sdk" && cd ..
