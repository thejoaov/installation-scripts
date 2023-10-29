#!/usr/bin/env bash
export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

echo '. "$HOME/.asdf/asdf.sh"' >> $HOME/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> $HOME/.bashrc

echo '. "$HOME/.asdf/asdf.sh"' >> $HOME/.zshrc
echo 'fpath=(${ASDF_DIR}/completions $fpath)' >> $HOME/.zshrc
echo 'autoload -Uz compinit && compinit' >> $HOME/.zshrc

source $HOME/.bashrc

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin-add flutter

echo "asdf" >> $HOME/.installinfo
