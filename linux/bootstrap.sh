sudo apt update &&\
sudo apt install build-essential git curl wget python3 python3-pip -y &&\
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&\
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile &&\
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&\
brew install gh &&\
gh auth login -h github.com -s user,repo,admin:public_key -w &&\
cd $HOME && gh repo clone thejoaov/installation-scripts &&\
cd installation-scripts/linux && ./install.sh
