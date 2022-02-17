# Installation scripts for linux

1. Install necessary dependencies
```bash
sudo apt update
sudo apt install build-essential git-all
sudo apt install python3 python3-pip openjdk-8-jdk opejdk-8-jre
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
5. Execute the script
```bash
python3 <(curl -fsSL https://raw.githubusercontent.com/thejoaov/installation-scripts/HEAD/linux/install.py)>
```