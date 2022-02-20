export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master/linux

echo "⏺️  Installing git" &&\
cd ./git && ./install.sh && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️  Installing java"
cd ./java && ./install.sh && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️  Installing zsh"
cd ./zsh && ./install.sh && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️  Installing nvm"
cd ./nvm && ./install.sh && echo "✅ Success" || echo "⛔ Error" && cd ..

echo "⏺️  Installing android sdk"
cd ./android && ./install.sh && echo "✅ Success" || echo "⛔ Error"

# echo "⏺️  Installing rbenv"
# cd ./rbenv && ./install.sh && echo "✅ Success" || echo "⛔ Error" && cd ..

chsh -s $(which zsh)
zsh
