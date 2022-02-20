export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

if [ `echo $SHELL` == "/usr/bin/bash" -o `echo $SHELL` == "/bin/bash" ]; then
  sudo apt-get install zsh -y
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt"
ln -s "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

if [[ -f "$HOME/.zshrc" ]]; then
  rm -rf $HOME/.zshrc
fi

if [[ $(grep microsoft /proc/version) ]]; then
  curl -fsSL "$BASE_URL/linux/zsh/wsl/.zshrc" > $HOME/.zshrc
else
  curl -fsSL "$BASE_URL/linux/zsh/native/.zshrc" > $HOME/.zshrc
fi

echo "zsh" >> $HOME/.installinfo