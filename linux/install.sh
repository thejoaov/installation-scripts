#!/usr/bin/env bash
export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master/linux

echo "⏺️ Installing git" &&\
cd ./git && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Installing zsh"
cd ./zsh && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Installing asdf and plugins (java,nodejs,flutter,ruby)"
cd ./asdf && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️ Installing android sdk"
cd ./android && ./install.sh >/dev/null 2>&1 && echo "✅ Success" || echo "⛔ Error"

echo "⏺️ Changing default shell to ZSH"
chsh -s $(which zsh)
zsh
