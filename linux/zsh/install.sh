export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

if [ `echo $SHELL` == "/usr/bin/bash" -o `echo $SHELL` == "/bin/bash" ]; then
  echo "Installing zsh";
  sudo apt-get install -qq -o=Dpkg::Use-Pty=0 zsh -y
else
  echo "Lol we not";
fi

echo "Setting zsh as default shell"
chsh -s $(which zsh)

echo "true" > $HOME/.zshconfig

if [[ -f "$HOME/.zshrc" ]]; then
  echo ".zshrc detected, recreating"
  rm -rf $HOME/.zshrc
fi

if [[ $(grep microsoft /proc/version) ]]; then
  echo "WSL Distro detected"
  curl -fsSL "$BASE_URL/linux/zsh/wsl/.zshrc" > $HOME/.zshrc
else
  echo "Ubuntu linux"
  curl -fsSL "$BASE_URL/linux/zsh/native/.zshrc" > $HOME/.zshrc
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended