# Installation scripts for linux

## TL;DR: I know you don't have time for this
```bash
sudo apt install curl -y &&\
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/thejoaov/installation-scripts/master/linux/bootstrap.sh)"
```

1. Install necessary dependencies

```bash
sudo apt update &&\
sudo apt install build-essential git curl wget python3 python3-pip -y
```

2. Install homebrew (linuxbrew)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

3. Install github cli

```bash
brew install gh
```

4. Login to github with SSH

```bash
gh auth login -h github.com -s user,repo,admin:public_key -w
```

5. Clone and Execute the script

```bash
cd $HOME && gh repo clone thejoaov/installation-scripts &&\
cd installation-scripts/linux && ./install.sh
```

#TODO
- [x] Configure git
- [ ] Configure ZSH
   - [ ] Configure oh-my-zsh
   - [ ] Instal theme
   - [ ] Install .zshrc
- [ ] Install nvm
   - [ ] Install node lts
   - [ ] Install yarn
- [ ] Install java
- [ ] Install rbenv
- [ ] Install android-sdk
