# echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&\
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile &&\
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&\
# brew install gh &&\
# echo -n $'\031\n\n\n\n' | gh auth login -h github.com -s user,repo,admin:public_key -w &&\
# cd $HOME && echo 'yes\n' | gh repo clone thejoaov/installation-scripts &&\]
git clone "https://github.com/thejoaov/installation-scripts" &> /dev/null &&\
cd installation-scripts/linux && ./install.sh
