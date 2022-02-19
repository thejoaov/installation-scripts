export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master/linux

echo "1. Installing git" &&\
cd ./git && ./install.sh || echo "Error installing git" && cd ..

echo "2. Installing java"
cd ./java && ./install.sh || echo "Error installing java" && cd ..

echo "3. Installing zsh"
cd ./zsh && ./install.sh || echo "Error installing zsh" && cd ..

echo "4. Installing nvm"
cd ./nvm && ./install.sh || echo "Error installing nvm" && cd ..

# echo "5. Installing rbenv"
# cd ./rbenv && ./install.sh || echo "Error installing rbenv" && cd ..

# echo "6. Installing android sdk"
# cd ./sdk && ./install.sh || echo "Error installing android sdk" && cd ..
