#!/usr/bin/env bash
export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master/linux

echo "⏺️ Installing git" &&\
cd ./git && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Installing java"
cd ./java && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Installing zsh"
cd ./zsh && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Installing nvm"
cd ./nvm && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Installing android sdk"
cd ./android && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error"

echo "⏺️ Installing rbenv"
cd ./rbenv && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Changing default shell to ZSH"
chsh -s $(which zsh)
zsh
